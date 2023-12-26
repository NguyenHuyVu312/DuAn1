<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Trang chủ</title>
<body>

	<div class="container ">

		<nav class="navbar navbar-expand-lg  p-0 ">

			<div class="container-fluid  ">
				<div>
					<a href="/home/search/iphone" id="iphone"><img
						src="//cdn.tgdd.vn/Brand/1/logo-iphone-220x48.png" width="120"
						class="no-text"></a> <a href="/home/search/samsung"><img
						src="//cdn.tgdd.vn/Brand/1/samsungnew-220x48-1.png" width="120"
						class="no-text"></a> <a href="/home/search/OPPO"><img
						src="//cdn.tgdd.vn/Brand/1/OPPO42-b_5.jpg" width="120"
						class="no-text"></a> <a href="/home/search/xiaomi"><img
						src="//cdn.tgdd.vn/Brand/1/logo-xiaomi-220x48-5.png" width="120"
						class="no-text"></a> <a href="/home/search/vivo"><img
						src="//cdn.tgdd.vn/Brand/1/vivo-logo-220-220x48-3.png" width="100"
						class="no-text"></a> <a href="/home/search/realme"><img
						src="//cdn.tgdd.vn/Brand/1/Realme42-b_37.png" width="100"
						class="no-text"></a> <a href="/home/search/nokia"><img
						src="//cdn.tgdd.vn/Brand/1/Nokia42-b_21.jpg" width="100"
						class="no-text"></a>
				</div>


				<button class="navbar-toggler" type="button"
					data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
					aria-controls="navbarSupportedContent" aria-expanded="false"
					aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>
				<div class="collapse navbar-collapse" id="navbarSupportedContent">
					<ul class="navbar-nav me-auto mb-2 mb-lg-0">

					</ul>
					<form class="d-flex" action="/home/search" role="search"
						method="post">
						<input class="form-control me-2" name="keywords"
							value="${keywords}" placeholder="Keywords?" aria-label="Search">
						<button class="btn btn-outline-primary ">Search</button>
						
					</form>
					<div>
				
						<a href="/home/cart" class="btn btn-outline-dark">
						
                            <i class="bi-cart-fill me-1"></i>
                            Cart
                            <span class="badge bg-dark text-white ms-1 rounded-pill">${cart1.soluong}</span>
                       
							<!-- <ul>
							
								Giỏ Hàng
							</ul> -->
						</a>
					</div>
				</div>
			</div>
		</nav>
	
		<div id="carouselExampleInterval" class="carousel slide"
			data-bs-ride="carousel">
			<div class="carousel-inner">
				<div class="carousel-item active" data-bs-interval="2000">
					<img src="/images/qc1.jpg" class="d-block w-100" height="260px"
						alt="...">
				</div>
				<div class="carousel-item" data-bs-interval="2000">
					<img src="/images/qc2.jpg" class="d-block w-100" height="260px"
						alt="...">
				</div>
				<div class="carousel-item">
					<img src="/images/qc3.jpg" class="d-block w-100" height="260px"
						alt="...">
				</div>
			</div>
			<button class="carousel-control-prev" type="button"
				data-bs-target="#carouselExampleInterval" data-bs-slide="prev">
				<span class="carousel-control-prev-icon" aria-hidden="true"></span>
				<span class="visually-hidden">Previous</span>
			</button>
			<button class="carousel-control-next" type="button"
				data-bs-target="#carouselExampleInterval" data-bs-slide="next">
				<span class="carousel-control-next-icon" aria-hidden="true"></span>
				<span class="visually-hidden">Next</span>
			</button>
		</div>
		<div class="row mt-3 ">
			<aside class="col-2 ms-auto p-0  mt-5">
				<div class="accordion" id="accordionExample">
					<div class="accordion-item">
						<h2 class="accordion-header">
							<button class="accordion-button " type="button"
								data-bs-toggle="collapse" data-bs-target="#collapseOne"
								aria-expanded="true" aria-controls="collapseOne">
								<img
									src="https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn//content/icon-phone-96x96-2.png"
									width="40" alt="Điện thoại"> Điện thoại
							</button>
						</h2>
						<div id="collapseOne" class="accordion-collapse collapse show "
							data-bs-parent="#accordionExample">
							<div class="accordion-body p-0">
								<ul class="list-group text-center">

									<li class="list-group-item"><a href="/home/search/iphone"
										id="iphone"><img
											src="//cdn.tgdd.vn/Brand/1/logo-iphone-220x48.png"
											width="100" class="no-text"></li>
									</a>
									<a href="/home/search/samsung" id="samsung">
										<li class="list-group-item"><img
											src="//cdn.tgdd.vn/Brand/1/samsungnew-220x48-1.png"
											width="100" class="no-text"></li>
									</a>
									<a href="/home/search/oppo" id="oppo">
										<li class="list-group-item"><img
											src="//cdn.tgdd.vn/Brand/1/OPPO42-b_5.jpg" width="100"
											class="no-text"></li>
									</a>
									<a href="/home/search/" xiaomi"" id="xiaomi">
										<li class="list-group-item"><img
											src="//cdn.tgdd.vn/Brand/1/logo-xiaomi-220x48-5.png"
											width="100" class="no-text"></li>
									</a>
									<a href="/home/search/" vivo"" id="vivo">
										<li class="list-group-item"><img
											src="//cdn.tgdd.vn/Brand/1/vivo-logo-220-220x48-3.png"
											width="100" class="no-text"></li>
									</a>
									<a href="/home/search/realme" id="realme">
										<li class="list-group-item"><img
											src="//cdn.tgdd.vn/Brand/1/Realme42-b_37.png" width="100"
											class="no-text"></li>
									</a>
									<a href="/home/search/nokia" id="nokia"><li
										class="list-group-item"><img
											src="//cdn.tgdd.vn/Brand/1/Nokia42-b_21.jpg" width="100"
											class="no-text"></li></a>
								</ul>
							</div>
						</div>
					</div>

				</div>


			</aside>
			<article class="col-10">

				<div class="row row-cols-1 row-cols-md-3 g-4 mt-3 p-0 mb-5">
					<c:forEach var="item" items="${page.content}">
						<div class="col-3  mt-3 text-center mb-5">

							<div class="card h-100">
								<a href="/home/detail" class="text-decoration-none text-dark">
									<img src="/images/sanpham/${item.image}"
									class="card-img-top mt-3">
									<div class="card-body">
										<h5 class="card-title">${item.name}</h5>
										<h5 class="text-center text-primary">
											<fmt:formatNumber value="${item.price}"
												pattern="###,###,### đ" />


										</h5>
									</div>
								</a>
							</div>



							<div class="card-footer">

								<div class="d-grid gap-2 d-md-flex justify-content-md-center">

									<a href="/home/cart/add/${item.id}" style="width: 150px;"
										class="btn btn-outline-dark me-md-2"> <i
										class="bi-cart-fill me-1"></i>Mua hàng
									</a>

								</div>
							</div>
						</div>
					</c:forEach>
				</div>




				<div class="  mb-5 text-center">
					<a href="/home/search?p=0 " class="btn btn-outline-primary">First</a>
					<a href="/home/search?p=${page.number-1}"
						class="btn btn-outline-primary">Previous</a> <a
						href="/home/search?p=${page.number+1}"
						class="btn btn-outline-primary">Next</a> <a
						href="/home/search?p=${page.totalPages-1}"
						class="btn btn-outline-primary">Last</a>
				</div>
			</article>
		</div>





	</div>



</body>
</html>