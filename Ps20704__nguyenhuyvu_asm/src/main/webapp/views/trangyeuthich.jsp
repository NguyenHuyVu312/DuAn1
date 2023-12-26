<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
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
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt"%>
<c:url var="layout" value="/views"></c:url>
<body>



	<form>
		<div class="row">
<c:forEach var="user1234" items="${list123}">
			<div class="col-4  mt-4 text-center">
				
					<div class="card bg-dark h-100 ">
						<div class="card-body ">
							<img
								src="/Ps20704__nguyenhuyvu_asm/images/phim/${user1234.poster}"
								class="card-img-top p-0  " style="width: 17rem; height: 13rem;"
								alt="...">
							<h1 class="tieude">${user1234.title}</h1>
						</div>
						<div class="card-footer ">
							<div class=" col-12 text-center">
								<button class="btn btn-outline-primary" type="button">
									Like</button>
								<button class="btn btn-outline-primary" type="button">
									Share</button>
							</div>
						</div>
					</div>
			
			</div>
				</c:forEach>
		</div>
		<%-- <div class="card">
			<div class="card-body p-0">
				<table class="table table-bordered table-hover">
					<thead class="text-center bg-primary">
						<tr>
							<th scope="col" class="align-middle">Id</th>
							<th scope="col" class="align-middle">Title</th>
							<th scope="col" class="align-middle">Views</th>
							<th scope="col" class="align-middle">Active</th>
						</tr>
					</thead>
					<c:forEach var="user1234" items="${list123}">
						<tr>
							<td>${user1234.id}</td>
							<td>${user1234.title}</td>
							<td>${user1234.views}</td>
							<td>${user1234.active}</td>
						</tr>
					</c:forEach>
				</table>
			</div>
		</div> --%>
	</form>

</body>
</html>