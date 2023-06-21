<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
   <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css"
        integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
        
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
    .radio-group label {
        margin-right: 30px;
    }
    .radio-group .abcd {
        margin-top: 10px;
    }
    </style>
</head>
	<body>
   <a href="/admin/account" class=" btn btn-success">Quay lại</a>
    <div class="container">
       <div class="row">
    <div class="col-sm-12 khung2">
        <div class="tieu_de">Quản lý tài khoản</div>
        <form:form action="/admin/account" modelAttribute="item" enctype="multipart/form-data">
            <div class="col-sm-6">
                <div class="form-group">
                    <label>Username</label>
                    <form:input path="username" placeholder="Username?" class="form-control" readonly="true" />
                </div>
            </div>
            <div class="col-sm-6">
                <div class="form-group">
                    <label>Password</label>
                    <form:input path="password" placeholder="Password?" class="form-control"/>
                    <form:errors path="password" cssClass="error-message" />
                </div>
            </div>
            <div class="col-sm-6">
                <div class="form-group">
                    <label>Fullname</label>
                    <form:input path="fullname" placeholder="Fullname?" class="form-control"/>
                    <form:errors path="fullname" cssClass="error-message" />
                </div>
            </div>
            <div class="col-sm-6">
                <div class="form-group">
                    <label>Email</label>
                    <form:input path="email" placeholder="Email?" class="form-control"/>
                    <form:errors path="email" cssClass="error-message" />
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
                    <label>Hình ảnh</label>
                    <input type="file" name="photo_file" class="form-control">
                </div>
            </div>
            <div class="col-sm-6">
                <div class="form-group radio-group">
                    <label>Activated</label> <br>
                    <form:radiobuttons path="activated" items="${list_activated}" class="abcd"/>
                </div>
            </div>
            <div class="col-sm-6">
                <div class="form-group">
                    <button formaction="/admin/account/update">Update</button>
                    <button><a href="/admin/account/delete/${item.username}">Delete</a></button>
                </div>
            </div>
              <%-- Display error message --%>
            <c:if test="${not empty error}">
                <div class="col-sm-12">
                    <p>${error}</p>
                </div>
            </c:if>
        </form:form>
    </div>
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
