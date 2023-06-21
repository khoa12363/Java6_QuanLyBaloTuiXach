<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Sản Phẩm</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css"
	integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
	crossorigin="anonymous">
<link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css'
	rel='stylesheet'>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="../css/admin.css">
<style>
.page {
	text-align: center;
}

.them {
	margin: 10px 30px;
	margin-top: 10px;
}
</style>
</head>
<body>
	<div id="page_wrapper">
		<div id="sidenav" class="sidenav">
			<div class="sidenav_header">
				<div class="logo_section">

					<h3>Five AE</h3>
				</div>

				<a href="product" class="sidenav_link active"> <i
					class='bx bx-folder'></i>
					<h3>Quản Lý Sản Phẩm</h3>
				</a> <a href="bill" class="sidenav_link"> <i class='bx bx-briefcase'></i>
					<h3>Quản Lý Hóa Đơn</h3>
				</a> <a href="account" class="sidenav_link"> <i
					class='bx bx-briefcase'></i>
					<h3>Quản Lý Tài Khoản</h3>
				</a> <a href="order" class="sidenav_link "> <i class='bx bx-file'></i>
					<h3>Quản Lý Đơn Hàng</h3>
				</a> <a href="statistical" class="sidenav_link"> <i
					class='bx bx-file'></i>
					<h3>Quản Lý Thống Kê</h3>
				</a>
			</div>
			<div class="sidenav_footer">
				<a href="#" class="sidenav_link"> <i class='bx bx-rocket'></i>
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
					<p>Quản Lý Sản Phẩm</p>
					<form action="/admin/search-and-page" method="post"
						class="col-sm-6">
						<div class="col-sm-10">
							<input class="form-control" name="keywords"
								placeholder="tên sản phẩm" value="${keywords}">
						</div>
						<div class="col-sm-2">
							<button class="btn btn-primary">Search</button>
						</div>
					</form>

					<br> <br> 
					<c:if test="${not empty error}">
						<p>${error}</p>
					</c:if><a class="btn btn-primary them"
						href="/admin/themsanpham">Create</a>

					<table>

						<thead>
							<tr>
								<th scope="col" width="10px">ID</th>
								<th scope="col" width="180px">Tên Sản Phẩm</th>
								<th scope="col" width="150px">Giá Sản Phẩm</th>
								<th scope="col" width="140px">Ngày tạo</th>
								<th scope="col" width="100px">Trạng Thái</th>
								<th scope="col" width="100px">Mã Thương hiệu</th>
								<th scope="col" width="100px">Hình ảnh</th>
								<th scope="col"></th>
								<th scope="col"></th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="item" items="${page.content}" varStatus="status">
								<tr>
									<td>${item.id}</td>
									<td>${item.name}</td>
									<td>${item.price}</td>
									<td><fmt:formatDate value="${item.createDate}" pattern="dd/MM/yyyy"/></td> 
									<td>${item.available ? "Có sẵn" : "Không có"}</td>
									<td>${item.brandid}</td>
									<td><img src="/images/${item.images}" width=50px /></td>
									<td><a class="btn btn-primary"
										href="/admin/edit/${item.id}">Edit</a></td>
									<td><a class="btn btn-danger"
										href="/admin/delete/${item.id}">Delete</a></td>
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
				<div>
					<button id="theme_switch">
						<i class='bx bx-sun'></i>
					</button>
				</div>
			</header>


		</main>


	</div>

	<script type="text/javascript"
		src="${pageContext.request.contextPath}/css/admin.js"></script>
</body>
</html>