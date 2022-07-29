<%@page contentType="text/html" pageEncoding="UTF-8"%>
<nav class="sidebar sidebar-offcanvas" id="sidebar">
	<ul class="nav">
		<li class="nav-item"><a class="nav-link text-danger" href="home"> <i
				class="mdi mdi-grid-large menu-icon"></i> <span class="menu-title">Dashboard</span>
		</a></li>

		<li class="nav-item nav-category">Quản lí hệ thống</li>
		<li class="nav-item"><a class="nav-link"
			data-bs-toggle="collapse" href="#form-elements" aria-expanded="false"
			aria-controls="form-elements"> <i
				class="menu-icon mdi mdi-shield-account"></i> <span
				class="menu-title">Quản lí người dùng</span> <i class="menu-arrow"></i>
		</a>
			<div class="collapse" id="form-elements">
				<ul class="nav flex-column sub-menu">
					<li class="nav-item"><a class="nav-link" href="user">Danh sách người dùng</a></li>
				</ul>
			</div></li>
		<li class="nav-item"><a class="nav-link"
			data-bs-toggle="collapse" href="#charts" aria-expanded="false"
			aria-controls="charts"> <i class="menu-icon mdi mdi-store"></i> <span
				class="menu-title">Quản lí sản phẩm</span> <i class="menu-arrow"></i>
		</a>
			<div class="collapse" id="charts">
				<ul class="nav flex-column sub-menu">
					<li class="nav-item"><a class="nav-link" href="product">Danh sách sản phẩm</a></li>
					<li class="nav-item"><a class="nav-link" href="addProduct">Thêm sản phẩm</a></li>
				</ul>
			</div></li>
		<li class="nav-item"><a class="nav-link"
			data-bs-toggle="collapse" href="#tables" aria-expanded="false"
			aria-controls="tables"> <i class="menu-icon mdi mdi-menu-open"></i>
				<span class="menu-title">Quản lí danh mục</span> <i
				class="menu-arrow"></i>
		</a>
			<div class="collapse" id="tables">
				<ul class="nav flex-column sub-menu">
					<li class="nav-item"><a class="nav-link" href="category">Danh sách danh mục</a></li>
				</ul>
			</div></li>
		<li class="nav-item"><a class="nav-link"
			data-bs-toggle="collapse" href="#icons" aria-expanded="false"
			aria-controls="icons"> <i
				class="menu-icon mdi mdi-ticket-percent"></i> <span
				class="menu-title">Quản lí sự kiện</span> <i class="menu-arrow"></i>
		</a>
			<div class="collapse" id="icons">
				<ul class="nav flex-column sub-menu">
					<li class="nav-item"><a class="nav-link" href="event">Danh sách sự kiện</a></li>
					<li class="nav-item"><a class="nav-link" href="coupon">Danh sách mã giảm giá</a></li>
				</ul>
			</div></li>
		<li class="nav-item nav-category">Thống kê</li>
		<li class="nav-item"><a class="nav-link"
			data-bs-toggle="collapse" href="#ui-basic" aria-expanded="false"
			aria-controls="ui-basic"> <i class="menu-icon mdi mdi-autorenew"></i>
				<span class="menu-title">Sản phẩm</span> <i class="menu-arrow"></i>
		</a>
			<div class="collapse" id="ui-basic">
				<ul class="nav flex-column sub-menu">
					<li class="nav-item"><a class="nav-link" href="updateQtt">Thêm số lượng sản phẩm</a></li>
					<li class="nav-item"><a class="nav-link" href="stcalProduct">Thống kê sản phẩm</a></li>
					<li class="nav-item"><a class="nav-link" href="order">Xác nhận đơn hàng</a></li>
				</ul>
			</div></li>
		<li class="nav-item"><a class="nav-link"
			data-bs-toggle="collapse" href="#ui-basic2" aria-expanded="false"
			aria-controls="ui-basic"> <i class="menu-icon mdi mdi-autorenew"></i>
				<span class="menu-title">Người dùng</span> <i class="menu-arrow"></i>
		</a>
			<div class="collapse" id="ui-basic2">
				<ul class="nav flex-column sub-menu">
					<li class="nav-item"><a class="nav-link" href="stcalUser">Thống kê người dùng</a></li>
					<li class="nav-item"><a class="nav-link" href="commentUser">Bình luận</a></li>
				</ul>

			</div></li>
			
		<li class="nav-item"><a class="nav-link"
			data-bs-toggle="collapse" href="#ui-basic3" aria-expanded="false"
			aria-controls="ui-basic"> <i class="menu-icon mdi mdi-autorenew"></i>
				<span class="menu-title">Doanh thu</span> <i class="menu-arrow"></i>
		</a>
			<div class="collapse" id="ui-basic3">
				<ul class="nav flex-column sub-menu">
					<li class="nav-item"><a class="nav-link" href="stcalRevenue">Tổng doanh thu theo ngày</a></li>
					<li class="nav-item"><a class="nav-link" href="stcalList">Doanh thu sản phẩm</a></li>
					<li class="nav-item"><a class="nav-link" href="stcalMonthly">Doanh thu hàng tháng</a></li>
				</ul>

			</div></li>
		<li class="nav-item nav-category">Trợ giúp</li>
		<li class="nav-item"><a class="nav-link"
			href="http://bootstrapdash.com/demo/star-admin2-free/docs/documentation.html">
				<i class="menu-icon mdi mdi-file-document"></i> <span
				class="menu-title">Tài liệu</span>
		</a></li>
	</ul>
</nav>