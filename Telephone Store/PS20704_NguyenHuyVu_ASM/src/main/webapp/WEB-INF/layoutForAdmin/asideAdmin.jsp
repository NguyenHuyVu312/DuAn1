<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- Spinner Start -->
	<div id="spinner"
		class="show bg-white position-fixed translate-middle w-100 vh-100 top-50 start-50 d-flex align-items-center justify-content-center">
		<div class="spinner-border text-primary"
			style="width: 3rem; height: 3rem;" role="status">
			<span class="sr-only">Loading...</span>
		</div>
	</div>
	<!-- Spinner End -->


	<!-- Sidebar Start -->
	<div class="sidebar pe-4 pb-3">
		<nav class="navbar bg-light navbar-light">
			<a href="/admin/home"
				class="d-flex align-items-center mb-5 mb-lg-0 me-5 mx-auto"> <img
				src="/images/user/${isLogin.photo}" width="160px">
			</a>
			<div class="d-flex align-items-center text-center mx-auto my-4">
				<div class="ms-4">
					<h6 class="mb-0">${isLogin.fullname}</h6>
					<span>Admin</span>
				</div>
			</div>
			<div class="navbar-nav w-100">
				<a href="/admin/home" class="nav-item nav-link"><i
					class="fa fa-tachometer-alt me-2"></i>Doanh thu</a> <a
					href="/admin/user" class="nav-link"><i
					class="fa fa-laptop me-2"></i>Quản lý tài khoản</a> <a
					href="/admin/product" class="nav-item nav-link"><i
					class="fa fa-table me-2"></i>Quản lý sản phẩm</a> <a
					href="/admin/order" class="nav-item nav-link"><i
					class="fa fa-chart-bar me-2"></i>Quản lý hóa đơn</a>
					<a href="/admin/category" class="nav-item nav-link"><i class="fa fa-store"></i> Nhà cung cấp</a> 
			</div>
		</nav>
	</div>
	<!-- Sidebar End -->
</body>
</html>