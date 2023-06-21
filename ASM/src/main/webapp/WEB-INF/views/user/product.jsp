<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
    <%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
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
    <title>Balo</title>
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

    <!-- All Products -->
    <section class="section all-products" id="products">
      <div class="top container">
        <h1>Tất cả sản phẩm</h1>
        	<form action="/user/search-and-page" method="post">
		<input type="text" name="keywords" value="${keywords}">
		<button>Search</button>
	</form>
		<form action="/user/search" method="post">
				<input type="number" name="min" value="${param.min}"
					placeholder="Min Price?"> <input type="number" name="max"
					value="${param.max}" placeholder="Max Price?">
				<button class="btn btn-primary">Search</button>
			</form>
        <form>
          <select>
            <option value="1">Sắp xếp mặc định</option>
            <option value="/user/sortbyprice">Sắp xếp theo giá</option>
            <option value="3">Sắp xếp theo lượt bán</option>
          </select>
          <span><i class="bx bx-chevron-down"></i></span>
        </form>
      </div>
      <div class="product-center container">
      <c:forEach var="item" items="${page.content}">
        <div class="product-item">
          <div class="overlay">
            <a href="" class="product-thumb">
              <img src="${pageContext.request.contextPath}/images/${item.images}" alt="" />
            </a>
          </div>
          <div class="product-info">
            <a href="/user/productdetails/${item.id}">${item.name}</a>
            <a href="details">${item.description}</a>
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
    <section class="pagination">
  <div class="container">
      					<div class="page">
						<nav aria-label="Page navigation">
						  <ul class="pagination justify-content-center">
						    <li>
						      <a href="?p=${page.number-1}" aria-label="Previous">
						        <span aria-hidden="true">&laquo;</span>
						      </a>
						    </li>
						    <c:forEach var="i" begin="0" end="${page.totalPages - 1}" >
						    	<span><a class="active" href="?p=${i}">${i+1}</a></span>
						    </c:forEach>
<li>
						      <a href="?p=${page.number+1}" aria-label="Next">
						        <span aria-hidden="true">&raquo;</span>
						      </a>
						    </li>
						  </ul>
						</nav>
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
    <!-- Custom Script -->
    <script src="./js/index.js"></script>
  </body>
</html>