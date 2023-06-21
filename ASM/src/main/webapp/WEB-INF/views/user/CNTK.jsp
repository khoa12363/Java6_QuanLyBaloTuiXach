<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
    <title>Cập Nhật Tài Khoản</title>
   <style>
   .avatar {
  width: 150px;
  height: 150px;
  border-radius: 50%;
  overflow: hidden;
  margin: 0 auto;
  margin-bottom: 20px;
}

.avatar img {
  width: 100%;
  height: 100%;
  object-fit: cover;
}

.form-header {
  text-align: center;
  margin-bottom: 20px;
}
</style>
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
        <form action="/user/cntk"  method="post" enctype="multipart/form-data">
          <div class="form-header">
        <h1>Cập Nhật Tài Khoản</h1>
      	  </div>
			
		    <div class="avatar">
      <img src="/images/${sessionScope.user.photo}" alt="Avatar" width="150px" height="150px">
    		</div>	
		   
          <label for="email">Username</label>
          <input type="text"  value="${sessionScope.user.username}" name="username" readonly="readonly" />
          
          <label for="email">Password</label>
          <input type="text" placeholder="******" name="password" readonly="readonly"/>
          
          <label for="email">Fullname</label>
          <input type="text"   value="${sessionScope.user.fullname}" name="fullname" required/>
          
          <label for="email">Email</label>
          <input type="text" value="${sessionScope.user.email}" name="email" />
          
           <label for="email">CreateDate</label>
          <input type="text" value="${sessionScope.user.createDate}" name="createDate" readonly="readonly"/>
          
           <label for="email">Photo</label>
          <input type="file" value="${sessionScope.user.photo}" name="photoFile" required/>
			
			<div class="col-12 col-sm-12 col-md-12 col-lg-12">
			<div class="form-group">
				<c:if test="${not empty message }">
					<i style="color: red; font-weight: bold">${message}</i>
				</c:if>
			</div>
		</div>
          <p>
            Bằng cách tạo tài khoản, bạn đồng ý với
            <a href="#">Điều khoản & Quyền riêng tư</a> của chúng tôi.
          </p>
	
          <div class="buttons">
            <button type="submit" class="signupbtn">Cập nhật</button>
          </div>
        </form>
      </div>
    </div>

    <!-- Footer -->
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
    
  </body>
</html>