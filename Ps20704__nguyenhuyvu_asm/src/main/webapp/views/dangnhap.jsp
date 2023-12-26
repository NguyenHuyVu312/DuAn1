<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
body {
	position: relative;
	background-image: url(/Ps20704__nguyenhuyvu_asm/images/backgroup.png);
	background-position: center;
	background-repeat: no-repeat;
	background-size: cover;
	background-attachment: fixed;
}

/*CSS cho header*/
body {
	margin: 0;
}

.education {
	position: absolute;
	margin-top: 20px;
	right: 60px;
}

.education>h1 {
	font-weight: bolder;
	font-style: italic;
	color: rgb(230, 155, 69);
}

.banner {
	margin-left: 50px;
}

/* CSS cho ICON LOGIN*/
.bi {
	color: rgba(34, 179, 184, 0.975);
	display: inline-block;
	position: relative;
	left: 50%;
	transform: translateX(-50%);
	margin-bottom: 30px;
}

/* CSS cho boder login*/
.card {
	border-radius: 5%;
}

/* CSS canh giữa cho textfield*/
.login {
	display: inline-block;
	position: relative;
	left: 50%;
	transform: translateX(-50%);
}
</style>
</head>
<body>
	<c:url var="layout" value="/views"></c:url>
	<div class="card col-sm-5 col-9 mt-5 m-auto border-0 shadow-lg ">
		<div class="card-body">
			<svg xmlns="http://www.w3.org/2000/svg" width="80" height="80"
				fill="currentColor" class="bi bi-person-circle text-primary"
				viewBox="0 0 16 16">
                <path d="M11 6a3 3 0 1 1-6 0 3 3 0 0 1 6 0z" />
                <path fill-rule="evenodd"
					d="M0 8a8 8 0 1 1 16 0A8 8 0 0 1 0 8zm8-7a7 7 0 0 0-5.468 11.37C3.242 11.226 4.805 10 8 10s4.757 1.225 5.468 2.37A7 7 0 0 0 8 1z" />
            </svg>
			<form method="POST">
				<div class="login col-10 mb-4">
					<label class="visually-hidden" for="autoSizingInputGroup">Tài
						khoản</label>
					<div class="input-group">
						<div class="input-group-text">
							<i class="bi bi-person-fill m-auto h4 text-primary"></i>
						</div>
						<input type="text" class="form-control" id="id"
							placeholder="Tài khoản" name="id">
					</div>
				</div>
				<div class="login col-10 mb-4">
					<label class="visually-hidden" for="autoSizingInputGroup">Mật
						khẩu</label>
					<div class="input-group">
						<div class="input-group-text">
							<i class="bi bi-key-fill m-auto h4 text-primary"></i>
						</div>
						<input type="password" class="form-control" id="password"
							name="password" placeholder="Mật khẩu">

					</div>
				</div>
				<c:if test="${!empty message}">
					<div class="text-center mb-3 text-danger fw-bolder">${message}</div>
				</c:if>
				<div class="d-grid gap-2 d-md-flex justify-content-center">
					<a>
						<button formaction="${layout}/dangnhap"
							style="width: 150px;" name="login"
							class="btn btn-light btn-outline-primary mx-4">Đăng
							nhập</button>
					</a> <a>
						<button formaction="${layout}/dangky"
							style="width: 150px;"
							class="btn btn-light btn-outline-primary mx-4 ">
							Đăng ký</button>
					</a>
				</div>
				<div class="forgot text-center mt-4">
					<a href="quenmatkhau.html">Quên mật khẩu?</a>
				</div>
			</form>
		</div>

	</div>
</body>
</html>