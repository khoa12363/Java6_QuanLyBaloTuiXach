<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css"
        integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
<title>Insert title here</title>
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
 <a href="bill" class=" btn btn-success">Quay lại</a>
	<form:form action="/admin/bill" modelAttribute="item">
            	<div class="container">
        <div class="row">
            <div class="col-sm-12 khung2">
                <div class="tieu_de">Thêm hóa đơn</div>
                <div class="col-sm-6">
                    <div class="form-group">
                        <label>ID Giỏ hàng</label>
                       <form:input path="id" placeholder="order?" class="form-control"/> <br>
                    </div>
                </div>
                <div class="col-sm-6">
                    <div class="form-group">
                        <label>Tên Sản Phẩm</label>
                        <form:input path="product" placeholder="product?" class="form-control"/> <br>
                    </div>
                </div>
                <div class="col-sm-6">
                    <div class="form-group">
                        <label>Giá</label>
                        <form:input  type="number" path="price" placeholder="price?" class="form-control"/> <br>
                    </div>
                </div>
                <div class="col-sm-6">
                    <div class="form-group">
                        <label>Số Lượng </label>
                        <form:input  type="number" path="quantity" placeholder="quantity?" class="form-control"/> <br>
                    </div>
                </div>
                <div class="col-sm-6">
                    <div class="form-group">
                        <label>	Tổng Tiền</label>
                        <input type="text" value="sum"  path="sum"class="form-control">
                    </div>
                </div>
                <div class="col-sm-6 ">
                    <div>
                        <button formaction="hoadon/create" class="btn btn-success ab" >Create</button>
                        <button formaction="hoadon/update"  class="btn btn-success ab">Update</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
        </form:form>
	 
    
     <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js"
        integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous">
        </script>
</body>
</html>