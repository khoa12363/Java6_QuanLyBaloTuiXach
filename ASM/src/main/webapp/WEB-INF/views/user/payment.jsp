<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Payment</title>
<link rel="canonical"
	href="https://getbootstrap.com/docs/4.3/examples/checkout/">
<!-- Bootstrap core CSS -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<style>
.bd-placeholder-img {
	font-size: 1.125rem;
	text-anchor: middle;
	-webkit-user-select: none;
	-moz-user-select: none;
	-ms-user-select: none;
	user-select: none;
}

@media ( min-width : 768px) {
	.bd-placeholder-img-lg {
		font-size: 3.5rem;
	}
}
</style>
<!-- Custom styles for this template -->
<link href="css/GioHang.css" rel="stylesheet">
</head>
<body class="bg-light">
	<div class="container">
		<div class="py-5 text-center">
			<h2>Thanh Toán</h2>
		</div>

		<div class="row">
         <div class="col-md-4 order-md-2 mb-4">
        <h4 class="d-flex justify-content-between align-items-center mb-3">
            <span class="text-muted">Giỏ hàng của bạn</span>
        </h4>
        <ul class="list-group mb-3">
            <c:forEach var="cartItem" items="${cartItems}">
                <c:if test="${selectedItems.contains(cartItem.product.id)}">
                    <li class="list-group-item d-flex justify-content-between lh-condensed">
                        <div>
                            <h6 class="my-0"><img src="/images/${cartItem.product.images}" width="50px" /></h6>
                        </div>
                        <div>
                            <h6 class="my-0">${cartItem.product.name}</h6>
                        </div>
                        <div class="quantity-column">
                            <h6 class="my-0">${cartItem.quantity}</h6>
                        </div>
                        <span class="price-column">${cartItem.price}</span>
                    </li>
                </c:if>
            </c:forEach>
            <li class="list-group-item d-flex justify-content-between">
                <span>Tổng Tiền</span>
                <strong class="final-price">${finalPrice}</strong>
            </li>
        </ul>
    </div>
    <!-- Các phần khác của trang thanh toán -->
</div>	
			<c:if test="${not empty nameError}">
    <div class="alert alert-danger">${nameError}</div>
</c:if>
			
			<div class="col-md-8 order-md-1">
        <form:form action="/user" modelAttribute="item" enctype="multipart/form-data">
            <h4 class="mb-3">Billing address</h4>
            <form class="needs-validation" novalidate>
                <div class="row">
                    <div class="col-md-12 mb-3">
                        <label for="firstName">Họ và tên</label>
                        <form:input class="form-control" path="name"/>
                        <div class="invalid-feedback">
						<form:errors path="name"/> <!-- Hiển thị lỗi nhập liệu -->
                        </div>
                    </div>
                </div>

                <div class="mb-3">
                    <label for="email">Số điện thoại <span class="text-muted">(Bắt buộc)</span></label>
                    <form:input path="phone" class="form-control"/>
                    <div class="invalid-feedback">
                        Please enter a valid email address for shipping updates.
                    </div>
                </div>

                <div class="mb-3">
                    <label for="address">Địa Chỉ</label>
                    <form:input path="address" class="form-control"/>
                    <div class="invalid-feedback">
                        Please enter your shipping address.
                    </div>
                </div>

                <h4 class="mb-3">Thanh Toán</h4>

                <div class="d-block my-3">
                    <div class="custom-control custom-radio">
                    <form:radiobuttons path="status" items="${list_thanhtoan}"/>
                    </div>
                </div>
                <div class="row">
                    <hr class="mb-4">
                    <button formaction="/user/Themdonhang" class="btn btn-primary btn-lg btn-block" type="submit">Thanh Toán</button>
                </div>
            </form>
       
        </form:form>
         </div>

		<footer class="my-5 pt-5 text-muted text-center text-small">
			<p class="mb-1">&copy; 2023 Company Name</p>
		</footer>
	</div>
	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
    $(document).ready(function() {
        var selectedItems = JSON.parse(sessionStorage.getItem('selectedItems'));
        var finalPrice = parseFloat(sessionStorage.getItem('finalPrice'));

        if (selectedItems && finalPrice) {
            // Update the final price in the UI
            $('.final-price').text(finalPrice.toFixed(2));

            // Update the payment link with the correct number of selected items
            var selectedItemsCount = selectedItems.length;
            var paymentLink = $('.checkout.btn');
            var paymentUrl = "/user/payment?selectedItems=" + selectedItemsCount + "&finalPrice=" + finalPrice.toFixed(2);
            paymentLink.attr('href', paymentUrl);
        } else {
            // Handle the case when no items are selected or price is not available
            // Display an appropriate message or redirect to the cart page
        }
    });
</script>

</body>
</html>
