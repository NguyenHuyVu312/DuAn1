<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

</head>
<body>
	<div class="container">
		<header class="p-3 mb-3 border-bottom ">

			<div class="row me-auto">
				<div class="d-flex flex-wrap  col-11">
					<a href="/"
						class="d-flex align-items-center mb-2 mb-lg-0 link-body-emphasis text-decoration-none  ">

						<img src="/images/sanpham/HOPE.png" alt="mdo" width="100px">
					</a>

				</div>

				<div class=" col-1 dropdown align-items-center me-auto row">


					<c:if test="${empty isLogin }">
						<a href="#"
							class="d-block link-dark text-decoration-none dropdown-toggle"
							data-bs-toggle="dropdown" aria-expanded="false">
							<h3>Tài khoản</h3>
						</a>
						<ul class="dropdown-menu text-small ">
							<li><a class="dropdown-item">${isLogin.fullname}</a></li>

							
							<li><a class="dropdown-item" href="/home/register">Đăng
									Ký</a></li>
							<li><a class="dropdown-item" href="/home/login">Đăng
									Nhập</a></li>
									<li><a class="dropdown-item" href="/home/forgot-password">Quên
									Mật Khẩu</a></li>
					

						</ul>
					</c:if>
					<c:if test="${!empty isLogin }">
						<a href="#"
							class="d-block link-dark text-decoration-none dropdown-toggle"
							data-bs-toggle="dropdown" aria-expanded="false"> <img
							src="/images/user/${isLogin.photo}" alt="mdo" width="70" height="60"
							class="rounded-circle">


						</a>
						<ul class="dropdown-menu text-small">
							<li><a class="dropdown-item">${isLogin.fullname}</a></li>
							<c:if test="${isLogin.admin==true}">
								<li><a class="dropdown-item" href="/admin/home"> Chỉnh
										sửa</a></li>
							</c:if>
							<li><hr class="dropdown-divider"></li>
							<li><a class="dropdown-item" href="/home/profile">Thông
									tin cá nhân</a></li>
							<li><a class="dropdown-item" href="/home/changepassword">Đổi mật khẩu</a></li>
							<c:if test="${ empty isLogin }">
								<li><a class="dropdown-item" href="/home/login">Đăng
										Nhập</a></li>
							</c:if>
							<li><a class="dropdown-item" href="/home/logout">Đăng
									Xuất</a></li>
						</ul>
					</c:if>
				</div>
			</div>
			<div class=" justify-content-center mt-3  mb-4  nav   mx-auto h1">

				<a href="/home/index"
					class="nav-link px-2 link-dark badge bg-primary-subtle border border-warning-subtle rounded-pill me-4">
					Trang Chủ</a> <a href="/"
					class="nav-link px-2 link-dark badge bg-primary-subtle border border-warning-subtle rounded-pill me-4">Sản
					Phẩm</a> <a href="#"
					class="nav-link px-2 link-dark  badge bg-primary-subtle border border-warning-subtle rounded-pill me-4">Liên
					Hệ</a> <a href="#"
					class="nav-link px-2 link-dark  badge bg-primary-subtle border border-warning-subtle rounded-pill me-4">Góp
					Ý</a> <a href="#"
					class="nav-link px-2 link-dark  badge bg-primary-subtle border border-warning-subtle rounded-pill me-4">Liên
					Hệ</a>

			</div>

		</header>
	</div>
</body>
</html>