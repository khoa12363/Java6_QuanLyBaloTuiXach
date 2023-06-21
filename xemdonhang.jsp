<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User Đơn hàng</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
<link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/admin.css">
</head>
<body>  
    <header>
    <table>
  <thead>
    <tr>
      <th scope="col" width="50px">Id</th>
      <th scope="col" width="150px">Tên tài khoản</th>
      <th scope="col" width="200px">Họ và tên</th>
      <th scope="col" width="150px">Ngày tạo</th>
      <th scope="col" width="150px">Địa chỉ</th>
      <th scope="col" width="150px">Trạng thái</th>
      <th scope="col"></th>
      <th scope="col"></th>
      <th scope="col"></th>
    </tr>
  </thead>
  <tbody>
<c:forEach var="item" items="${items}">
    <tr>
      <td data-label="Account">${item.id}</td>
      <td data-label="Due Date" >${item.account.username}</td>
      <td data-label="Due Date" >${item.name}</td>
      <td> <fmt:formatDate value="${item.createDate}" pattern="dd/MM/yyyy, HH:mm:ss" /></td>
      <td data-label="A32">${item.address}</td>
      <td data-label="A33" width="100px">${item.status ? "Đã thanh toán" : "Chưa thanh toán"}</td>
      <td>
        <a href="/user/order-details" class="btn btn-warning">Xem</a>
      </td>
      <td>
        <a href="/admin/editorder/${item.id}" class="btn btn-warning">Edit</a>
      </td>
      <td>
        <a href="/user/deleteshoworder/${item.id}">Hủy</a>
      </td>
    </tr>
</c:forEach>
  </tbody>
</table>
<!-- Pagination links if applicable -->
    </header>
<script type="text/javascript" src="${pageContext.request.contextPath}/css/admin.js"></script>
</body>