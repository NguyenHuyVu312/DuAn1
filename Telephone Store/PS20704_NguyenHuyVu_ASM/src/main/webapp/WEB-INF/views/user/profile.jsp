<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Profile</title>


</head>
<body>

	<div class="container ">

		<div class="row mt-5  ">



			<div class="row gutters profile">
				<div class="col-xl-3 col-lg-3 col-md-12 col-sm-12 col-12">
					<div class="card h-100">
						<div class="card-body">
							<div class="account-settings">
								<div class="user-profile mt-5">
									<div class="user-avatar">
										<img src="/images//user/${isLogin.photo}" alt="Maxwell Admin">
									</div>
									<h5 class="user-name">${isLogin.fullname}</h5>
									<h6 class="user-email">${isLogin.email}</h6>
								</div>

							</div>
						</div>
					</div>
				</div>
				<div class="col-xl-9 col-lg-9 col-md-12 col-sm-12 col-12">
					<div class="card h-100">

						<div class="card-body">
							<form:form action="/home/profile" modelAttribute="account" enctype="multipart/form-data" >
								<div class="row gutters">
									<div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
										<h6 class="mb-2 text-primary">Personal Details</h6>
									</div>
									<div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
										<div class="form-group">
											<label for="fullName">Username</label>
											<form:input path="username" class="form-control"
												id="inputFirstName" type="text" value="${isLogin.username}" />
										</div>
									</div>
									<div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
										<div class="form-group">
											<label for="fullName">Full Name</label>
											<form:input path="fullname" class="form-control"
												id="inputFirstName" type="text" value="${isLogin.fullname}" />
										</div>
									</div>
									<div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
										<div class="form-group">
											<label for="eMail">Email</label>
											<form:input class="form-control" path="email"
												id="inputEmailAddress" type="email" value="${isLogin.email}" />
										</div>
									</div>

									<div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
										<div class="form-group">
											<label for="password">Password</label>
											<form:input class="form-control" path="password"
												id="inputpassword" type="text" value="${isLogin.password}" />
										</div>
									</div>
									<div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12 mt-2">
										<div class="form-group">
											<label for="photo">Photo</label>
											<form:input class="form-control" path="photo"
												id="photo" type="hidden" value="${images}"/>
											<input type="file" name="photo1" class="form-control"  />
										
										</div>
									</div>
									<div class="row gutters mt-5 text-center">
										<div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
											<div class="text-right">
												<button type="button" id="submit" name="submit"
													class="btn btn-secondary">Cancel</button>
												<button formaction="/home/profile/update"
													class="btn btn-primary">Update</button>
											</div>
											<div class="text-center text-danger fw-bolder">${message}</div>
										</div>
									</div>
							</form:form>


						</div>

					</div>
				</div>
			</div>
		</div>


	</div>




</body>
</html>