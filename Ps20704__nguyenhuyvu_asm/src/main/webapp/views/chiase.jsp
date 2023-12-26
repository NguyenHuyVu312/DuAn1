<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
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

.tieude {
	
	#14ffe9, #ffeb3b, #ff00e0);
	color: transparent;
	background: linear-gradient(to right, #14ffe9, #ffeb3b, #ff00e0);
	-webkit-background-clip: text; background : linear-gradient( to right,
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
<div class="container" ng-app="asm" ng-controller="asm">
		<header>
			<div class="tieude1 float-end">
				<h1 class="text-warning display-1 ">ONLINE Entertainment</h1>
			</div>
			<img height="100px"
				src="/Ps20704__nguyenhuyvu_asm/images/FPT_Polytechnic.png"
				class=" col-3 mt-4" alt="...">

		</header>
		<nav class="row bg-warning rounded-pill">
			<nav class="navbar navbar-expand-lg md-5 ">
				<div class="container-fluid ">
					<a href="home.jsp" class="text-success h4 "><i
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
								class="nav-link text-primary  " href="trangyeuthich.jsp">MY
									FAVORITES</a></li>




						</ul>
						<ul class="navbar-nav reverser float-end">
							<li class="nav-item dropdown  h4 "><a
								class="nav-link dropdown-toggle text-primary  " href="#"
								role="button" data-bs-toggle="dropdown" aria-expanded="false"
								ng-moduel> My Account </a>

								<ul class="dropdown-menu dropdown-menu-lg-end">


									<li><a class="dropdown-item" href="dangnhap.jsp">Đăng Nhập</a></li>
									<li><a class="dropdown-item" href="quenmk.jsp">Quên Mật Khẩu
											</a></li>
									<li><a class="dropdown-item" href="dangky.jsp">Đăng Ký</a></li>

									<li>
										<hr class="dropdown-divider">
									</li>

									<li><a class="dropdown-item" href="#">Đăng Xuất</a></li>
									<li><a class="dropdown-item" href="doimk.jsp">Đổi Mật Khẩu
										</a></li>
									<li><a class="dropdown-item" href="capnhattk.jsp">Sửa Thông Tin</a></li>

								</ul></li>
						</ul>

					</div>
				</div>
			</nav>
			<hr>
		</nav>
		</div>
<div class="card col-4 m-auto mt-4" >
  <div class="card-header fw-bold bg-info ">
  SEND VIDEO TO YOUR FRIEND
  </div>
  <div class="card-body">
  <h1 > YOUR FRIEND'S EMAIL</h1>
  <input class="form-control" type="text" id="email">
  </div>
  <div class="card-footer text-end">
  <button class="btn btn-outline-primary" type="button">
									Share</button>
  </div>
</div>
</body>
</html>