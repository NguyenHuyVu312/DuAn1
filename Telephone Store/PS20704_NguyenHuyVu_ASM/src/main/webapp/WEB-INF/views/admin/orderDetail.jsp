<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>DASHMIN - Bootstrap Admin Template</title>
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<meta content="" name="keywords">
<meta content="" name="description">
</head>
<body>
	

	<!-- Content Start -->
	<div class="content">
		<!-- Navbar Start -->
		<nav
			class="navbar navbar-expand bg-light navbar-light sticky-top px-4 py-0">
			<a href="/admin/home" class="navbar-brand d-flex d-lg-none me-4">
				<h2 class="text-primary mb-0">
					<i class="fa fa-hashtag"></i>
				</h2>
			</a> <a href="#" class="sidebar-toggler flex-shrink-0"> <i
				class="fa fa-bars"></i>
			</a>
			<form class="d-none d-md-flex ms-4">
				<input class="form-control border-0" type="search"
					placeholder="Search">
			</form>
			<div class="navbar-nav align-items-center ms-auto">
				<div class="nav-item dropdown">
					<a href="#" class="nav-link dropdown-toggle"
						data-bs-toggle="dropdown"> <i class="fa fa-envelope me-lg-2"></i>
						<span class="d-none d-lg-inline-flex">Message</span>
					</a>
					<div
						class="dropdown-menu dropdown-menu-end bg-light border-0 rounded-0 rounded-bottom m-0">
						<a href="#" class="dropdown-item">
							<div class="d-flex align-items-center">
								<img class="rounded-circle" src="/img/user.jpg" alt=""
									style="width: 40px; height: 40px;">
								<div class="ms-2">
									<h6 class="fw-normal mb-0">Jhon send you a message</h6>
									<small>15 minutes ago</small>
								</div>
							</div>
						</a>
						<hr class="dropdown-divider">
						<a href="#" class="dropdown-item">
							<div class="d-flex align-items-center">
								<img class="rounded-circle" src="img/user.jpg" alt=""
									style="width: 40px; height: 40px;">
								<div class="ms-2">
									<h6 class="fw-normal mb-0">Jhon send you a message</h6>
									<small>15 minutes ago</small>
								</div>
							</div>
						</a>
						<hr class="dropdown-divider">
						<a href="#" class="dropdown-item">
							<div class="d-flex align-items-center">
								<img class="rounded-circle" src="img/user.jpg" alt=""
									style="width: 40px; height: 40px;">
								<div class="ms-2">
									<h6 class="fw-normal mb-0">Jhon send you a message</h6>
									<small>15 minutes ago</small>
								</div>
							</div>
						</a>
						<hr class="dropdown-divider">
						<a href="#" class="dropdown-item text-center">See all message</a>
					</div>
				</div>
				<div class="nav-item dropdown">
					<a href="#" class="nav-link dropdown-toggle"
						data-bs-toggle="dropdown"> <i class="fa fa-bell me-lg-2"></i>
						<span class="d-none d-lg-inline-flex">Notificatin</span>
					</a>
					<div
						class="dropdown-menu dropdown-menu-end bg-light border-0 rounded-0 rounded-bottom m-0">
						<a href="#" class="dropdown-item">
							<h6 class="fw-normal mb-0">Profile updated</h6> <small>15
								minutes ago</small>
						</a>
						<hr class="dropdown-divider">
						<a href="#" class="dropdown-item">
							<h6 class="fw-normal mb-0">New user added</h6> <small>15
								minutes ago</small>
						</a>
						<hr class="dropdown-divider">
						<a href="#" class="dropdown-item">
							<h6 class="fw-normal mb-0">Password changed</h6> <small>15
								minutes ago</small>
						</a>
						<hr class="dropdown-divider">
						<a href="#" class="dropdown-item text-center">See all
							notifications</a>
					</div>
				</div>
				<div
						class="dropdown-menu dropdown-menu-end bg-light border-0 rounded-0 rounded-bottom m-0">
						<a href="/"
							class="dropdown-item">Shop</a>
						<a href="/admin/user/edit/${isLogin.username}" class="dropdown-item">My Profile</a> <a href="#"
							class="dropdown-item">Settings</a> 
							
							<a href="/home/logout"
							class="dropdown-item">Log Out</a>
					</div>
			</div>
		</nav>
		<!-- Navbar End -->


		<!-- Chart Start -->
		<div class="page-wrapper py-2">
		<!-- Container fluid  -->
		<div class="container-fluid">
			<!-- Sales Cards  -->
			<div class="row">
				<div class="col-md-11 mx-auto">
					<div class="col row">
						<div class="col-4  alert alert-success">
							<h3 class="text-center">Order</h3>
							<h5>ID: ${ord.id}</h5>
							<h5>Create Date: ${ord.createDate}</h5>
						</div>
						<div class="col-4 alert alert-success ms-auto ">
							<h3 class="text-center">Customer</h3>
							<h5>ID: ${ord.account.username}</h5>
							<h5>Name: ${ord.account.fullname}</h5>
							<h5>Address: ${ord.address}</h5>
							<h5>Email: ${ord.account.email}</h5>
						</div>
					</div>

					<table class="table text-center">
						<thead>
							<tr>
								<th style="font-weight: bolder; font-size: 18px">OrderDetail
									ID</th>
								<th style="font-weight: bolder; font-size: 18px">Product
									Image</th>
								<th style="font-weight: bolder; font-size: 18px">Product ID</th>
								<th style="font-weight: bolder; font-size: 18px">Product
									Name</th>
								<th style="font-weight: bolder; font-size: 18px">Product
									Price</th>
								<th style="font-weight: bolder; font-size: 18px">Quantity</th>
								<th style="font-weight: bolder; font-size: 18px">Order ID</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="item" items="${page.content}">
								<tr>
									<td>${item.id}</td>
									<td><img src="/images/${item.product.image}"
										alt="" width=50% /></td>
									<td>${item.product.id}</td>
									<td>${item.product.name}</td>
									<td><fmt:formatNumber value="${item.product.price}" pattern="###,###,###"></fmt:formatNumber></td>
									<td>${item.quantity }</td>
									<td>${item.order.id}</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>
		<!-- Chart End -->


		<!-- Footer Start -->
		<div class="container-fluid pt-4 px-4 mt-5">
			<div class="bg-light rounded-top p-4">
				<div class="row">
					<div class="col-12 col-sm-6 text-center text-sm-start">
						&copy; <a href="#">Your Site Name</a>, All Right Reserved.
					</div>
					<div class="col-12 col-sm-6 text-center text-sm-end">
						<!--/*** This template is free as long as you keep the footer authorÃ¢ÂÂs credit link/attribution link/backlink. If you'd like to use the template without the footer authorÃ¢ÂÂs credit link/attribution link/backlink, you can purchase the Credit Removal License from "https://htmlcodex.com/credit-removal". Thank you for your support. ***/-->
						Designed By <a href="https://htmlcodex.com">HTML Codex</a>
					</div>
				</div>
			</div>
		</div>
		<!-- Footer End -->
	</div>
	<!-- Content End -->


	<!-- Back to Top -->
	<a href="/admin/chart" class="btn btn-lg btn-primary btn-lg-square back-to-top"><i
		class="bi bi-arrow-up"></i></a>
</body>

</html>