<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt"%>
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
	<c:url var="ad" value="/views"></c:url>
	<c:if test="${!empty message1}">
		<div class=" delete1233 text-center mb-3 text-danger fw-bolder">chuc
			mung1 ${message1}</div>
	</c:if>

	<c:if test="${!empty message}">
		<div class=" delete123 text-center mb-3 text-danger fw-bolder">chuc
			mung ${message}</div>
	</c:if>
	<div class="container">
		<form method="POST">

			<div class="col-8 col-sm-8 mx-auto">
				<div class="card">
					<div class="card-body">
						<div class="row g-2 align-items-center">
							<div class="col-2">
								<label for="id" class="col-form-label">Username</label>
							</div>
							<div class="col-9">
								<input type="text" id="id" class="form-control" name="id"
									value="${formu.id}">
							</div>
							<div class="col-2">
								<label for="password" class="col-form-label">Password</label>
							</div>
							<div class="col-9">
								<input type="password" id="password" class="form-control"
									name="password" value="${formu.password}">
							</div>
							<div class="col-2">
								<label for="fullname" class="col-form-label">Họ và tên</label>
							</div>
							<div class="col-9">
								<input type="text" id="fullname" class="form-control"
									name="fullname" value="${formu.fullname}">
							</div>
							<div class="col-2">
								<label for="email" class="col-form-label">Email</label>
							</div>
							<div class="col-9">
								<input type="text" id="email" class="form-control" name="email"
									value="${formu.email}">
							</div>
							<div class="col-2">
								<label for="role" class="col-form-label">Role</label>
							</div>
							<div class="col-9">
								<input ${formu.admin?'checked':''} type="radio" id="admin"
									name="admin" value="true">Admin <input
									${formu.admin?'':'checked'} type="radio" id="admin1"
									name="admin" value="false" class="ms-5">User
							</div>



							<div class="d-grid gap-4 d-md-flex justify-content-md-end">
								<button class="btn btn-primary me-md-2" name="reset"
									formaction="${ad}/quanlyUser">Reset</button>
								<button class="btn btn-primary me-md-2" name="update"
									formaction="${ad}/capnhatUser">Update</button>
								<button class="btn btn-primary me-md-2" name="delete"
									formaction="${ad}/xoaUser">Delete</button>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="card col-8 col-sm-8 mx-auto my-3">
				<div class="card-body p-0">
					<table class="table table-bordered table-hover">
						<thead class="text-center bg-warning">
							<tr>
								<th scope="col" class="align-middle">Username</th>
								<th scope="col" class="align-middle">Password</th>
								<th scope="col" class="align-middle">Fullname</th>
								<th scope="col" class="align-middle">Email</th>
								<th scope="col" class="align-middle">Role</th>
								<th scope="col" class="align-middle"></th>
							</tr>
						</thead>
						<c:forEach var="u" items="${listu}">
							<tr>
								<td scope="row">${u.id}</td>
								<td>${u.password}</td>
								<td>${u.fullname}</td>
								<td>${u.email}</td>
								<td>${u.admin?'Admin':'User'}</td>
								<td><a href="${ad}/editUser/${u.id}">Edit</a></td>
							</tr>
						</c:forEach>
					</table>
				</div>
				<div class="card-footer text-muted">
					<div class="row">
						<div class="col-4 col-sm-4">5 users</div>
						<div
							class="d-grid gap-4 d-md-flex justify-content-end col-8 col-sm-8">
							<button class="btn btn-primary">|<</button>
							<button class="btn btn-primary"><<</button>
							<button class="btn btn-primary">>></button>
							<button class="btn btn-primary">>|</button>
						</div>
					</div>
				</div>
			</div>
		</form>
	</div>
</body>
</html>