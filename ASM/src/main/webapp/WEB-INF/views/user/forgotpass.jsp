<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
    <title>Quên mật khẩu</title>
  </head>
  <body>
    <!-- Navigation -->
    <div class="top-nav">
      <div class="container d-flex">
        <p>Đặt Hàng Trực Tuyến Hoặc Gọi Cho Chúng Tôi: 0999.999.999</p>
        <ul class="d-flex">
          <li><a href="#">Về chúng tô</a></li>
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
            <a href="product.html" class="nav-link-drop">
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
            <a href="CT.html" class="nav-link-drop">
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
          <a href="login.html" class="icon">
            <i class="bx bx-user"></i>
          </a>
          <div class="icon">
            <i class="bx bx-search"></i>
          </div>
          <div class="icon">
            <i class="bx bx-heart"></i>
            <span class="d-flex">0</span>
          </div>
          <a href="cart.html" class="icon">
            <i class="bx bx-cart"></i>
            <span class="d-flex">0</span>
          </a>
        </li>
        </ul>

        <div class="icons d-flex">
          <a href="login.html" class="icon">
            <i class="bx bx-user"></i>
          </a>
          <div class="icon">
            <i class="bx bx-search"></i>
          </div>
          <div class="icon">
            <i class="bx bx-heart"></i>
            <span class="d-flex">0</span>
          </div>
          <a href="cart.html" class="icon">
            <i class="bx bx-cart"></i>
            <span class="d-flex">0</span>
          </a>
        </div>

        <div class="hamburger">
          <i class="bx bx-menu-alt-left"></i>
        </div>
      </div>
    </div>
    <!-- Login -->
    <div class="container">
      <div class="login-form">
        <form action="">
          <h1>Quên mật khẩu</h1>
          <p>
            Bạn đã có tài khoản? <a href="login.html">Đăng nhập</a> hoặc
            <a href="signup.html">Đăng ký</a>
          </p>

          <label for="email">Email</label>
          <input type="text" placeholder="Nhập email" name="email" required />


          <div class="buttons">
            <button type="button" class="cancelbtn">Hủy bỏ</button>
            <button type="submit" class="signupbtn">Gửi mã</button>
          </div>
        </form>
      </div>
    </div>

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
  </body>
</html>