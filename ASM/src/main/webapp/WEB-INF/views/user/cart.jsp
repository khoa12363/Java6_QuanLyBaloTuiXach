<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <!-- Box icons -->
    <link
      rel="stylesheet"
      href="https://cdn.jsdelivr.net/npm/boxicons@latest/css/boxicons.min.css"
    />
    <!-- Custom StyleSheet -->
    <link rel="stylesheet" href="/css/styles.css" />
    <title>Giỏ Hàng</title>
     <link rel = "icon" href = 
    "/images/logotitle.png" 
        type = "image/x-icon">  
  </head>
  <body>
    <!-- Navigation -->
    <div class="top-nav">
      <div class="container d-flex">
        <p>Đặt Hàng Trực Tuyến Hoặc Gọi Cho Chúng Tôi: 0999.999.999</p>
        <ul class="d-flex">
          <li><a href="#">Về chúng tôi</a></li>
          <li><a href="#">Câu hỏi thường gặp</a></li>
          <li><a href="#">Liên hệ</a></li>
        </ul>
      </div>
    </div>
    <div class="navigation">
      <div class="nav-center container d-flex">
      <a href="/" class="logo"><h1>BigBag</h1></a>

        <ul class="nav-list d-flex">
          <li class="nav-item">
            <a href="/" class="nav-link">Home</a>
          </li>
          <li class="nav-item">
            <a href="product" class="nav-link-drop">
              <div class="dropdown">
                Balo
                <div class="dropdown-content">
                  <a href="#">Balo LapTop</a>
                  <a href="#">Balo Du Lịch</a>
                  <a href="#">Balo Thời Trang</a>
                </div>
              </div>
            </a>
          </li>
          <li class="nav-item">
            <a href="CT" class="nav-link-drop">
              <div class="dropdown">
                Cặp - Túi
                <div class="dropdown-content">
                  <a href="#">Cặp Xách</a>
                  <a href="#">Cặp LapTop</a>
                  <hr>
                  <a href="#">Túi Du Lịch</a>
                  <a href="#">Túi Đeo Chéo</a>
                  <a href="#">Túi Thể Thao</a>
                </div>
              </div>
            </a>
          </li>
          <li class="nav-item">
            <a href="#about" class="nav-link">About</a>
          </li>
          <li class="nav-item">
            <a href="#contact" class="nav-link">Contact</a>
          </li>
          <li class="icons d-flex">
          <a href="login" class="icon">
            <i class="bx bx-user"></i>
          </a>
          <div class="icon">
            <i class="bx bx-search"></i>
          </div>
          <div class="icon">
            <i class="bx bx-heart"></i>
            <span class="d-flex">0</span>
          </div>
          <a href="cart" class="icon">
            <i class="bx bx-cart"></i>
            <span class="d-flex">0</span>
          </a>
        </li>
        </ul>

        <div class="icons d-flex">
          <a href="login" class="icon">
            <i class="bx bx-user"></i>
          </a>
          <div class="icon">
            <i class="bx bx-search"></i>
          </div>
          <div class="icon">
            <i class="bx bx-heart"></i>
            <span class="d-flex">0</span>
          </div>
          <a href="cart" class="icon">
            <i class="bx bx-cart"></i>
            <span class="d-flex">0</span>
          </a>
        </div>

        <div class="hamburger">
          <i class="bx bx-menu-alt-left"></i>
        </div>
      </div>
    </div>

  <div class="container cart">
	      <table id="cartTable">
	        <tr>
	       	<th></th>
	        <th></th>
	        <th>Tên Sản Phẩm</th>
	        <th>số lượng</th>
	        <th>giá</th>
	        <th></th>
	        </tr>
		     <c:forEach var="cartItem" items="${items}">
		    <tr>
		    	<td><input type="checkbox" name="selectedItems" value="${cartItem.product.id}" class="itemCheckbox" checked></td>
		    	<td><img src="/images/${cartItem.product.images}" width=50px /></td>
		        <td>${cartItem.product.name}</td>
		        <td>${cartItem.quantity}</td>
		        <td>${cartItem.price}</td>
		         <td>
	            <a href="/user/delete/${cartItem.id}">Delete</a>
	        	</td>
		    </tr>
		</c:forEach>
	      </table>
	      <table>
	     <tr>
	           <td> Thành Tiền:</td>
	        </tr>
	        </table>
	<div class="total-price">
	    <table>
	        <tr>
	            <td>${finalPrice}</td>
	        </tr>
	        
	    </table>
	  
	</div>
	<a href="/user/payment?selectedItems=${selectedItems}" class="checkout btn">Thanh toán</a>
	    </div>  
    <!-- Footer -->
    <footer class="footer">
      <div class="row">
        <div class="col d-flex">
          <h4>THÔNG TIN</h4>
          <a href="">Về chúng tôi</a>
          <a href="">Liên hệ chúng tôi</a>
          <a href="">Điều khoản & Điều kiện</a>
          <a href="">Hướng dẫn vận chuyển</a>
        </div>
        <div class="col d-flex">
          <h4>LIÊN KẾT HỮU ÍCH</h4>
          <a href="">Cửa hàng trực tuyến</a>
          <a href="">Dịch vụ khách hàng</a>
          <a href="">Khuyến mãi</a>
          <a href="">Những nhãn hiệu hàng đầu</a>
        </div>
        <div class="col d-flex">
          <span><i class='bx bxl-facebook-square'></i></span>
          <span><i class='bx bxl-instagram-alt' ></i></span>
          <span><i class='bx bxl-github' ></i></span>
          <span><i class='bx bxl-twitter' ></i></span>
          <span><i class='bx bxl-pinterest' ></i></span>
        </div>
      </div>
    </footer>

    <!-- Custom Script -->
    <script src="./js/index.js"></script>
  	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
  <script>
  $(document).ready(function() {
    // Handle checkbox change event
    $('.itemCheckbox').on('change', function() {
      var finalPrice = 0.0;
      var selectedItems = [];

      // Iterate over checked checkboxes only
      $('input.itemCheckbox:checked').each(function() {
        var $row = $(this).closest('tr');
        var quantity = parseInt($row.find('td:nth-child(4)').text());
        var unitPrice = parseFloat($row.find('td:nth-child(5)').text());
        var totalPrice = quantity * unitPrice;

        finalPrice += totalPrice;
        selectedItems.push({
          id: $(this).val(),
          quantity: quantity,
          unitPrice: unitPrice
        });
      });

      // Update the final price in the UI
      $('.total-price td').text(finalPrice.toFixed(2));

      // Store the selected items and final price in session or temporary storage
      sessionStorage.setItem('selectedItems', JSON.stringify(selectedItems));
      sessionStorage.setItem('finalPrice', finalPrice.toFixed(2));
    });
  });
  </script>
  </body>
</html>
