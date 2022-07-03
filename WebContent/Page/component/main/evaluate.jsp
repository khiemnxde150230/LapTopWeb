<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="php"%>
<div class="cart_main">
	<div class="cart_main_header">
		<div class="cart_main_header-left">
			<a href="#"> <img src="Page/img/logo.png"
				style="width: 320px; height: 80px" alt=" alo">
			</a>
			<h3 class="cart_main_header_left_title text-success">Đánh giá
				đơn hàng</h3>
		</div>
	</div>

	<div class="cart_main_wrapper">
		<div class="cart_main_wrapper_list_order">
			<a href="./history" class="col-md-3 btn btn-danger mt-4">Trở lại</a>	
			<h3 class="cart_list_order_title">Mã đơn hàng: ${order.getId() }</h3>
			<h4 class="cart_list_order_title">Ngày đặt hàng:
				${order.getTimeOrderString() }</h4>
			<div
				class="cart_list_order_element_ne row text-center d-flex align-items-center">
				<p class="cart_list_order_element_1 col-md-2">Ảnh</p>
				<p class="cart_list_order_element_title col-md-4">Tên sản phẩm</p>
				<p class="cart_list_order_element_single_price col-md-2">Giá</p>
				<p class="cart_list_order_element_number col-md-2">Số lượng</p>
				<p class="cart_list_order_element_total_price col-md-2">Tính</p>
			</div>

			<php:forEach items="${orderSingles}" var="orderSingle">
				<div
					class="cart_list_order_element row text-center align-items-center">
					<div class="col-md-2 text-center">
						<img style="width: 50%"
							src="${orderSingle.getProductById().getFirstImage() }" alt="">
					</div>
					<a href="./product_detail?id=${orderSingle.getProductById().getId() }" class="cart_list_order_element_title col-md-4">${orderSingle.getProductById().getTitle() }</a>
					<p class="cart_list_order_element_single_price col-md-2">
						${orderSingle.getProductById().getFormatPriceStandard() }đ</p>
					<p class="cart_list_order_element_number col-md-2">${orderSingle.getNumber() }</p>
					<p class="cart_list_order_element_total_price col-md-2">${orderSingle.getFormatPrice()}
						đ</p>
				</div>
				<php:set var="count" value="${0 }" scope="session" />
					<php:forEach items="${commentOrders }" var="comment">
						<php:if
							test="${comment.getProduct() == orderSingle.getProductById().getId() }">
							<php:set var="count" value="${1 }" scope="session" />
								<form action="evaluate" method="post">
									<div
										class="col-md-12 m-4 row align-items-center justify-content-between">
										<input type="hidden" name="productId" 
											value="${comment.getProduct()}" /> <input type="hidden"
											name="orderId" value="${order.getId()}" />
										<div class="form-group col-md-4">
											<label>Số sao đánh giá</label> <input name="rating" disabled
												class="form-control" type="number" min="1" max="5"
												value="${comment.getRating() }" />
										</div>

										<div class="form-group col-md-4">
											<label>Đánh giá của bạn</label>
											<textarea class="form-control comment" disabled
												placeholder="Enter your comment here" name="comment">${comment.getComment() }</textarea>
										</div>
										<div class="col-md-4">
											<button class="btn btn-danger col-md-6" disabled>Đánh
												giá không thể sửa</button>
										</div>
									</div>
								</form>
						</php:if>
					</php:forEach>
				<php:if test="${count == 0 }">

					<form action="evaluate" method="post">
						<div
							class="col-md-12 m-4 row align-items-center justify-content-between">
							<input type="hidden" name="productId"
								value="${orderSingle.getProductById().getId() }" /> <input
								type="hidden" name="orderId" value="${order.getId()}" />
							<div class="form-group col-md-4">
								<label>Số sao( mặc định là 5)</label> <input name="rating"
									class="form-control" type="number" min="1" max="5" value="5" />
							</div>

							<div class="form-group col-md-4">
								<label>Nhập đánh giá của bạn </label>
								<textarea class="form-control comment"
									placeholder="Enter your comment here" name="comment"></textarea>
							</div>
							<div class="col-md-4">
								<button class="btn btn-danger col-md-6">Đánh giá</button>
							</div>
						</div>
					</form>
				</php:if>
			</php:forEach>


			<div class="d-flex text-center mt-4">
				<div class="col-md-2"></div>
				<p class="col-md-4 text-right text-danger">Phone number:
					${order.getPhone() }</p>
				<div class="col-md-2">Vận chuyển:</div>
				<div class="col-md-2">${order.getTransportName() }</div>
				<div class="col-md-2 btn btn-primary">${order.getTransportFee() }đ</div>
			</div>

			<php:if test="${order.getDiscount() != 0 }">
				<div class="d-flex text-center">
					<a href="./history" class="col-md-6 btn btn-warning">Trở lại</a>
					<div class="col-md-2"></div>
					<div class="col-md-2">Tổng:</div>
					<div class="col-md-2 btn btn-danger">
						<del>${order.getFormatTotalAfterDiscount() }đ</del>
					</div>
				</div>
			</php:if>
			<div
				class="cart_list_order_status row justify-content-end text-center ">
				<div class="cart_list_order_status_price" style="width: 15%">
					${order.getFormatTotal() }₫</div>
			</div>

		</div>
	</div>
</div>