<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>



<!-- Shopping Cart Section Begin -->
<%-- <section class="checkout-section spad">
	<div class="container">
		<div class="row">
			<div class="col-lg-10">
				<div class="alert alert-success col row mx-1" role="alert">
					Order Successfully!</div>
				<div class="mx-1 mb-2">

					<table
						class="table align-middle mb-0 bg-white table-bordered border-primary">
						<thead class="bg-light">
							<tr>
								<th>Order ID:</th>
								<th>Name:</th>
								<th>Address:</th>
								<th>Email:</th>
								<th>Create Date:</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>${order.id }</td>
								<td>
									<div class="d-flex align-items-center">
										<img src="/images/user/${isLogin.photo}" alt=""
											style="width: 45px; height: 45px" class="rounded-circle" />
										<div class="ms-3">
											<p class="fw-bold mb-1">${order.account.fullname }</p>

										</div>
									</div>
								</td>
								<td>${order.address }</td>
								<td>${order.account.email }</td>
								<td>${order.createDate }</td>

							</tr>

						</tbody>
						<thead>
							<tr>
								<th>No.</th>
								<!-- <th>Image</th> -->
								<th class="p-name">Product Name</th>
								<th>Price</th>
								<th>Quantity</th>
								<th>Total</th>
							</tr>
						</thead>
						<tbody>
							<c:set var="i" value="0" />
							<c:forEach var="item" items="${items}">
								<input type="hidden" name="id" value="${item.id}">
								<tr>
									<td>${i=i+1}</td>
									<td class="cart-pic first-row">
										<img src="/forUser/img/products/${item.product.image}" alt="" width=50%></td>
									<td class="cart-title first-row">
										<h5>${item.product.name }</h5>
									</td>
									<td class="p-price first-row">$${item.price }</td>
									<td class="p-price first-row">${item.quantity }</td>
									<td class="total-price first-row">$${item.price*item.quantity}</td>

								</tr>
							</c:forEach>
						</tbody>
						<tbody>
							<tr>
								<c:set var="total" value="${0}" />
								<c:forEach var="item" items="${items }">
									<c:set var="total" value="${total+(item.price*item.quantity) }" />
								</c:forEach>
								
								<td colspan="5" class="total-price first-row text-end">Total: &nbsp &nbsp $${total }VNĐ</td>
							</tr>
						</tbody>
					</table>
				</div>
				<div></div>
				<div class="row">
					<div class="col-lg-4  mt-5">
						<div class="cart-buttons">
							
						</div>
					</div>

				</div>
			</div>
		</div>
	</div>
</section> --%>
<!-- Shopping Cart Section End -->

<section class="h-100 gradient-custom">
  <div class="container py-5 h-100">
    <div class="row d-flex justify-content-center align-items-center h-100">
      <div class="col-lg-10 col-xl-8">
        <div class="card" style="border-radius: 10px;">
          <div class="card-header px-4 py-5">
            <h5 class="text-muted mb-0">Thanks for your Order, <span style="color: #a8729a;">${order.account.fullname }</span>!</h5>
          </div>
          <div class="card-body p-4">
          <!--   <div class="d-flex justify-content-between align-items-center mb-4">
              <p class="lead fw-normal mb-0" style="color: #a8729a;">Receipt</p>
              <p class="small text-muted mb-0">Receipt Voucher : 1KAU9-84UIL</p>
            </div> -->
            <c:forEach var="item" items="${items}">
            <div class="card shadow-0 border mb-4">
              <div class="card-body">
                <div class="row">
                 
                  <div class="col-md-2 text-center d-flex justify-content-center align-items-center">
                    <p class="text-muted mb-0">${item.product.name }</p>
                  </div>
                  
                  <div class="col-md-2 text-center d-flex justify-content-center align-items-center">
                    <p class="text-muted mb-0 small">Price: ${item.price }VNĐ</p>
                  </div>
                  <div class="col-md-2 text-center d-flex justify-content-center align-items-center">
                    <p class="text-muted mb-0 small">Qty: ${item.quantity }</p>
                  </div>
                  <div class="col-md-2 text-center d-flex justify-content-center align-items-center">
                    <p class="text-muted mb-0 small">${item.price*item.quantity} VNĐ</p>
                  </div>
                </div>
                <hr class="mb-4" style="background-color: #e0e0e0; opacity: 1;">
                <div class="row d-flex align-items-center">
                  <div class="col-md-2">
                    <p class="text-muted mb-0 small">Track Order</p>
                  </div>
                  <div class="col-md-10">
                    <div class="progress" style="height: 6px; border-radius: 16px;">
                      <div class="progress-bar" role="progressbar"
                        style="width: 65%; border-radius: 16px; background-color: #a8729a;" aria-valuenow="65"
                        aria-valuemin="0" aria-valuemax="100"></div>
                    </div>
                    <div class="d-flex justify-content-around mb-1">
                      <p class="text-muted mt-1 mb-0 small ms-xl-5">Out for delivary</p>
                      <p class="text-muted mt-1 mb-0 small ms-xl-5">Delivered</p>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            </c:forEach>
       

            <div class="d-flex justify-content-between pt-2">
              <p class="fw-bold mb-0">Order Details</p>
             
            </div>

            <div class="d-flex justify-content-between pt-2">
              <p class="text-muted mb-0">Order ID : ${order.id }</p>
              
            </div>

            <div class="d-flex justify-content-between">
              <p class="text-muted mb-0">Invoice Date : ${order.createDate }</p>
              
            </div>

            
          </div>
          <div class="card-footer border-0 px-4 py-5 d-flex justify-content-between pt-2"
            style=" border-bottom-left-radius: 10px; border-bottom-right-radius: 10px;">
            <a href="/" class="btn btn-primary"><i
								class="fas fa-long-arrow-alt-left me-2"></i>Back to shop</a>
								<c:set var="total" value="${0}" />
								<c:forEach var="item" items="${items }">
									<c:set var="total" value="${total+(item.price*item.quantity) }" />
								</c:forEach>
            <h5 class="d-flex align-items-center justify-content-end text-primary text-uppercase mb-0">Total
              paid: <span class="h2 mb-0 ms-2">${total }VNĐ</span></h5>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>
