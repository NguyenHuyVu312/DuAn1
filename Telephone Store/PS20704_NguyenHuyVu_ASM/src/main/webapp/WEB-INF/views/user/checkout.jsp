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
	<div class="container">
		<form action="order-detail" method="post">
			<div class=" card card-registration card-registration-2 border border-primary ">
				<div class="col-5  mx-auto mt-3">
					<h4>Your Information</h4>
					<div class="row">
						<div class="col-12">
							<label for="fir">Address</label>
							 <input type="text"  class="form-control"
								id="fir" name="address">
						</div>
					</div>
					<div class="card-body border border-primary mt-5 mb-5">
						<h4>Your Order</h4>
						<div class="order-total">
							<ul class="order-table">
								<li>Product <span>Total</span></li>
								<c:forEach var="item" items="${cart.items}">
									<li class="row">
									<div class="col-6">${item.name }x${item.qty } </div>
									<div class="col-6">${item.price
											* item.qty} đ</div>
									</li>
								</c:forEach>
								<li class="row">
								<div class="col-6">Total</div>
								<div class="col-6"><fmt:formatNumber value="${cart.total }"
												pattern="###,###,### đ" /> </div>
								
								
								</li>
							</ul>

							<div class="text-center">
								<button type="submit" class="btn btn-outline-primary">Place
									Order</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</form>
	</div>

</body>
</html>