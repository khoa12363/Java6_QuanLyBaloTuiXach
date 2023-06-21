package com.poly.controller;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.poly.dao.OrderDao;
import com.poly.dao.OrderDetailDao;
import com.poly.dao.ProductDao;
import com.poly.enities.Account;
import com.poly.enities.Order;
import com.poly.enities.OrderDetail;
import com.poly.enities.Product;
import com.poly.interfaces.AccountService;
import com.poly.service.OrderService;
import com.poly.service.ProductService;
import com.poly.service.SessionService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import jakarta.validation.Valid;

@Controller
@RequestMapping("/user")
public class OrderController {
	@Autowired
	private OrderService orderService;
	@Autowired
	private ProductService productService;
	@Autowired
	private HttpServletRequest request;
	@Autowired
	private OrderDetailDao orderDetailDao;
	@Autowired
	private ProductDao productDao;

	@Autowired
	private HttpServletResponse response;
	@Autowired
	private OrderDao orderDao;
	
	@Autowired
	SessionService session;
	
	@Autowired
	AccountService aService;

	@RequestMapping("/cart")
	public String cart() {
		return "user/cart";
	}

//	    @PostMapping("/cart")
//	public String store(
//				@RequestParam("productId") Long productId,
//				@ModelAttribute("order") Order order,Long id,Product product2,float price,int quantity,Float sum
//		) {
//			Product product  = this.productService.getById(productId);
//			
//
//			OrderDetail cart = new OrderDetail();
////				cart.setId(id);
//				cart.setOrder(order);
//				cart.setProduct(product2);
//				cart.setPrice(price);
//				cart.setQuantity(1);				
//				cart.setSum(sum);
////				this.productDao.save(cart);
//				return "user/cart";
//				}
	@RequestMapping("/add/{id}")
	public String add(Model model, HttpSession session, @PathVariable("id") Long id, Order order) {
		Product item = productDao.findById(id).orElse(null);
		if (item == null) {
			// Handle the case where the product is not found
			// For example, you can show an error message or redirect to a different page
			return "redirect:/error";
		}

		List<OrderDetail> cartItems = (List<OrderDetail>) session.getAttribute("cartItems");
		if (cartItems == null) {
			cartItems = new ArrayList<>();
			session.setAttribute("cartItems", cartItems);
}

		// Check if the product already exists in the cart for the given order
		boolean itemExists = false;
		for (OrderDetail cartItem : cartItems) {
			if (cartItem.getProduct().getId().equals(item.getId())
					&& cartItem.getOrder().getId().equals(order.getId())) {
				// Product with the same product ID and order ID already exists in the cart, set
				// itemExists to true and update the quantity and sum
				cartItem.setQuantity(cartItem.getQuantity() + 1);
				cartItem.setSum(cartItem.getQuantity() * cartItem.getPrice());
				itemExists = true;
				break;
			}
		}
		if (!itemExists) {
			// Check if the product already exists in the database for the given order
			OrderDetail existingCartItem = orderDetailDao.findByOrderAndProduct(order, item);
			if (existingCartItem != null) {
				// Product with the same product ID and order ID already exists in the database,
				// update the quantity and sum
				existingCartItem.setQuantity(existingCartItem.getQuantity() + 1);
				existingCartItem.setSum(existingCartItem.getQuantity() * existingCartItem.getPrice());
				// Save the updated OrderDetail entity
				orderDetailDao.save(existingCartItem);
				cartItems.add(existingCartItem);
			} else {
				OrderDetail cartItem = new OrderDetail();
				cartItem.setOrder(order);
				cartItem.setImages(item.getImages());
				cartItem.setProductname(item.getName());
				cartItem.setProduct(item);
				cartItem.setPrice(item.getPrice());
				cartItem.setQuantity(1);
				cartItem.setSum(cartItem.getQuantity() * cartItem.getPrice());
				// Save the new OrderDetail entity
				orderDetailDao.save(cartItem);
				cartItems.add(cartItem);
			}
		}

		
		// Calculate the final price
		double finalPrice = 0.0;
		for (OrderDetail cartItem : cartItems) {
			finalPrice += orderService.calculateOrderSum(cartItem);
		}
		List<OrderDetail> items = orderDetailDao.findAll();
		model.addAttribute("items", items);
		model.addAttribute("finalPrice", finalPrice); // Add the final price to the model
		return "user/cart";
	}

	@RequestMapping(value = "/delete/{itemId}", method = RequestMethod.GET)
	public String delete(@PathVariable("itemId") Long itemId) {
		// Code to delete the item with the given itemId
		orderDetailDao.deleteById(itemId);
		return "redirect:/user/cart"; // Redirect to the cart page after deletion
	}
	@GetMapping("/cart")
	public String showCart(Model model, HttpSession session) {
	    List<OrderDetail> cartItems = (List<OrderDetail>) session.getAttribute("cartItems");
	    model.addAttribute("cartItems", cartItems);

	    // Retrieve the selected item IDs from the request parameter
	    String[] selectedItems = request.getParameterValues("selectedItems");
	    List<Long> selectedItemsList = new ArrayList<>();
	    if (selectedItems != null) {
	        for (String selectedItem : selectedItems) {
	            selectedItemsList.add(Long.parseLong(selectedItem));
	        }
	    }
	    model.addAttribute("selectedItems", selectedItemsList);
return "user/cart";
	}



	@GetMapping("/payment")
	public String showPaymentPage(@RequestParam(value = "selectedItems", required = false) List<Long> selectedItems, Model model, Order item, HttpSession session) {
		model.addAttribute("item", item);
		List<OrderDetail> cartItems = (List<OrderDetail>) session.getAttribute("cartItems");
	    double finalPrice = calculateFinalPrice(cartItems);
	    model.addAttribute("cartItems", cartItems);
	    model.addAttribute("finalPrice", finalPrice);
	    session.removeAttribute("cartItems"); // Clear the cart after transferring to the payment page
	    // Pass the selected item IDs to the payment page
	    model.addAttribute("selectedItems", selectedItems);
	    return "user/payment";
	}
	
	@ModelAttribute("list_thanhtoan")
	public Map<Boolean, String> getYesno() {
		Map<Boolean, String> map = new HashMap<>();
		map.put(false, "Tiền mặt");
		map.put(true, "Chuyển khoản");
		return map;
	}

	private double calculateFinalPrice(List<OrderDetail> cartItems) {
	    double finalPrice = 0.0;
	    if (cartItems != null) {
	        for (OrderDetail cartItem : cartItems) {
	            finalPrice += orderService.calculateOrderSum(cartItem); // Use the appropriate method to retrieve the price of each cart item
	        }
	    }
	 
	    return finalPrice;
	}
	
	@RequestMapping("Themdonhang")
	public String Them(Model model, @Valid Order item, BindingResult bindingResult, Account account, HttpSession session) {
	    if (bindingResult.hasErrors()) {
	        // Xử lý khi có lỗi nhập liệu
	        return "user/payment"; // Trả về trang JSP chứa form nhập liệu
	    } else {
	        model.addAttribute("item", item);
	        Date date = new Date(new java.util.Date().getTime());
	        Account username = (Account) session.getAttribute("user");
	        item.setAccount(username);
	        item.setCreateDate(date);
	        orderDao.save(item);
	        return "redirect:/user/showorder";
	    }
	}

	
	@RequestMapping("/showorder")
	public String quanlydonhang(Model model, Account account,HttpSession session){
	Account username1 = (Account) session.getAttribute("user");
	Order item = new Order();
	model.addAttribute("oder", item);
	List<Order> items= orderDao.findByUsername(username1.getUsername());
	model.addAttribute("items", items);
		return "user/xemdonhang";
	}
	
	
	
	@RequestMapping("deleteshoworder/{id}")
	public String deleteorder(@PathVariable("id") Long id) {
		orderDao.deleteById(id);
		return "redirect:/user/showorder";
	}
	
}