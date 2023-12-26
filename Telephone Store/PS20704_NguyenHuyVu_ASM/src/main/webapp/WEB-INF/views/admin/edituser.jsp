<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTEF-8">
<title>DASHMIN - Bootstrap Admin Template</title>


</head>
<body>



	<!-- Content Start -->
	<div class="content ">
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
				<div class="nav-item dropdown">
					<a href="#" class="nav-link dropdown-toggle"
						data-bs-toggle="dropdown"> <img class="rounded-circle me-lg-2"
						src="/images/user/${isLogin.photo}" alt="" style="width: 40px; height: 40px;">
						<span class="d-none d-lg-inline-flex">${isLogin.fullname}</span>
					</a>
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
			</div>
		</nav>

		
		<!-- Navbar End -->


		<!-- Page wrapper  -->
		<div class="page-wrapper py-2">
			<!-- Container fluid  -->
			<div class="container-fluid ">
				<!-- Sales Cards  -->
				<div class="row">
					<div class="col-md-10 offset-md-1">
						<h3 class="alert alert-info">
						Edit	Account  <a href="/admin/user"
								class="btn btn-success float-right">List Account</a>
						</h3>
					</div>
					<div class="container ">

						<form:form action="/home/profile" modelAttribute="item">
							<div class="row gutters profile">

								<div class="col-xl-3 col-lg-3 col-md-12 col-sm-12 col-12">
									<div class="card h-100">
										<div class="card-body">
											<div class="account-settings">
												<div class="user-profile mt-5">
													<div class="user-avatar">
														<img src="/images/user/${item.photo}" alt="Maxwell Admin">
													</div>
													<h5 class="user-name">${item.fullname}</h5>
													<h6 class="user-email">${item.email}</h6>
												</div>

											</div>
										</div>
									</div>
								</div>

								<div class="col-xl-9 col-lg-9 col-md-12 col-sm-12 col-12">
									<div class="card h-100">

										<div class="card-body">

											<div class="row ">
												<div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
													<h6 class="mb-2 text-primary">Personal Details</h6>
												</div>
												<div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
													<div class="form-group">
														<label for="fullName">Username</label>
														<form:input path="username" class="form-control"
															id="inputFirstName" type="text" value="${item.username}" />
													</div>
												</div>
												<div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
													<div class="form-group">
														<label for="fullName">Full Name</label>
														<form:input path="fullname" class="form-control"
															id="inputFirstName" type="text" value="${item.fullname}" />
													</div>
												</div>
												<div class="col-xl-6 col-lg-6 mt-3 mt-3 col-md-6 col-sm-6 col-12">
													<div class="form-group">
														<label for="eMail">Email</label>
														<form:input class="form-control" path="email"
															id="inputEmailAddress" type="email" value="${item.email}" />
													</div>
												</div>

												<div class="col-xl-6 col-lg-6 col-md-6 mt-3  col-sm-6 col-12">
													<div class="form-group">
														<label for="password">Password</label>
														<form:input class="form-control" path="password"
															id="inputpassword" type="text" value="${item.password}" />
													</div>
												</div>
												
												<div class="col-xl-6 col-lg-6 col-md-6 mt-5  col-sm-6 col-12">
													<div class="form-group">
														<label for="Activity">Activity</label>
														<form:radiobuttons class="mx-2" path="activated"
															items="${activateds}" delimiter="" />
													</div>
												</div>
												<div class="col-xl-6 col-lg-6  mt-5  col-md-6 col-sm-6 col-12">
													<div class="form-group">
														<label for="Role">Role</label>
														<form:radiobuttons class="mx-2" path="admin"
															items="${admins}" delimiter="" />
													</div>
												</div>
												<div class="col-xl-6 col-lg-6 mt-3  col-md-6 col-sm-6 col-12 mt-2">
													<div class="form-group">
														<label for="photo">Photo</label>
														<form:input type="file" class=" form-control " id="photo" 
															path="photo" aria-describedby="photoHid"
															placeholder="photo" />
														
													</div>
												</div>
												<div class="row gutters mt-5 text-center">
													<div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
														<div class="text-right">
															
																	<button formaction="/admin/user/form/create"
																class="btn btn-primary">Insert</button>
															<button formaction="/admin/user/form/update"
																class="btn btn-primary">Update</button>
																	<button formaction="/admin/user/form/delete/${item.username}"
																class="btn btn-primary">Delete</button>
																	<button formaction="/admin/user/form"
																class="btn btn-primary">Reset</button>
														</div>
														<div class="text-center text-danger fw-bolder">${message}</div>
													</div>
												</div>


											</div>

										</div>
									</div>

								</div>


							</div>
						</form:form>

					</div>

				</div>
			</div>


		</div>

		<!-- End Container fluid  -->


		<!-- Footer Start -->
		<div class="container-fluid pt-4 px-4">
			<div class="bg-light rounded-top p-4">
				<div class="row">
					<div class="col-12 col-sm-6 text-center text-sm-start">
						&copy; <a href="#">Your Site Name</a>, All Right Reserved.
					</div>
					<div class="col-12 col-sm-6 text-center text-sm-end">
						<!--/*** This template is free as long as you keep the footer authorâs credit link/attribution link/backlink. If you'd like to use the template without the footer authorâs credit link/attribution link/backlink, you can purchase the Credit Removal License from "https://htmlcodex.com/credit-removal". Thank you for your support. ***/-->
						Designed By <a href="https://htmlcodex.com">HTML Codex</a>
					</div>
				</div>
			</div>
		</div>
		<!-- Footer End -->
	</div>
	<!-- Content End -->
</body>

</html>