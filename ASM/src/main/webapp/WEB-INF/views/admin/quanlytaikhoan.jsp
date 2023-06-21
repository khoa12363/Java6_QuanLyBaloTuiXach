<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Tài Khoản</title>
<style>
	.page{
		text-align: center;
	}
</style>
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
          <p>QUẢN LÝ TÀI KHOẢN</p>
          <c:if test="${not empty error}">
        <p>${error}</p>
      </c:if>
         <form action="/admin/account/search" method="post">
		<input name="keywords" value="${keywords}">
		<button>Search</button>
	</form>
          <table>
            <thead>
              <tr>
              	<th scope="col" width="30px">#</th>
                <th scope="col" width="60px"><a href="/admin/account/sort?field=username">Username</a></th>
                <th scope="col" width="80px">Password</th>
                <th scope="col" width="140px" >Fullname</th>
                <th scope="col" width="150px" >Email</th>
                <th scope="col" width="110px" >Date</th>
                <th scope="col"  width="50px">Photo</th>
                <th scope="col" width="50px">Activated</th>
                <th scope="col" width="30px"></th>
              </tr>
            </thead>
            <tbody>
            <% int counter = 1; %>
             <c:forEach var="item" items="${page.content}">
			<tr>
				<td><%= counter++ %></td>
				<td>${item.username}</td>
				<td>${item.password}</td>
				<td>${item.fullname}</td>
				<td>${item.email}</td>
				<td> <fmt:formatDate value="${item.createDate}" pattern="dd-MM-yyyy" /></td>
				<td><img src="/images/${item.photo}" width=50px/></td>
				<td>${item.activated ? "admin" : "User"}</td>
				<td><a href="/admin/taikhoan/edit/${item.username}">Edit</a></td>
			</tr>
		</c:forEach>
            </tbody>
          </table>
         	<div class="page">
      <nav aria-label="Page navigation">
        <ul class="pagination justify-content-center">
          <c:if test="${page.totalPages > 0}">
            <c:forEach var="i" begin="0" end="${page.totalPages - 1}">
              <li><a class="active" href="?p=${i}">${i + 1}</a></li>
            </c:forEach>
          </c:if>
        </ul>
      </nav>
    </div>
        </div>
      </header>
    </main>
  </div>
  <script type="text/javascript" src="${pageContext.request.contextPath}/css/admin.js"></script>
</body>
</html>