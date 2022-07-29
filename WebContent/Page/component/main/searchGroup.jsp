<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="php"%>
<!DOCTYPE html>
<div class="makeup-cotton">
	<div class="container">
		<div class="row">
			<div class="col-lg-3">
				<div class="pro-cotton__range">
					<input type="range" min="0" max="1000000" step="1" value="0"
						class="pro-cotton__range-ip"> <span>0đ - </span>
					<div id="pro-range__value">0đ</div>
				</div>
				<h4 class="pro-cotton__title">Danh mục sản phẩm</h4>
				<ul class="pro-menu__list">
					<php:forEach items="${categorySames }" var="categorySame">
						<li class="pro-menu__item"><a class="text-danger"
							href="category?id=${categorySame.getId() }"> <i
								class="far fa-arrow-alt-circle-right"></i>
								${categorySame.getName() }
						</a></li>
					</php:forEach>

				</ul>
				<h4 class="pro-cotton__title">SẢN PHẨM BÁN CHẠY</h4>
				<ul class="pro-selling">

					<php:forEach items="${topfiveproducts }" var="topfive">

						<li><a href="" class="pro-selling__item"> <img
								src="${topfive.getFirstImage() }" alt=""
								style="width: 70px; height: 70px;">
						</a>
							<div class="pro-selling__detail">
								<a href=""> ${topfive.getTitle() }</a> <span
									class="pro-selling__price">${topfive.getFormatPriceStandard() }₫</span>
								<del style="font-size: .9rem;">${topfive.getFormatPriceDefault() }₫</del>
								<span class="pro-selling__sale">GIẢM GIÁ</span>
							</div></li>
					</php:forEach>

				</ul>
			</div>

			<div class="col-lg-9">
				<div class="pro-cotton__sort">
					<span>Sắp xếp theo: </span>
					<div class="pro-cotton__sort--chosen">
						<select class="form-select" aria-label="Default select example">
							<option selected>Sản phẩm nổi bật</option>
							<option value="1">Bán chạy nhất</option>
							<option value="2">Tên: A-Z</option>
							<option value="3">Tên: Z-A</option>
							<option value="4">Giá: Tăng dần</option>
							<option value="5">Giá: Giảm dần</option>
							<option value="6">Mới nhất</option>
							<option value="7">Cũ nhất</option>
						</select>
					</div>
				</div>
				<h3 class="pro-cotton__theme">Kết quả tìm kiếm cho: "${key }"</h3>

				<php:if test="${listSearch.size() == 0 }">
					<h1 style="margin: 30px 0px 400px 0px" class="text-center text-danger">No product found</h1>
				</php:if>


				<div class="row">
					<php:forEach items="${listSearch }" var="product">

						<div class="col-md-4 col-xs-6">
							<div class="product_wrapper_element">
								<div class="product-img">
									<img src="${product.getFirstImage() }" alt="">
									<div class="product-label">
										<span class="sale">-${product.getDiscount() }%</span> <span
											class="new">MỚI</span>
									</div>
								</div>
								<div class="product-body">
									<p class="product-category">${category }</p>
									<h3 class="product-name">
										<a href="#">${product.getTitle() }</a>
									</h3>
									<h4 class="product-price">
										₫ ${product.getFormatPriceStandard() }
										<del class="product-old-price">$
											${product.getFormatPriceDefault() }</del>
									</h4>
									<div class="product-rating">
										<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
											class="fa fa-star"></i> <i class="fa fa-star"></i> <i
											class="fa fa-star"></i>
									</div>
									<div class="product-btns">
										<button class="add-to-wishlist">
											<i class="fa fa-heart-o"></i><span class="tooltipp">thêm vào yêu thích</span>
										</button>
										<button class="add-to-compare">
											<i class="fa fa-exchange"></i><span class="tooltipp">so sánh</span>
										</button>
										<button class="quick-view">
											<i class="fa fa-eye"></i><span class="tooltipp">xem nhanh</span>
										</button>
									</div>
								</div>
								<div class="add-to-cart">
									<button class="add-to-cart-btn">
										<i class="fa fa-shopping-cart"></i>Thêm vào giỏ hàng
									</button>
								</div>
							</div>
						</div>

						<!-- 
						
						<div class="col-lg-4">
						
							<div class="pro-cotton__item">
								<div class="pro-cotton__img">
									<a href="product_detail?id=${product.getId() }"> <img
										src="${product.getFirstImage() }" alt="">
									</a> <span class="pro-cotton__sale">-${product.getDiscount() }%</span>
								</div>
								<div class="pro-cotton__detail">
									<h6>
										<a href="product_detail?id=${product.getId() }"
											class="pro-cotton__link">${product.getTitle() }</a>
									</h6>
									<p class="pro-cotton__brand">
										<a href="" class="pro-cotton__link--brand">${product.getBrandName() }</a>
									</p>
									<div class="pro-cotton__price">
										<span class="pro-cotton__price--curr">
											${product.getFormatPriceStandard() } </span>
										<div class="pro-cotton__quantity">
											<p>${product.getFormatPriceDefault() }₫</p>
											<span class="pro-cotton__quantity--selled">Đã bán
												${product.getSold() }</span>
										</div>
									</div>
								</div>
							</div>
						</div>
						 -->

					</php:forEach>

				</div>
			</div>
		</div>
	</div>
</div>