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
	<div class="container">
	<header>
			<div class="tieude1 float-end">
				<h1 class="text-warning display-1 ">ONLINE Entertainment</h1>
			</div>
			<img height="100px"
				src="/Ps20704__nguyenhuyvu_asm/images/FPT_Polytechnic.png"
				class=" col-3 mt-4" alt="...">

		</header>
		<nav class="row bg-dark rounded-pill container-fluid  ">
			<nav class="navbar navbar-expand-lg md-5 ">
				<div class="container-fluid ">
					<a href="homenv.jsp" class="text-warning h4 "><i
						class="fa-sharp fa-solid fa-house me-2"></i> ADMINISTRATION TOOL</a>

					<ul class="navbar-nav  mb-5 mb-lg-0  ">

						<li class="nav-item mx-3 fw-bolder fs-5"><a
							class="nav-link text-primary  " href="homenv.jsp">Home</a></li>
						<li class="nav-item mx-3 fw-bolder fs-5"><a
							class="nav-link text-primary  " href="quanlyvideo.jsp">MY
								Videos</a></li>

						<li class="nav-item mx-3 fw-bolder fs-5"><a
							class="nav-link text-primary  " href="thongke.jsp">MY Report</a></li>
						<li class="nav-item mx-3 fw-bolder fs-5"><a
							class="nav-link text-primary  " href="quanlyngdung.jsp">Users</a></li>
						<ul class="navbar-nav reverser float-end">
							<li class="nav-item dropdown  h4 "><a
								class="nav-link dropdown-toggle text-primary  " href="#"
								role="button" data-bs-toggle="dropdown" aria-expanded="false"
								ng-moduel> Tài Khoản </a>

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

			</nav>
			<hr>
		</nav>
		<div class="card mt-4">
		<ul class="nav nav-tabs ">
			<li class="nav-item"><a class="nav-link active"
				data-bs-toggle="tab" href="#home">Favorites</a></li>
			<li class="nav-item"><a class="nav-link" data-bs-toggle="tab"
				href="#home2">Favorites Users</a></li>
			<li class="nav-item"><a class="nav-link" data-bs-toggle="tab"
				href="#home3">Shared Friend</a></li>

		</ul>
		<div class="tab-content">
			<div class="tab-pane active" id="home">
				<div class="card p-0">
					<table class="table table-bordered">
						<thead>
							<tr>
								<th scope="col">Video Tilte</th>
								<th scope="col">Favorite Count</th>
								<th scope="col">Latest Date</th>
								<th scope="col">Oldest Date</th>

							</tr>
						</thead>
						<tbody>
							<tr>
								<th scope="row">Lâu ghê mới gặp</th>
								<td>100</td>
								<td>31/12/2020</td>
								<td>01/01/2020</td>

							</tr>

						</tbody>
					</table>


				</div>
			</div>
			<div class="tab-pane " id="home2">
				
					<div class="card">
						<div class="mb-6 col-6">
							<label for="exampleFormControlInput1" class="form-label">Video
								Tilte?</label> <input type="text" class="form-control"
								id="exampleFormControlInput1" placeholder="">
						</div>
						<table class="table table-bordered">
							<thead>
								<tr>
									<th scope="col">Username</th>

									<th scope="col">Fullname</th>
									<th scope="col">Email</th>
									<th scope="col">Favorite Date</th>

								</tr>
							</thead>
							<tbody>
								<tr>
									<th scope="row">TeoNV</th>

									<td>Nguyễn Văn Tèo</td>
									<td>teonv@gmail.com</td>
									<td>01/01/2020</td>

								</tr>

							</tbody>
						</table>

					</div>
				
			</div>
			<div class="tab-pane " id="home3">
				
					<div class="card">
						<div class="mb-6 col-6">
							<label for="exampleFormControlInput1" class="form-label">Video
								Tilte?</label> <input type="text" class="form-control"
								id="exampleFormControlInput1" placeholder="">
						</div>
						<table class="table table-bordered">
							<thead>
								<tr>
									<th scope="col">Sender Name</th>

									<th scope="col">Sender Email</th>
									<th scope="col">Receiver Email</th>
									<th scope="col">Sent Date</th>

								</tr>
							</thead>
							<tbody>
								<tr>
									<th scope="row">Nguyễn Văn Tèo</th>

									<td>teonv@gmail.com</td>
									<td>poly@gmail.com</td>
									<td>01/01/2020</td>

								</tr>

							</tbody>
						</table>

					</div>
				
			</div>
		</div>
		</div>
	</div>
</body>
</html>