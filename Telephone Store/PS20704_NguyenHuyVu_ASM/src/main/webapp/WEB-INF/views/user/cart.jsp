<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>


<meta charset="UTF-8">
<title>Cart</title>

</head>
<body>

	<div class="container ">


		<div class="row mt-5 ">


			<article class="col-12  ">
				<section class="h-100 h-custom">
					<div class="container py-5 h-100">
						<div
							class="row d-flex justify-content-center align-items-center h-100">
							<div class="col-12">
								<div class="card card-registration card-registration-2"
									style="border-radius: 15px;">
									<div class="card-body p-0">
										<div class="row g-0">
											<div class="col-lg-8">
												<div class="p-5">
													<div
														class="d-flex justify-content-between align-items-center mb-5">
														<h1 class="fw-bold mb-0 text-black">Cart</h1>


													</div>
													<hr class="my-4">
													<c:forEach var="item" items="${cart.items}">
														<form action="/home/cart/update" method="post">

															<input type="hidden" name="id" value="${item.id}">
															<div
																class="row mb-4 d-flex justify-content-between align-items-center">
																<div class="col-md-2 col-lg-2 col-xl-2">
																	<img src="/images/sanpham/${item.image }"
																		class="img-fluid rounded-3" alt="Cotton T-shirt">
																</div>
																<div class="col-md-3 col-lg-3 col-xl-3">

																	<h6 class="text-black mb-0">${item.name }</h6>
																</div>
																<div class="col-md-3 col-lg-3 col-xl-2 d-flex ">

																	<div class="pt-4 row">
																		<a class='btn btn-warning px-2 text-light'
																			style="width: 38px;" href="/home/cart/sub/${item.id}">
																			- </a> <input name="qty" value="${item.qty}" min="0"
																			onblur="this.form.submit()"
																			class="text-center text-warning"
																			style="width: 50px; height: 30px; font-size: 18px; font-weight: bolder; border: none">
																		<a class='btn btn-warning px-2  text-light'
																			style="width: 38px;" href="/home/cart/add/${item.id}">+</a>
																	</div>
																</div>
																<div class="col-md-3 col-lg-2 col-xl-2 offset-lg-1">
																	<h6 class="mb-0">
																		<fmt:formatNumber value="${item.price * item.qty}"
																			pattern="###,###,### đ" />
																	</h6>
																</div>
																<div class="col-md-1 col-lg-1 col-xl-1 text-end">
																	<a href="/home/cart/remove/${item.id}"
																		class="text-muted"><i class="fas fa-times"></i></a>
																</div>
															</div>
														</form>
														<hr class="my-4">
													</c:forEach>




													<div class="pt-5">
														<h6 class="mb-0">
															<a href="/" class="text-body"><i
																class="fas fa-long-arrow-alt-left me-2"></i>Back to shop</a>
														</h6>
													</div>
												</div>
											</div>
											<div class="col-lg-4 bg-grey">
												<div class="p-5 ">

													<h3 class="fw-bold mb-5 mt-2 pt-1 text-center">Hóa đơn</h3>
													<hr class="">
													<div class=" mb-5 mt-2 pt-1 h5">Tên người mua: ${isLogin.fullname}</div>
													<div class="mb-5 mt-2 pt-1 h5">Số lượng đã mua:${cart.soluong}</div>
													

														<h5 class="mb-5 mt-2 pt-1">
															Tổng tiền :
															<fmt:formatNumber value="${cart.total }"
																pattern="###,###,### đ" />
														</h5>
												

													<div class="proceed-checkout">

														<c:if test="${empty isLogin}">
															<a href="/home/login"
																class="btn btn-dark btn-block btn-lg ">PROCEED TO
																CHECK OUT</a>
														</c:if>
														<c:if test="${ !empty isLogin}">
															<a href="/home/checkout"
																class="btn btn-dark btn-block btn-lg ">PROCEED TO
																CHECK OUT</a>
														</c:if>
													</div>
													<!-- 	<button type="button" class="btn btn-dark btn-block btn-lg "
														data-mdb-ripple-color="dark">Thanh toán</button> -->

												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</section>
			</article>


		</div>

	</div>



</body>
</html>