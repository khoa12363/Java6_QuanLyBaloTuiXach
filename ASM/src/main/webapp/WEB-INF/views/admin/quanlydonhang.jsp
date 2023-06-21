<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Đơn hàng</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
<link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/admin.css">
</head>
<body>
	<div id="page_wrapper">
  <div id="sidenav" class="sidenav">
    <div class="sidenav_header">
      <div class="logo_section">
        
        <h3>Five AE</h3>
      </div>
      
      <a href="product" class="sidenav_link ">
        <i class='bx bx-folder'></i>
        <h3>Quản Lý Sản Phẩm</h3>
      </a>
      
      <a href="bill" class="sidenav_link">
        <i class='bx bx-briefcase'></i>
        <h3>Quản Lý Hóa Đơn</h3>
      </a>
      <a href="account" class="sidenav_link">
        <i class='bx bx-briefcase'></i>
        <h3>Quản Lý Tài Khoản</h3>
      </a>
      
      <a href="order" class="sidenav_link active">
        <i class='bx bx-file'></i>
        <h3>Quản Lý Đơn Hàng</h3>
      </a>
      <a href="statistical" class="sidenav_link">
        <i class='bx bx-file'></i>
        <h3>Quản Lý Thống Kê</h3>
      </a>
    </div>
    <div class="sidenav_footer">
      <a href="#" class="sidenav_link">
        <i class='bx bx-rocket'></i>
        <h3>Special Promotion</h3>
      </a>
    </div>
    
      <button id="nav_collapse_btn">
        <i class='bx bxs-chevrons-left'></i>
      </button>
    </div>
  
    
  <main>
    <header>
      <div class="text">
        <p>quản lý đơn hàng</p>
        <table>
  
  <thead>
    <tr>
      <th scope="col" width="100px">Id Đơn hàng</th>
      <th scope="col" width="150px">Tên tài khoản</th>
      <th scope="col" width="150px">Ngày tạo</th>
      <th scope="col" width="150px">Địa chỉ</th>
      <th scope="col" width="200px">Trạng thái</th>
      <th scope="col"></th>
      <th scope="col"></th>
    </tr>
  </thead>
  <tbody>
<c:forEach var="item" items="${page.content}">
    <tr>
      <td data-label="Account">${item.id}</td>
      <td data-label="Due Date" >${item.account.username}</td>
      <td data-label="A32">${item.createDate}</td>
      <td data-label="A32">${item.address}</td>
      <td data-label="A33" width="100px">${item.status ? "Đã thanh toán" : "Chưa thanh toán"}</td>
      <td>
        <a href="/admin/editorder/${item.id}" class="btn btn-warning">Edit</a>
      </td>
      <td>
        <a href="/admin/deleteorder/${item.id}">Xóa</a>
      </td>
    </tr>
</c:forEach>
  </tbody>
</table>
<!-- Pagination links if applicable -->
	<div class="page">
						<nav aria-label="Page navigation">
							<ul class="pagination justify-content-center">
								<c:forEach var="i" begin="0" end="${page.totalPages - 1}">
									<li><a class="active" href="?p=${i}">${i+1}</a></li>
								</c:forEach>
							</ul>
						</nav>
					</div>
      </div>
      <div>
        <button id="theme_switch">
          <i class='bx bx-sun'></i>
        </button>
      </div>
    </header>
    
    
  </main>
  
  
</div>
<script type="text/javascript" src="${pageContext.request.contextPath}/css/admin.js"></script>
</body>
</html>