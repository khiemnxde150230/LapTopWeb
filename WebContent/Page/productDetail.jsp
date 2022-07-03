<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="php"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet"
	href="https://unpkg.com/flickity@2/dist/flickity.min.css">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta2/css/all.min.css"
	integrity="sha512-YWzhKL2whUzgiheMoBFwW8CKV4qpHQAEuvilg9FAn5VJUDwKZZxkJNuGM4XkWuk94WCrrwslk8yWNGmY1EduTA=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<link rel="stylesheet" href="Page/css/web.css" type="text/css"
	media="screen">
<link rel="stylesheet" href="Page/css/cartMainCss.css" type="text/css"
	media="screen">
<link rel="stylesheet"
	href="//use.fontawesome.com/releases/v5.0.7/css/all.css">
<link
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=Montserrat:400,500,700"
	rel="stylesheet">
<link type="text/css" rel="stylesheet" href="Page/css/slick.css" />
<link type="text/css" rel="stylesheet" href="Page/css/slick-theme.css" />
<link type="text/css" rel="stylesheet"
	href="Page/css/nouislider.min.css" />
<link rel="stylesheet" href="Page/css/font-awesome.min.css">
<title>Flap Shop</title>

<title>Document</title>
</head>
<body>
	<!-- Header -->
	<%@include file="web/header.jsp"%>

	<div class="view-pro">
		<div class="container">
			<div class="crumb">
				<nav aria-label="breadcrumb">
					<ol class="breadcrumb">
						<li class="breadcrumb-item"><a href="home">Trang chủ</a></li>
						<li class="breadcrumb-item active" aria-current="page">${productDetail.getCategoryName() }</li>
						<li class="breadcrumb-item active" aria-current="page">${productDetail.getTitle() }</li>
					</ol>
				</nav>
			</div>

			<div class="row">
				<div class="col-lg-6 justify-content-center pl-5 ml-5">
					<div class="view-img justify-content-center pl-5 ml-5">

						<div class="view-img__list">
							<php:forEach items="${listImages }" var="list">
								<div class="view-img__list-item act">
									<a href="#" class="view-img__link" onclick="return false">
										<img id="img-desc1" src="${list.getImage() }" alt="">
									</a>
								</div>
							</php:forEach>
						</div>
						<div class="view-img__pro-main justify-content-center">
							<img src="${productDetail.getFirstImage() }" alt=""
								class="img-main ml-5">
							<div class="img-cover"></div>
						</div>


					</div>
				</div>
				<div class="col-lg-6">
					<div class="view-info">
						<h4 class="view-info__title text-red">${productDetail.getTitle() }</h4>
						<div class="view-rate">
							<div class="rating-stars">
								<i class="star--gold fas fa-star"></i> <i
									class="star--gold fas fa-star"></i> <i
									class="star--gold fas fa-star"></i> <i
									class="star--gold fas fa-star"></i> <i
									class="star--gold  fas fa-star"></i>
							</div>
							<div class="text-ratings">
								<p>
									<span>${productDetail.getTrueRating() }</span> sao - <span>${productDetail.getNumberPersonRating()  }</span>
									Đánh giá
								</p>
							</div>
						</div>
						
						<div class="view-price">
							<div class="view-price__sale">
								<span class="curr-price">${productDetail.getFormatPriceStandard() }đ</span>
								<php:if test="${productDetail.getDiscount() != 0 }">
									<span class="old-price">${productDetail.getFormatPriceDefault() }đ</span>
									<span class="percent-sale">-
										${productDetail.getDiscount() }%</span>
								</php:if>


							</div>
							<!--  
								<div class="view-price__note">
									<p>
										Giá thị trường:
										${productDetail.getFormatPrice(productDetail.getPriceDefault()*1.1 )}
										- Tiết
										kiệm:${productDetail.getFormatPrice(productDetail.getPriceDefault() * 0.1 ) }
										(<span>- 10%</span>)
									</p>
								</div>
								-->
						</div>
						<div class="text-red font-weight-bold">
							Còn lại: <span>${productDetail.getQtt() }</span>
						</div>
						<div class="view-info__note">
							<p class="view-info__text">${productDetail.getDescription()	 }</p>
						</div>
					</div>
					<div class="option-view">
						<!--  
						<div class="choose-color">
							<span>Chá»n mÃ u : </span>
							<div class="option-color">
								<button class="option-color__pro option-color-selected">MÃ u
									há»ng</button>
								<button class="option-color__pro">MÃ u xÃ¡m</button>
							</div>
						</div>
						-->
						<form action="addProductToCart"
							class="text-cener row d-flex justify-content-between align-items-center"
							method="post" id="formAddToCart">
							<input type="hidden" name="productId"
								value="${productDetail.getId() }">
							<div class="choose-quantity col-md-6">
								<p class="col-md-4 m-0 text-red font-weight-bold">Số lượng :</p>
								<div class="option-quantity col-md-8">
									<div id=""
										class="btn btn-danger text-light btn-none-border col-md-2"
										onclick="sub(${productDetail.getId() },0)">-</div>
									<input type="text" class="input_number text-center"
										style="flex: 1" id="${productDetail.getId() }" name="quantity"
										min="1" max="20" value="1">
									<div id=""
										class="btn btn-danger text-light btn-none-border col-md-2"
										onclick="add(${productDetail.getId() },0)">+</div>
								</div>
							</div>
							<div class="text-center add-to-cart-btn col-md-4"
								style="line-height: 36px"
								onclick="checkNumber(${productDetail.getQtt()})">
								<i class="fa fa-shopping-cart"></i> add to cart
							</div>
							<!-- 
							<div class="col-md-6">
								<button
									class="option-add__cart box shadow-lg btn btn-danger mt-4"
									style="height: 50px; width: 100%; border-radius: 10px">
									Thêm vào giỏ hàng</span>
								</button>

							</div>
							
							 -->
						</form>
						<p class="text-red font-weight-bold" id="message"></p>
					</div>
				</div>
				<div class="col-lg-2"></div>
			</div>
		</div>
		<div class="container border border-danger"
			style="margin-top: 100px; padding: 30px 30px">
			<h2 class="text-red font-weight-bold">Đánh giá sản phẩm</h2>

			
			<div
				class="rating-header d-flex justify-content-center align-items-center">
				<h4 class="text-red font-weight-bold mr-5 mb-0"
					style="margin-right: 4rem">${productDetail.getTrueRating() } trên
					5.0</h4>
				<div class="row d-flex" style="flex: 1">
					<div class="col-md-2 m-3 btn btn-danger">Tất cả</div>
					<div class="col-md-1 m-3 btn btn-success">5 sao</div>
					<div class="col-md-1 m-3 btn btn-success">4 sao</div>
					<div class="col-md-1 m-3 btn btn-success">3 sao</div>
					<div class="col-md-1 m-3 btn btn-success">2 sao</div>
					<div class="col-md-1 m-3 btn btn-success">1 sao</div>
				</div>
			</div>
			
			<php:if test="${comments.size() == 0 }">
				<h5 class="text-danger">Chưa có đánh giá nào</h5>
			</php:if>
			
			<div
				class="rating-content d-flex justify-content-center align-items-center">
				<div class="comment-content-wrapper">
					<php:forEach items="${comments }" var="comment">
						<div class="comment-content-element border border-success p-2 mt-2 mb-2">
							<div class="comment-content-user d-flex">
								<img src="${comment.getUserObject().getAvatar() }" class="mr-4" />
								<div class="comment-content-user-info-buy ">
									<h6 class="text-red">${comment.getUserObject().getFullname() }
										<span> (${comment.getRating()}) </span>
									</h6>
									<p>Thời gian đặt hàng:
										${comment.getOrderTotal().getTimeOrderString() }</p>
								</div>
							</div>
							<img src="${comment.getImage() }" />
							<p>=> ${comment.getComment() }</p>
						</div>
					</php:forEach>
				</div>
			</div>


		</div>
	</div>
	<%@include file="web/footer.jsp"%>
	<script type="text/javascript">
		const checkNumber = (maxNumber) => {
			console.log("Text");	
			const maxValue = $("input[name=quantity]").val();
			let message = "";
			console.log(maxValue);
			if(isNaN(maxValue)){
				message = "Quantity must be number";
				$("#message").html(message);
			}else {
				if(maxValue > maxNumber){
					message = "Quantity out of range !";
					$("#message").html(message);
				}else{ 
					$("form[id=formAddToCart]").submit();
				}
			}
			
		}
	</script>
</body>
<script type="text/javascript" src="./js/jquery.min.js"></script>

<script
	src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"
	integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js"
	integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13"
	crossorigin="anonymous"></script>
<script src="Page/js/web.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

</html>