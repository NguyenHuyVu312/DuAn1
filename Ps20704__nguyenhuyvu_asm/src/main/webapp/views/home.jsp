<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN"
	crossorigin="anonymous"></script>
<script src="https://kit.fontawesome.com/0e7cad46fe.js"
	crossorigin="anonymous"></script>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.3/font/bootstrap-icons.css">
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt"%>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
body {
	position: relative;
	background-image: url(/Ps20704__nguyenhuyvu_asm/images/city.png);
	background-position: center;
	background-repeat: no-repeat;
	background-size: cover;
	background-attachment: fixed;
}

header {
	height: 185px;
}

header {
	position: relative;
}

.tieude1 h1 {
	margin-top: 20px;
	margin-right: 20px;
}

.tieude { #14ffe9 , #ffeb3b, #ff00e0);
	color: transparent;
	background: linear-gradient(to right, #14ffe9, #ffeb3b, #ff00e0);
	-webkit-background-clip: text;
	background: linear-gradient(to right,
}
/* hr {
	height: 5px;
	border-width: 0;
	  background: linear-gradient(to right, #14ffe9,#ffeb3b,#ff00e0);
	animation: rotate 1.5s linear infinite;
}

@
keyframes rotate { 0%{
	filter: hue-rotate(0deg)
}
100
%
{
filter
:
hue-rotate(
360deg
)
}
} */
</style>
<body>
	<c:url var="layout" value="/views"></c:url>
	<c:url var="ad" value="/views"></c:url>
	<header>
		<div class="tieude1 float-end">
			<h1 class="text-warning display-1 ">ONLINE Entertainment</h1>
		</div>
		<img height="100px"
			src="/Ps20704__nguyenhuyvu_asm/images/FPT_Polytechnic.png"
			class=" col-3 mt-4" alt="...">

	</header>
	<c:choose>
		<c:when test="${isAdmin == true}">
			<nav class="row bg-dark rounded-pill container-fluid  ">
				<nav class="navbar navbar-expand-lg md-5 ">
					<div class="container-fluid ">
						<a href="homenv.jsp" class="text-warning h4 "><i
							class="fa-sharp fa-solid fa-house me-2"></i> ADMINISTRATION TOOL</a>

						<ul class="navbar-nav  mb-5 mb-lg-0  ">

							<li class="nav-item mx-3 fw-bolder fs-5"><a
								class="nav-link text-primary  " href="${ad }/homecn">Home</a></li>
							<li class="nav-item mx-3 fw-bolder fs-5"><a
								class="nav-link text-primary  " href="${ad}/quanlyVideo">MY
									Videos</a></li>

							<li class="nav-item mx-3 fw-bolder fs-5"><a
								class="nav-link text-primary  " href="thongke.jsp">MY Report</a></li>
							<li class="nav-item mx-3 fw-bolder fs-5"><a
								class="nav-link text-primary  "  href="${ad}/quanlyUser">Users</a></li>
									<li class="nav-item"><a
									class="nav-link active text-warning" aria-current="page"
									href="${ad}/adminOff">LOGOFF</a></li>
						
					</div>

				</nav>
				<hr>
			</nav>

			<hr>
		</c:when>
		<c:otherwise>


			<nav class="row bg-warning rounded-pill">
				<nav class="navbar navbar-expand-lg md-5 ">
					<div class="container-fluid ">
						<a href="${layout}/firstPage" class="text-success h4 "><i
							class="fa-sharp fa-solid fa-house me-2"></i> TRANG CHỦ</a>
						<button class="navbar-toggler bg-light" data-bs-toggle="collapse"
							data-bs-target="#navbarSupportedContent"
							aria-controls="navbarSupportedContent" aria-expanded="false"
							aria-label="Toggle navigation">
							<span class="navbar-toggler-icon"></span>
						</button>
						<div class="collapse navbar-collapse" id="navbarSupportedContent">
							<ul class="navbar-nav me-auto mb-5 mb-lg-0">
								<li class="nav-item mx-3 fw-bolder fs-5"><a
									class="nav-link text-primary  " href="${layout}/like">MY
										FAVORITES</a></li>
							</ul>
							<ul class="navbar-nav reverser float-end">
								<li class="nav-item dropdown  h4 "><!-- <a
									class="nav-link dropdown-toggle text-primary  " href="#"
									role="button" data-bs-toggle="dropdown" aria-expanded="false"
									ng-moduel> My Account </a> -->
									<c:if
										test="${user != null}">
										<a class="nav-link dropdown-toggle active text-primary 	"
											role="button" data-bs-toggle="dropdown" aria-expanded="false">Welcome ${sessionScope.user.fullname}</a>
									</c:if> <c:if test="${user == null}">
										<a class="nav-link dropdown-toggle active text-primary "
											role="button" data-bs-toggle="dropdown" aria-expanded="false">My
											account</a>
									</c:if>
									<ul class="dropdown-menu dropdown-menu-lg-end">
										<li><a class="dropdown-item" href="${layout}/dangnhap">Đăng
												Nhập</a></li>
										<li><a class="dropdown-item" href="${layout}/quenmk">Quên
												Mật Khẩu </a></li>
										<li><a class="dropdown-item" href="${layout}/dangky">Đăng
												Ký</a></li>

										<li>
											<hr class="dropdown-divider">
										</li>

										<li><a class="dropdown-item" href="${layout}/logOff">Đăng Xuất</a></li>
										<li><a class="dropdown-item" href="${layout}/doimk">Đổi Mật
												Khẩu </a></li>
										<li><a class="dropdown-item" href="${layout}/capnhat">Sửa
												Thông Tin</a></li>

									</ul></li>
							</ul>
						</div>
					</div>
				</nav>
				<hr>
			</nav>

		</c:otherwise>
	</c:choose>
	<jsp:include page="${view}"></jsp:include>

</body>
</html>