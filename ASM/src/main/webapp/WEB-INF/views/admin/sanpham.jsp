<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css"
	integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
	crossorigin="anonymous">
<style>
.tieu_de {
	text-align: center;
	text-transform: uppercase;
	font-weight: bold;
	font-size: 30px;
	margin: 50px;
}

.ab {
	margin-left: 20px;
	margin-top: 25px;
}
</style>
</head>
<body>
	<a href="/admin/product" class=" btn btn-success">Quay lại</a>
	<div class="container">
		<div class="row">
			<form:form action="/admin" modelAttribute="item"
				enctype="multipart/form-data" method="post">
				<div class="col-sm-12 khung2">
					<div class="tieu_de">Sửa sản phẩm</div>
					<div class="col-sm-6">
						<div class="form-group">
							<label>Id</label> 
							<form:input path="id" class="form-control" readonly="true" />
						</div>
					</div>
					<div class="col-sm-6">
						<div class="form-group">
							<label>TÊN SẢN PHẨM</label> 
							<form:input path="name" class="form-control"/>
						</div>
					</div>
					<div class="col-sm-6">
						<div class="form-group">
							<label>GIÁ SẢN PHẨM</label> 
							<form:input type="text" path="price" class="form-control"/>
						</div>
					</div>
					<div class="col-sm-6">
						<div class="form-group">
							<label for="select-input">Ngày Tạo</label> <br>
							<form:input path="createDate" class="form-control" readonly="true" />
						</div>
					</div>
					<div class="col-sm-6">
						<div class="form-group">
							<label>Mã Thương hiệu</label> 
							<form:input path="brandid" name="brandid" class="form-control"/>
						</div>
					</div>
					<div class="col-sm-6">
						<div class="form-group">
							<label for="select-input">Trạng Thái</label> <br>
							<form:radiobuttons path="available" items="${list_yesno}"/>
						</div>
					</div>
					<div class="col-sm-6">
						<div class="form-group">
							<label>Mô tả</label> 
							<form:textarea path="description" class="form-control"/>
						</div>
					</div>
					<div class="col-sm-6">
						<div class="form-group">
							<label>Hình ảnh</label> 
							<input type="file" name="photo_file">
						</div>
					</div>
					<div class="col-sm-6 ">
						<div>
							<button formaction="/admin/update" class="btn btn-success ab">Update</button>
						</div>
					</div>
				</div>
			</form:form>
		</div>
	</div>

	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js"
		integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"
		crossorigin="anonymous">
	</script>
</body>
</html>