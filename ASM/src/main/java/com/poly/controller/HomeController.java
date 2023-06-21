package com.poly.controller;

import java.io.File;
import java.io.IOException;
import java.util.Date;
import java.util.List;
import java.util.Optional;
import java.util.Random;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.poly.dao.AccountDao;
import com.poly.dao.ProductDao;
import com.poly.enities.Account;
import com.poly.enities.ChangePasswordForm;
import com.poly.enities.Product;
import com.poly.enities.RoleDetail;
import com.poly.interfaces.AccountService;
import com.poly.service.MailerService;
import com.poly.service.ParamService;
import com.poly.service.SessionService;

import jakarta.servlet.ServletContext;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.websocket.Session;

@Controller
@RequestMapping("user")
public class HomeController {
	@Autowired
	AccountDao accountdao; 
	@Autowired
	ServletContext app;
	@Autowired
	ParamService paramService;
	@Autowired
	ProductDao productdao;
	@Autowired
	SessionService session;
	@Autowired
	AccountService aService;
	@Autowired
	 MailerService mailerService;

	@RequestMapping("/index")
	public String product(Model model) {
		Product item = new Product();
		model.addAttribute("item", item);
		List<Product> items = productdao.findAll();
		model.addAttribute("items", items);
		return "user/index";
	}
	
	@RequestMapping("edit/{id}")
	public String productedit(Model model, @PathVariable("id") Long id) {
		Product item = productdao.findById(id).get();
		model.addAttribute("item", item);
		List<Product> items = productdao.findAll();
		model.addAttribute("items", items);
		return "user/productDetails";
	}
	@RequestMapping("/product")
	public String product(Model model,@RequestParam("p") Optional<Integer> p) {
		Product item = new Product();
		Pageable pageable = PageRequest.of(p.orElse(0), 8);
		model.addAttribute("item", item);
		Page<Product> page = productdao.findAll(pageable);
		model.addAttribute("page", page);
		return "user/product";
	}
	
	@RequestMapping("/productdetails/{id}")
	public String product_details(Model model, @PathVariable("id") Long id,@RequestParam("p") Optional<Integer> p) {
		Product item = productdao.findById(id).get();
		model.addAttribute("item", item);
		Pageable pageable = PageRequest.of(p.orElse(0), 4);
		Page<Product> page = productdao.findAll(pageable);
		model.addAttribute("page", page);
		return "user/productDetails";
	}
	
	
	@RequestMapping("search-and-page")
	public String searchAndPage(Model model, @RequestParam("keywords") Optional<String> kw,
			@RequestParam("p") Optional<Integer> p) {
		String kwords = kw.orElse(session.get("keywords"));
		session.set("keywords", kwords);
		Pageable pageable = PageRequest.of(p.orElse(0), 8);
		Page<Product> page = productdao.findAllByNameLike("%" + kwords + "%", pageable);
		model.addAttribute("page", page);
		return "user/product";
	}
	@RequestMapping("search")
	public String search(Model model, @RequestParam("min") Optional<Double> min,
			@RequestParam("max") Optional<Double> max, @RequestParam("p") Optional<Integer> p) {
		double minPrice = min.orElse(Double.MIN_VALUE);
		double maxPrice = max.orElse(Double.MAX_VALUE);
		Pageable pageable = PageRequest.of(p.orElse(0), 8);
		Page<Product> page = productdao.findAllByPriceBetween(minPrice, maxPrice, pageable);
		model.addAttribute("page", page);
		return "user/product";
	}

	
	@RequestMapping("/CT")
	public String ct() {
		return "user/CT";
	}
	@RequestMapping("/details")
	public String details() {
		return "user/productDetails";
	}
	
	@RequestMapping("/login")
	public String login() {
		return "user/login";
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
	@PostMapping("/login")
	public String login(@RequestParam("username") String username,
	                    @RequestParam("password") String password, Model model) {
	    try {
	        Account account = aService.findByUsername(username);
	        if (!account.getPassword().equals(password)) {
	            model.addAttribute("message", "Sai mật khẩu");
	        } else {
	            String uri = session.get("security-uri");
	            session.set("user", account);
	            
	            if (this.checkAdmin(account)) {
	                session.set("userAdmin", "admin");
	                return "redirect:/user/account"; // Redirect to admin page
	            } else {
	                model.addAttribute("message", "Login success");
	                return "redirect:/user/index"; // Redirect to user page
	            }
	        }
	    } catch (Exception e) {
	        model.addAttribute("message", "Tài khoản không hợp lệ");
	        return "user/login";
	    }
	    return null;
	}
	public Boolean checkAdmin(Account account) {
		for(RoleDetail roleDetail : account.getRoleDetails()) {
			if(roleDetail.getRole().getRole().equals("user") || roleDetail.getRole().getRole().equals("admin")) {
				return true;
				
			}
		}
		return false;
	}
	
@PostMapping("/doimatkhau")
	public String doimatkhau(@ModelAttribute("changePasswordForm") 
	ChangePasswordForm changePasswordForm, Model model) {
		Account currentAccount = (Account) session.get("user");
	    String username = currentAccount.getUsername();

	 // Kiểm tra email khớp với username
	    if (!changePasswordForm.getEmail().equals(currentAccount.getEmail())) {
	        model.addAttribute("message", "Email không khớp với tài khoản đăng nhập");
	        return "user/changepass";
	    }

	    // Kiểm tra mật khẩu mới và xác nhận mật khẩu phù hợp
	    if (!changePasswordForm.getNewPassword().equals(changePasswordForm.getConfirmPassword())) {
	        model.addAttribute("message", "Xác nhận mật khẩu không khớp");
	        return "user/changepass";
	    }

	    // Cập nhật mật khẩu mới cho tài khoản
	    currentAccount.setPassword(changePasswordForm.getNewPassword());

	    // Gọi phương thức updateAccount từ AccountService để lưu thay đổi vào cơ sở dữ liệu
	    aService.save(currentAccount);
	    
	    model.addAttribute("message", "Đổi mật khẩu thành công");

		return "user/changepass";
	}
//		@PostMapping("/quenmatkhau")
//	public String quenmatkhau(Model model,  @RequestParam("email") String email) {
//		 try {
//		        // Tìm tài khoản dựa trên tên người dùng
//		        Account account = aService.findByEmail(email);
//		        if (account == null) {
//		        	  model.addAttribute("message", "Tài khoản không tồn tại");
//		            return "user/forgotpass";
//		        }
//
//		        // Sinh mật khẩu mới
//		        String newPassword = generateNewPassword();
//		        
//		        // Gửi email chứa mật khẩu mới
//		        String to = account.getEmail();
//		        String subject = "Khôi phục mật khẩu";
//		        String body = "Mật khẩu mới của bạn là: " + newPassword;
//		        mailerService.send(to, subject, body);
//		        
//		        // Cập nhật mật khẩu mới trong cơ sở dữ liệu
//		        account.setPassword(newPassword);
//		        aService.save(account);
//		        
//		        // Hiển thị thông báo thành công đến người dùng
//		        model.addAttribute("message", "Đã gửi vui lòng xác nhận email");
//		        return "user/login";
//		    } catch (Exception e) {
//		        // Xử lý ngoại lệ và hiển thị thông báo lỗi
//		    	 e.printStackTrace();
//		    	 model.addAttribute("message", "Lỗi không xác định");
//		        return "user/forgotpass";
//		    }
//		
//	}
//public String generateNewPassword() {
//	    int length = 8; // Độ dài mật khẩu mới
//	    String characters = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789";
//	    StringBuilder newPassword = new StringBuilder();
//
//	    Random random = new Random();
//	    for (int i = 0; i < length; i++) {
//	        int index = random.nextInt(characters.length());
//	        newPassword.append(characters.charAt(index));
//	    }
//
//	    return newPassword.toString();
//	}
@RequestMapping("/logout")
public String logoutSuccess(Model model) {
	session.remove("user");
	session.remove("userAdmin");
	session.remove("security-uri");
	session.remove("uri");
	model.addAttribute("message", "Đăng xuất thành công");
	return "user/login";
}
	
	
	@RequestMapping("/signup")
	public String signup(Model model) {
		Account item = new Account();
		model.addAttribute("item", item);
		List<Account> items = accountdao.findAll();
		model.addAttribute("items", items);
		return "user/signup";
	}
	@RequestMapping("signup/create")
	public String create(Account item)
	throws IllegalStateException, IOException{
		item.setPhoto("cat1.jpg");
		item.setCreateDate(new Date());
		accountdao.save(item);
		return "redirect:/user/signup";
	}
	
	@RequestMapping("/doimatkhau")
	public String doimatkhau() {
		return "user/changepass";
	}
	
	@RequestMapping("/quenmatkhau")
	public String quenmatkhau() {
		return "user/forgotpass";
	}
	@PostMapping("/quenmatkhau")
	public String quenmatkhau(Model model,  @RequestParam("email") String email) {
		 try {
		        // Tìm tài khoản dựa trên tên người dùng
		        Account account = aService.findByEmail(email);
		        if (account == null) {
		        	  model.addAttribute("message", "Tài khoản không tồn tại");
		            return "user/forgotpass";
		        }

		        // Sinh mật khẩu mới
		        String newPassword = generateNewPassword();
		        
		        // Gửi email chứa mật khẩu mới
		        String to = account.getEmail();
		        String subject = "Khôi phục mật khẩu";
		        String body = "Mật khẩu mới của bạn là: " + newPassword;
		        mailerService.sendEmail(to, subject, body);
		        
		        // Cập nhật mật khẩu mới trong cơ sở dữ liệu
		        account.setPassword(newPassword);
		        aService.save(account);
		        
		        // Hiển thị thông báo thành công đến người dùng
		        model.addAttribute("message", "Đã gửi vui lòng xác nhận email");
		        return "redirect:/user/login";
		    } catch (Exception e) {
		        // Xử lý ngoại lệ và hiển thị thông báo lỗi
		    	 e.printStackTrace();
		    	 model.addAttribute("message", "Lỗi không xác định");
		        return "user/forgotpass";
		    }
		
	}
public String generateNewPassword() {
	    int length = 8; // Độ dài mật khẩu mới
	    String characters = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789";
	    StringBuilder newPassword = new StringBuilder();

	    Random random = new Random();
	    for (int i = 0; i < length; i++) {
	        int index = random.nextInt(characters.length());
	        newPassword.append(characters.charAt(index));
	    }

	    return newPassword.toString();
	}
@RequestMapping("/cntk")
public String cntk(Model model) {
	Account account = session.get("user"); // Lấy thông tin tài khoản từ session
    model.addAttribute("account", account);
	return "user/CNTK";
}
@PostMapping("/cntk")
public String update(@ModelAttribute("account") Account updatedAccount,HttpServletResponse response,
		@RequestParam("photoFile") MultipartFile photoFile, Model model) {
	try {
        Account account = aService.findByUsername(updatedAccount.getUsername());
        if (account == null) {
            model.addAttribute("message", "Tài khoản không tồn tại");
            return "user/CNTK";
        }

        // Cập nhật trường fullname
        account.setFullname(updatedAccount.getFullname());
        // Cập nhật trường email
        account.setEmail(updatedAccount.getEmail());
        // Xử lý upload ảnh mới nếu có
        if (!photoFile.isEmpty()) {
            String photoFilename = savePhoto(account, photoFile); // Lưu ảnh mới và nhận tên file
            account.setPhoto(photoFilename); // Cập nhật tên ảnh mới trong trường photo
        }
       
        aService.save(account);
        model.addAttribute("message", "Cập nhật thành công vui lòng đăng nhập lại");
        
        return "user/login";
    } catch (Exception e) {
    	e.printStackTrace();
        model.addAttribute("message", "Lỗi không xác định");
        response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
        response.setHeader("Pragma", "no-cache");
        response.setHeader("Expires", "0");
        return "user/CNTK";
    }
}
private String savePhoto(Account account,@RequestParam("photo_file") MultipartFile photoFile)
		throws IllegalStateException,IOException {
    if (!photoFile.isEmpty()) {
        // Generate a unique file name for the photo
        String fileName = photoFile.getOriginalFilename();
        
        // Specify the directory where you want to save the photo
        File uploadDir = new File(app.getRealPath("/images/" + fileName));
        
        photoFile.transferTo(uploadDir);
        account.setPhoto(fileName);
        accountdao.save(account);
        // Return the saved file name
        return fileName;
    }
    
    return null; // Return null if no photo file is uploaded
}

}
