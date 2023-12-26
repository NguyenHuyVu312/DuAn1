<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt"%>
<title>Insert title here</title>
</head>
<body>
	<c:url var="layout" value="/views"></c:url>
	<article class="mt-5">

		<div class="row">
			<c:forEach var="item" items="${videos}">
				<div class="col-4  mt-4 text-center">
					<a href="${layout}/chitietvd">
						<div class="card bg-dark h-100 ">
							<div class="card-body ">
								<img src="/Ps20704__nguyenhuyvu_asm/images/phim/${item.poster}"
									class="card-img-top p-0  " style="width: 17rem; height: 13rem;"
									alt="...">
								<h1 class="tieude">${item.title}</h1>
							</div>
							<div class="card-footer ">
								<div class=" col-12 text-center">
									<button class="btn btn-outline-primary" type="button">
										Like</button>
									<button class="btn btn-outline-primary" type="button">
										Share</button>
								</div>
							</div>
					</a>
				</div>
					
		</div>
	</c:forEach>
		<!-- <div class="col-3 ">

				<div class="card  bg-dark ">
					<div class="card-body text-center">
						<img src="/Ps20704__nguyenhuyvu_asm/images/phim/ngu-yeu.jpg"
							class="card-img-top p-0 " style="width: 17rem; height: 13rem;"
							alt="...">
						<h1 class="tieude">Ngư Yêu</h1>
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
			<div class="col-3 ">
				<div class="card  bg-dark">
					<div class="card-body">
						<img src="/Ps20704__nguyenhuyvu_asm/images/phim/onepice.jpg"
							class="card-img-top p-0 " style="width: 17rem; height: 10rem;"
							alt="...">
						<h1 class="tieude">One Piece Film: Red</h1>
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
			<div class="col-3 ">
				<div class="card  bg-dark">
					<div class="card-body">
						<img src="/Ps20704__nguyenhuyvu_asm/images/phim/move3.jpg"
							class="card-img-top p-0" style="width: 17rem; height: 10rem;"
							alt="...">
						<h1 class="tieude">Nhất Niệm Vĩnh Hằng</h1>
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
			</div> -->
		</div>
		<!-- 	<div class="row mt-4">
			<div class="col-3 ">
				<div class="card  bg-dark">
					<div class="card-body">
						<img src="/Ps20704__nguyenhuyvu_asm/images/phim/move1.jpg"
							class="card-img-top p-0 " style="width: 17rem; height: 13rem"
							alt="...">
						<h1 class="tieude">KungFu Panda: Hiệp Sĩ Rồng</h1>
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
			<div class="col-3 ">
				<div class="card  bg-dark">
					<div class="card-body">
						<img src="/Ps20704__nguyenhuyvu_asm/images/phim/move2.jpg"
							class="card-img-top p-0 " style="width: 17rem; height: 13rem;"
							alt="...">
						<h1 class="tieude">Đại Mộng Tây Du</h1>
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
			<div class="col-3 ">

				<div class="card  bg-dark">
					<div class="card-body ">
						<img src="/Ps20704__nguyenhuyvu_asm/images/phim/move4.jpg"
							class="card-img-top p-0  " style="width: 17rem; height: 16rem;"
							alt="...">
						<h1 class="tieude">Tiểu Long Nữ</h1>
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

			<div class="col-3 ">

				<div class="card  bg-dark" style="height: 25rem;">
					<div class="card-body">
						<img src="/Ps20704__nguyenhuyvu_asm/images/phim/move5.jpg"
							class="card-img-top p-0 " style="width: 17rem;" alt="...">
						<h1 class="tieude">Lãng Tử Hàng Ma</h1>
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
		</div> -->
		<div class="d-grid gap-2 d-md-flex justify-content-center mt-4 mb-3 ">
			<button class="btn btn-outline-primary" type="button"
				>
				<i class="bi bi-chevron-bar-left"></i>
			</button>
			<button class="btn btn-outline-primary" type="button"
				ng-click="prev()">
				<i class="bi bi-chevron-left"></i>
			</button>
			<button class="btn btn-outline-primary" type="button"
				ng-click="next()">
				<i class="bi bi-chevron-right"></i>
			</button>
			<button class="btn btn-outline-primary" type="button"
				ng-click="last()">
				<i class="bi bi-chevron-bar-right"></i>
			</button>
		</div>

	</article>
</body>
</html>