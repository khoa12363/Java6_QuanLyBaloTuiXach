<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
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
    <title>Chi Tiết Sản Phẩm</title>
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

    <!-- Product Details -->
    <section class="section product-detail">
      <div class="details container">
				<div class="left image-container">
					<div class="main">
						<img src="/images/${item.images}" id="zoom" alt="" />
					</div>
				</div>
				<div class="right">
					<span>Balo</span>
					<h1>${item.name}</h1>
					<div class="price">${item.price}</div>
					<form class="form">
						<a href="/user/add/${item.id}" class="addCart">Thêm vào giỏ hàng</a>
					</form>
					<h3>Thông tin sản phẩm</h3>
					<p>${item.description}</p>
				</div>
		</div>
    </section>

    <!-- Related -->
    <section class="section featured">
      <div class="top container">
        <h1>Sản phẩm tương tự</h1>
        <a href="#" class="view-more">Xem thêm</a>
      </div>
		<div class="product-center container">
			<c:forEach var="item" items="${items}">
				<div class="product-item">
					<div class="overlay">
						<a href="details" class="product-thumb"> <img
							src="/images/${item.images}" alt="" />
						</a>
					</div>
					<div class="product-info">
						<span>Balo</span> <a href="/user/edit/${item.id}">${item.name}</a>
						<h4><fmt:formatNumber value="${item.price}" pattern="#,##0.00" /></h4>	
					</div>
					<ul class="icons">
						<li><i class="bx bx-heart"></i></li>
						<li><i class="bx bx-search"></i></li>
						<li><i class="bx bx-cart"></i></li>
					</ul>
				</div>
			</c:forEach>
		</div>
	</section>
    <!-- Footer -->
    <footer class="footer">
      <div class="row">
        <div class="col d-flex">
          <h4>INFORMATION</h4>
          <a href="">About us</a>
          <a href="">Contact Us</a>
          <a href="">Term & Conditions</a>
          <a href="">Shipping Guide</a>
        </div>
        <div class="col d-flex">
          <h4>USEFUL LINK</h4>
          <a href="">Online Store</a>
          <a href="">Customer Services</a>
          <a href="">Promotion</a>
          <a href="">Top Brands</a>
        </div>
        <div class="col d-flex">
          <span><i class="bx bxl-facebook-square"></i></span>
          <span><i class="bx bxl-instagram-alt"></i></span>
          <span><i class="bx bxl-github"></i></span>
          <span><i class="bx bxl-twitter"></i></span>
          <span><i class="bx bxl-pinterest"></i></span>
        </div>
      </div>
    </footer>
    <!-- Custom Script -->
    <script src="./js/index.js"></script>
    <script
      src="https://code.jquery.com/jquery-3.4.0.min.js"
      integrity="sha384-JUMjoW8OzDJw4oFpWIB2Bu/c6768ObEthBMVSiIx4ruBIEdyNSUQAjJNFqT5pnJ6"
      crossorigin="anonymous"
    ></script>
    <script src="./js/zoomsl.min.js"></script>
    <script>
      $(function () {
        console.log("hello");
        $("#zoom").imagezoomsl({
          zoomrange: [4, 4],
        });
      });
    </script>
  </body>
</html>
>