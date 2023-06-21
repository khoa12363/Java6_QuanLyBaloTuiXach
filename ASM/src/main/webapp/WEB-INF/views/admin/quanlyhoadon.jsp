<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Hóa Đơn</title>
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
          <p>quản lý hóa đơn</p>
          <table>
            <thead>
              <tr>
                <th scope="col">ID Hóa đơn</th>
                <th scope="col">ID giỏ hàng</th>
                <th scope="col">Ngày Tạo</th>
                <th scope="col">Tổng Tiền</th>
                <th scope="col" width="130px">Trạng Thái</th>
                <th scope="col">Dịa Chỉ</th>
              </tr>
            </thead>
            <tbody>
<c:forEach var="item" items="${items}">
			<tr>
				<td>${item.id}</td>	
				<td>${item.order.id}</td>
				<td>${item.createDate}</td>
				<td>${item.sum}</td>
				<td>${item.activated ? "đang xử lý" : "xử lý thành công"}</td>
				<td>${item.address}</td>
				<td>
                  <a href="admin/product/create" class="btn btn-warning">Thêm</a>
                </td>
                <td>
                  <a href="admin/bill/edit/${item.order.id}" class="btn btn-warning">Sửa</a>
                </td>
                 <td>
                  <a href="admin/bill/delete/${item.id}" class="btn btn-warning">Xóa</a>
                </td>
			</tr>
		</c:forEach>
              <tr>
              </tr>
            </tbody>
          </table>
        </div>
      </header>
    </main>
  </div>

  <script type="text/javascript" src="${pageContext.request.contextPath}/css/admin.js"></script>
	
</body>
</html>