<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
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
										<h3 class="login-heading mb-4 text-center">
											<c:if test="${!empty message}">
												<div class="text-center mb-3 text-danger fw-bolder">${message}</div>
											</c:if>
											<c:if test="${empty message}">
												<div class="text-center mb-3 fw-bolder">
													Change Password!</div>
											</c:if>


										</h3>

										<!-- Sign In Form -->
										<form action="/home/changepassword" method="post">
											<div class="form-floating mb-3">
												<input type="text" class="form-control" name="username"
													id="floatingInput" placeholder="name"
													value="${isLogin.username }"> <label
													for="floatingInput">Tên Đăng Nhập</label>
											</div>
											<div class="form-floating mb-3">
												<input type="text" name="password" class="form-control"
													id="floatingPassword" placeholder="Password"> <label
													for="floatingPassword">Old Password</label>
											</div>
											<div class="form-floating mb-3">
												<input type="text" name="newpassword" class="form-control"
													id="floatingPassword" placeholder="Password"> <label
													for="floatingPassword">New Password</label>
											</div>
											<div class="form-floating mb-3">
												<input type="text" name="confirmpassword"
													class="form-control" id="floatingPassword"
													placeholder="Password"> <label
													for="floatingPassword">Confirm New Password</label>
											</div>
										

											<div class="d-grid">
												<button
													class="btn btn-lg btn-primary btn-login text-uppercase fw-bold mb-2"
													type="submit">Confirm</button>

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