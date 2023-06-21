<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%> 
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  
    <!-- Boxicons -->
    <link
      href="https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css"
      rel="stylesheet"
    />
    <!-- Glide js -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Glide.js/3.4.1/css/glide.core.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Glide.js/3.4.1/css/glide.theme.css">
    <!-- Custom StyleSheet -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/styles.css" />
    <title>BigBag Website</title>
    <link rel = "icon" href = 
    "images/logotitle.png" 
        type = "image/x-icon">  
  </head>
  <body>
    <!-- Header -->
    <header class="header" id="header">
      <!-- Top Nav -->
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
              <a href="index" class="nav-link">Home</a>
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
            <a href="/cart" class="icon">
              <i class="bx bx-cart"></i>
              <span class="d-flex">0</span>
            </a>
          </li>
          </ul>

          <div class="icons d-flex">
           <c:if test="${not empty sessionScope.user}">
			    <p>Xin chào <strong>${sessionScope.user.username}</strong></p>
			</c:if>
			<c:if test="${empty sessionScope.user}">
			    <p>Xin chào : <strong>Guest</strong></p>
			</c:if>
            <li class="nav-item">
    <a href="login" class="nav-link-drop icon">
        <div class="dropdown">
            <i class="bx bx-user"></i>
            <div class="dropdown-content">
                <%-- Kiểm tra trạng thái đăng nhập và hiển thị các phần tử tương ứng --%>
                <c:if test="${empty sessionScope.user}">
                    <%-- Hiển thị khi chưa đăng nhập --%>
                    <a href="/user/login">Đăng nhập</a>
                     <a href="/user/signup">Đăng ký</a>
                    <a href="/user/quenmatkhau">Quên mật khẩu</a>
                </c:if>
                <c:if test="${not empty sessionScope.user}">
                    <%-- Hiển thị khi đã đăng nhập --%>
                    <a href="/user/doimatkhau">Đổi mật khẩu</a>
                    <a href="/user/cntk">Cập nhật tài khoản</a>                  
                    <a href="/user/logout">Đăng xuất</a>
                </c:if>
            </div>
        </div>
    </a>
</li>
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

    <div class="hero">
      <div class="glide" id="glide_1">
        <div class="glide__track" data-glide-el="track">
          <ul class="glide__slides">
            <li class="glide__slide">
              <div class="center">
                <div class="left">
                  <span class="">Cảm hứng mới 2023</span>
                  <h1 class="">Bộ SƯU TẬP MỚI</h1>
                  <p>Xu hướng từ bộ sưu tập phong cách nam nữ</p>
                  <a href="#" class="hero-btn">MUA NGAY</a>
                </div>
                <div class="right">
                    <img class="img1" src="${pageContext.request.contextPath}/images/balo-fedom-fido1.png" alt="">
                </div>
              </div>
            </li>
            <li class="glide__slide"> 
              <div class="center">
                <div class="left">
                  <span>Cảm hứng mới 2023</span>
                  <h1>Bộ SƯU TẬP MỚI</h1>
                  <p>Xu hướng từ bộ sưu tập phong cách nam nữ</p>
                  <a href="#" class="hero-btn">MUA NGAY</a>
                </div>
                <div class="right">
                  <img class="img2" src="${pageContext.request.contextPath}/images/anhsile2.png" alt="">
                </div>
              </div>
            </li>
          </ul>
        </div>
      </div>
    </div>
    </header>

    <!-- Categories Section -->
    <section class="section category">
      <div class="cat-center">
        <div class="cat">
          <img src="../images/cat3.jpg" alt="" />
          <div>
            <p>Balo</p>
          </div>
        </div>
        <div class="cat">
          <img src="${pageContext.request.contextPath}/images/cat2.jpg" alt="" />
          <div>
            <p>Cặp</p>
          </div>
        </div>
        <div class="cat">
          <img src="${pageContext.request.contextPath}/images/cat1.jpg" alt="" />
          <div>
            <p>Túi</p>
          </div>
        </div>
      </div>
    </section>

    <!-- New Arrivals -->
    <section class="section new-arrival">
      <div class="title">
        <h1>Sản Phẩm Mới</h1>
        <p>Tất cả những sản phẩm mới nhất được chọn từ nhà thiết kế của cửa hàng chúng tôi</p>
      </div>

      <div class="product-center">
      <c:forEach var="item" items="${items}">
        <div class="product-item">
          <div class="overlay">
            <a href="details" class="product-thumb">
              <img src="../images/${item.images}" alt="" />
            </a>
          </div>
          <div class="product-info">
            <span>Balo</span>
            <a href="/user/edit/${item.id}">${item.name}</a>
            <h4>${item.price}</h4>
          </div>
          <ul class="icons">
            <li><i class="bx bx-heart"></i></li>
            <li><i class="bx bx-search"></i></li>
            <li><a href="/user/add/${item.id}"><i class="bx bx-cart"></i></a></li>
          </ul>
        </div>
        </c:forEach>
      </div>
    </section>


    <!-- Promo -->

    <section class="section banner">
<div class="left">
  <span class="trend">Xu Hướng Thiết Kế</span>
  <h1>Bộ Sưu Tập Mới 2023</h1>
  <p>Ưu đãi <span class="color">Giảm giá 50%</span> trong thời gian có hạn</p>
  <a href="#" class="btn btn-1">Khám phá ngay</a>
</div>
<div class="right">
  <img src="${pageContext.request.contextPath}/images/banner.png" alt="">
</div>
    </section>




    <!-- Featured -->
  
    <section class="section new-arrival">
      <div class="title">
        <h1>ĐẶC SẮC</h1>
        <p>Tất cả những sản phẩm mới nhất được chọn từ nhà thiết kế của cửa hàng chúng tôi</p>
      </div>

      <div class="product-center">
      <c:forEach var="item" items="${items}">
        <div class="product-item">
          <div class="overlay">
            <a href="details" class="product-thumb">
              <img src="../images/${item.images}" alt="" />
            </a>
          </div>
          <div class="product-info">
            <span>Balo</span>
            <a href="/user/edit/${item.id}">${item.name}</a>
            <h4>${item.price}</h4>
          </div>
          <ul class="icons">
            <li><i class="bx bx-heart"></i></li>
            <li><i class="bx bx-search"></i></li>
            <li><a href="/user/add/${item.id}"><i class="bx bx-cart"></i></a></li>
          </ul>
        </div>
        </c:forEach>
      </div>
    </section>

    <!-- Contact -->
    <section class="section contact">
      <div class="row">
        <div class="col">
          <h2>HỖ TRỢ TUYỆT VỜI</h2>
          <p>Chúng tôi yêu khách hàng của mình và họ có thể liên hệ với chúng tôi bất cứ lúc nào trong ngày, chúng tôi sẽ phục vụ bạn 24/7</p>
          <a href="" class="btn btn-1">Liên hệ</a>
        </div>
        <div class="col">
          <form action="">
            <div>
              <input type="email" placeholder="Địa chỉ email">
            <a href="">Gửi</a>
            </div>
          </form>
        </div>
      </div>
    </section>

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


  <!-- PopUp -->
  <!-- <div class="popup hide-popup">
    <div class="popup-content">
      <div class="popup-close">
        <i class='bx bx-x'></i>
      </div>
      <div class="popup-left">
        <div class="popup-img-container">
          <img class="popup-img" src="./images/popup.jpg" alt="popup">
        </div>
      </div>
      <div class="popup-right">
        <div class="right-content">
          <h1>Get Discount <span>50%</span> Off</h1>
          <p>Sign up to our newsletter and save 30% for you next purchase. No spam, we promise!
          </p>
          <form action="#">
            <input type="email" placeholder="Enter your email..." class="popup-form">
            <a href="#">Subscribe</a>
          </form>
        </div>
      </div>
    </div>
  </div> -->

  </body>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/Glide.js/3.4.1/glide.min.js"></script>
  <script src="./js/slider.js"></script>
  <script src="./js/index.js"></script>
</html>
