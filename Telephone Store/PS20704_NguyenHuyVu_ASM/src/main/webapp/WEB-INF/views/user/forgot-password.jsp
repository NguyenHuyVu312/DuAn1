
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

</head>

<body>
	<div class="container ">			
		<article class="col-12  ">

			<div class="container-fluid ps-md-0">
				<div class="row g-0 col-10 mx-auto ">
					<div class="d-none d-md-flex col-md-4 col-lg-6 bg-image"></div>
					<div class="col-md-8 col-lg-6">
						<div class="login d-flex align-items-center py-5">
							<div class="container">
								<div class="row">
									<div class="col-md-12 col-lg-12">
										<h3 class="login-heading mb-4 text-center">Forgot Password</h3>

										<!-- Sign In Form -->
										<form action="forgot-password" method="post"  modelAttribute="ac">
											<div class="form-floating mb-3">
												<input type="text" class="form-control" id="varify" name="username"
													 placeholder="name"> <label
													for="floatingInput">Tên Đăng Nhập</label>
											</div>
											<div class="form-floating mb-3">
												<input type="email" id="email" name="email" class="form-control"
												 placeholder="Password"> <label
													for="floatingPassword">Email</label>
											</div>
											 <h5 class="text-danger">${message }</h5>
											

											<div class="d-grid">
												<button
													class="btn btn-lg btn-primary btn-login text-uppercase fw-bold mb-2"
													type="submit">Send</button>
												<div class="text-center">
													<a href="/" class="text-muted me-3"><i
														class="fas fa-long-arrow-alt-left "></i>Back to shop</a>
														 <a href="/home/register"
														col-6 class="text-muted" href="#">Đăng Ký</a>
															 <a href="/home/login"
														col-6 class=" ms-3 text-muted" href="#">Đăng Nhập</a>
												</div>
											</div>

										</form>
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