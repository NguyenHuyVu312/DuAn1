<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Register</title>


</head>
<body>

	<div class="container-fluid ps-md-0 ">
		<article class="col-12 ">
			<div class="row g-0 col-7 mt-5  mx-auto "
				style="background-image: url('/images/login.png');">

				<div class="mask d-flex align-items-center h-100 gradient-custom-3 ">
					<div class="container ">
						<div
							class="row d-flex justify-content-center align-items-center mt-5 mbư-5">
							<div class="col-12 col-md-9 col-lg-7 col-xl-8">
								<div class="card" style="border-radius: 15px;">
									<div class="card-body p-5 ">
										<h2 class="text-uppercase text-center mb-5">Create an
											account</h2>

										<form:form  action="/home/register" modelAttribute="account">

											<div class="form-outline mb-4">
											<label class="form-label" for="form3Example1cg">Username</label>
												<form:input type="text" path="username"
													class="form-control form-control-lg" />
												
											</div>

											<div class="form-outline mb-4">
												<label class="form-label" for="form3Example3cg">Email
													address</label>
												<form:input type="email" path="email"
													class="form-control form-control-lg" />
											
											</div>
											<div class="form-outline mb-4">
												<label class="form-label" for="form3Example1cg">
													Fullname Name</label>
												<form:input type="text" path="fullname"
													class="form-control form-control-lg" />
											
											</div>
											<div class="form-outline mb-4">
											<label class="form-label" for="form3Example4cg">Password</label>
												<form:input type="password" path="password"
													class="form-control form-control-lg" />
												
											</div>

											<div class="form-outline mb-4">
											<label
													class="form-label" for="form3Example4cdg">Repeat
													your password</label>
												<input type="password" id="form3Example4cdg"
													class="form-control form-control-lg" /> 
											</div>
										
											<h3 class="text-center fw-bolder text-danger">${message}</h3>
											<div class="d-flex justify-content-center">
												<button 
													class="btn btn-success btn-block btn-lg gradient-custom-4 text-body">Register</button>
											</div>

											<p class="text-center text-muted mt-5 mb-0">
												Have already an account? <a href="/home/login"
													class="fw-bold text-body"><u>Login here</u></a>
											</p>

											</form:form>

									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
	</div>
	</article>
	</div>






</body>
</html>