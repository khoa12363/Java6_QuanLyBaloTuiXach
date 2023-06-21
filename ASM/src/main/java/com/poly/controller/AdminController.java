package com.poly.controller;

import java.io.File;
import java.io.IOException;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Optional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.domain.Sort.Direction;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.poly.dao.AccountDao;
import com.poly.dao.BillDao;
import com.poly.dao.BrandDao;
import com.poly.dao.OrderDao;
import com.poly.dao.OrderDetailDao;
import com.poly.dao.ProductDao;
import com.poly.enities.Account;
import com.poly.enities.Bill;
import com.poly.enities.Brand;
import com.poly.enities.Order;
import com.poly.enities.OrderDetail;
import com.poly.enities.Product;
import com.poly.service.AccountService;
import com.poly.service.SessionService;

import jakarta.servlet.ServletContext;

@Controller
@RequestMapping("admin")
public class AdminController {
	@Autowired
	AccountDao accountdao; 
	@Autowired
	ServletContext app;
	@Autowired
	OrderDao orderdao;
	@Autowired
	BillDao billdao; 
	@Autowired
	ProductDao productdao;	
	@Autowired
	BrandDao brandDao;
	@Autowired
    private AccountService service;
	
	@RequestMapping("/statistical")
	public String quanlythongke() {
		return "admin/quanlythongke";
	}
	@RequestMapping("/order")
	public String quanlydonhang(Model model,@RequestParam("p") Optional<Integer> p){
			Order item = new Order();
			Pageable pageable = PageRequest.of(p.orElse(0),4);
			model.addAttribute("item", item);
			Page<Order> page = orderdao.findAll(pageable);
			model.addAttribute("page", page);
		return "admin/quanlydonhang";
	}
	@RequestMapping("editorder/{id}")
	public String orderedit(Model model, @PathVariable("id") Long id) {
		Order item = orderdao.findById(id).get();
		model.addAttribute("item", item);
		List<Order> items = orderdao.findAll();
		model.addAttribute("items", items);
		return "admin/themorder";
	}
	
	@RequestMapping("/updateorder")
	public String updateorder(Order item)
			throws IllegalStateException, IOException {
		orderdao.save(item);
		return "redirect:/admin/editorder/"  + item.getId();
	}

	@RequestMapping("deleteorder/{id}")
	public String deleteorder(@PathVariable("id") Long id) {
		orderdao.deleteById(id);
		return "redirect:/admin/order";
	}
	
	@ModelAttribute("list_thanhtoan")
	public Map<Boolean, String> getYesno() {
		Map<Boolean, String> map = new HashMap<>();
		map.put(false, "Chưa thanh toán");
		map.put(true, "Đã thanh toán");
		return map;
	}
	@RequestMapping("/account")
	public String quanlytaikhoan(Model model, @RequestParam("p") Optional<Integer> p) {
		Pageable pageable = PageRequest.of(p.orElse(0), 2);
		Account item = new Account();
		model.addAttribute("item", item);
		Page<Account> page = accountdao.findAll(pageable);
		model.addAttribute("page", page);
		return "admin/quanlytaikhoan";
	}
	
	@RequestMapping("taikhoan/edit/{username}")
	public String edit(Model model, @PathVariable("username") String username) {
		Account item = accountdao.findById(username).get();
		model.addAttribute("item", item);
		List<Account> items = accountdao.findAll();
		model.addAttribute("items", items);
		return "admin/taikhoan";
	}
	
	@RequestMapping("account/update")
	public String update(Account item, BindingResult result,@RequestParam("photo_file") MultipartFile img, Model model)
			throws IllegalStateException, IOException {
		 if (result.hasErrors()) {
		        model.addAttribute("error", "Please fill in all fields correctly.");
		        // Lấy chi tiết tài khoản hiện tại để chỉnh sửa
		        Account currentItem = accountdao.findById(item.getUsername()).orElse(null);
		        model.addAttribute("item", currentItem);
		        // Lấy tất cả các tài khoản để hiển thị danh sách tài khoản
		        List<Account> items = accountdao.findAll();
		        model.addAttribute("items", items);
		        return "admin/taikhoan";
		    }
		    
		    // Password validation: must be a number
		    if (!item.getPassword().matches("\\d+")) {
		        model.addAttribute("error", "Mật khẩu phải là số");
		        // Lấy chi tiết tài khoản hiện tại để chỉnh sửa
		        Account currentItem = accountdao.findById(item.getUsername()).orElse(null);
		        model.addAttribute("item", currentItem);
		        // Lấy tất cả các tài khoản để hiển thị danh sách tài khoản
		        List<Account> items = accountdao.findAll();
		        model.addAttribute("items", items);
		        return "admin/taikhoan";
		    }
		    
		    // Fullname validation: must contain only alphabetic characters
		    if (!item.getFullname().matches("\\w+")) {
		        model.addAttribute("error", "Fullname không được bỏ trống");
		        // Lấy chi tiết tài khoản hiện tại để chỉnh sửa
		        Account currentItem = accountdao.findById(item.getUsername()).orElse(null);
		        model.addAttribute("item", currentItem);
		        // Lấy tất cả các tài khoản để hiển thị danh sách tài khoản
		        List<Account> items = accountdao.findAll();
		        model.addAttribute("items", items);
		        return "admin/taikhoan";
		    }
		    if (!img.isEmpty()) {
		        String filename = img.getOriginalFilename();
		        File file = new File(app.getRealPath("/images/" + filename));
		        img.transferTo(file);
		        item.setPhoto(filename);
		    }
		//item.setCreateDate(new Date());
		accountdao.save(item);
		return "redirect:/admin/taikhoan/edit/" + item.getUsername();
	}

	@RequestMapping("/account/delete/{username}")
	public String accountdelete(@PathVariable("id") String username) {
		 accountdao.deleteById(username);
		return "redirect:/admin/account";
	}
	
	@ModelAttribute("list_activated")
	public Map<Boolean, String> getac() {
		Map<Boolean, String> map = new HashMap<>();
		map.put(false, "user");
		map.put(true, "admin");
		return map;
	}
	
	@RequestMapping("account/sort")
	public String index(Model model, @RequestParam("field") Optional<String> field) {
		Sort sort = Sort.by(Direction.DESC, field.orElse("username"));
		model.addAttribute("field", field.orElse("username").toUpperCase());
		List<Account> items = accountdao.findAll(sort);
		model.addAttribute("items", items);
		return "admin/quanlytaikhoan";
	}
	@RequestMapping("account/search")
	public String accountsearchAndPage(Model model, @RequestParam("keywords") Optional<String> kw,
		@RequestParam("p") Optional<Integer> p) {
		String kwords = kw.orElse(session.get("keywords"));
		session.set("keywords", kwords);
		Pageable pageable = PageRequest.of(p.orElse(0), 2);
		Page<Account> page = accountdao.findByUsernameLike("%" + kwords + "%", pageable);
		 model.addAttribute("page", page);
		 if (page.getTotalElements() == 0) {
		        model.addAttribute("error", "Không tìm thấy");
		    }
		return "admin/quanlytaikhoan";
	}

	@RequestMapping("product")
	public String product(Model model,@RequestParam("p") Optional<Integer> p) {
		Product item = new Product();
		Pageable pageable = PageRequest.of(p.orElse(0), 4);
		model.addAttribute("item", item);
		Page<Product> page = productdao.findAll(pageable);
		model.addAttribute("page", page);
		return "admin/quanlysanpham";
	}
	
	@RequestMapping("themsanpham")
	public String Them(Model model, Product item) {
		model.addAttribute("item", item);
		List<Product> items = productdao.findAll();
		model.addAttribute("items", items);
		return "admin/themsanpham";
	}
	@Autowired
	SessionService session;
	@RequestMapping("search-and-page")
	public String searchAndPage(Model model, @RequestParam("keywords") Optional<String> kw,
			@RequestParam("p") Optional<Integer> p) {
		String kwords = kw.orElse(session.get("keywords"));
		session.set("keywords", kwords);
		Pageable pageable = PageRequest.of(p.orElse(0), 4);
//		Page<Product> page = productdao.findByKeywords("%" + kwords + "%", pageable);
		Page<Product> page = productdao.findAllByNameLike("%" + kwords + "%", pageable);
		model.addAttribute("page", page);
		if (kwords.isEmpty()) {
			model.addAttribute("error", "Vui lòng nhập tên sản phẩm");
		} else if (page.getTotalElements() == 0) {
			model.addAttribute("error", "Không có kết quả nào được tìm thấy.");
		}
		return "admin/quanlysanpham";
	}


	
	@RequestMapping("edit/{id}")
	public String productedit(Model model, @PathVariable("id") Long id) {
		Product item = productdao.findById(id).get();
		model.addAttribute("item", item);
		List<Product> items = productdao.findAll();
		model.addAttribute("items", items);
		return "admin/sanpham";
	}

	@RequestMapping("create")
	public String create(Product item, @RequestParam("brandid") String Brandid, @RequestParam("photo_file") MultipartFile img)
			throws IllegalStateException, IOException {
		String filename = img.getOriginalFilename();
		File file = new File(app.getRealPath("/images/" + filename));
		img.transferTo(file);
		item.setImages(filename);
		item.setCreateDate(new Date());
		Brand brand = brandDao.findById(Brandid).get();
		item.setBrand(brand);
		System.out.println(item.getName());
		productdao.save(item);
		return "redirect:/admin/product";
	}

	@RequestMapping("update")
	public String update(Product item,@RequestParam("brandid") String Brandid, @RequestParam("photo_file") MultipartFile img)
			throws IllegalStateException, IOException {
		String filename = img.getOriginalFilename();
		File file = new File(app.getRealPath("/images/" + filename));
		img.transferTo(file);
		item.setImages(filename);
		Brand brand = brandDao.findById(Brandid).get();
		item.setBrand(brand);
		productdao.save(item);
		return "redirect:/admin/edit/" + item.getId();
	}
	@RequestMapping("delete/{id}")
	public String delete1(@PathVariable("id") Long id) {
		productdao.deleteById(id);
		return "redirect:/admin/product";
	}
	@ModelAttribute("list_yesno")
	public Map<Boolean, String> getyesno() {
		Map<Boolean, String> map = new HashMap<>();
		map.put(false, "Không có");
		map.put(true, "Có Sẵn");
		return map;
	}
	
	

	@RequestMapping("/bill")
	public String hoadon(Model model) {
		Bill item = new Bill();
		model.addAttribute("item", item);
		List<Bill> items = billdao.findAll();
		model.addAttribute("items", items);
		return "admin/quanlyhoadon";
	}
	@RequestMapping("hoadon/create")
	public String create(OrderDetail item) {
		
		return "redirect:/admin/bill";
	}
	
	@RequestMapping("hoadon/delete/{id}")
	public String delete(@PathVariable("id") Long id) {
		
		return "redirect:/admin/bill";
	}
	
	@RequestMapping("hoadon/update/{id}")
	public String update(OrderDetail item) {
	
		return "redirect:/admin/bill/edit/" + item.getId();
	}
	@RequestMapping("/taikhoan")
	public String taikhoan(Model model) {
		Account item = new Account();
		model.addAttribute("item", item);
		List<Account> items = accountdao.findAll();
		model.addAttribute("items", items);
		return "admin/taikhoan";
	}
}
