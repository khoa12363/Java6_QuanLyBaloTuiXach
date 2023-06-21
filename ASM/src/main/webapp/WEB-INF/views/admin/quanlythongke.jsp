<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Thống Kê</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
<link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0x`/css/font-awesome.min.css">
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
        <p>QUẢN LÝ THỐNG KÊ</p>
    	<h3>Thống Kê Chi Phí</h3>
    <table>
        <thead>
            <tr>
                <th>Ngày</th>
                <th>hóa đơn</th>
                <th>tổng số tiền order</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="reportCost" items="${reportCostList}">
                <tr>
                    <td>${reportCost.date}</td>
                    <td>${reportCost.sumOrder}</td>
                    <td>${reportCost.cost}</td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
    
    <h3>Sản Phẩm Bán Chạy</h3>
    <table>
        <thead>
            <tr>
                <th> ID Sản Phẩm</th>
                <th>Tên Sản Phẩm</th>
                <th> số lượng bán</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="reportProduct" items="${reportProductList}">
                <tr>
                    <td>${reportProduct.id}</td>
                    <td>${reportProduct.name}</td>
                    <td>${reportProduct.count}</td>
                </tr>
            </c:forEach>
        </tbody>
    </table>      </div>
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