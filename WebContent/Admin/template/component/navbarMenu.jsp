<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div class="navbar-menu-wrapper d-flex align-items-top">
	<ul class="navbar-nav">
		<li class="nav-item font-weight-semibold d-none d-lg-block ms-0" >
			<h1 class="welcome-text text-danger">
				Chào mừng trở lại, <span class="text-light fw-bold">${userLogin.getFullname() }</span>
			</h1>
			<h3 class="welcome-sub-text text-danger font-weight-bolder">Trang quản lí</h3>
		</li>
	</ul>
	<ul class="navbar-nav ms-auto">
		<li class="nav-item dropdown d-none d-lg-block"><a
			class="nav-link dropdown-bordered dropdown-toggle dropdown-toggle-split"
			id="messageDropdown" href="#" data-bs-toggle="dropdown"
			aria-expanded="false"> Chọn danh mục </a>
			<div
				class="dropdown-menu dropdown-menu-right navbar-dropdown preview-list pb-0"
				aria-labelledby="messageDropdown">
				<a class="dropdown-item py-3">
					<p class="mb-0 font-weight-medium float-left">Chọn danh mục</p>
				</a>
				<div class="dropdown-divider"></div>
				<a class="dropdown-item preview-item">
					<div class="preview-item-content flex-grow py-2">
						<p class="preview-subject ellipsis font-weight-medium text-dark">Bootstrap
							Bundle</p>
						<p class="fw-light small-text mb-0">This is a Bundle featuring
							16 unique dashboards</p>
					</div>
				</a> <a class="dropdown-item preview-item">
					<div class="preview-item-content flex-grow py-2">
						<p class="preview-subject ellipsis font-weight-medium text-dark">Angular
							Bundle</p>
						<p class="fw-light small-text mb-0">Everything you’ll ever
							need for your Angular projects</p>
					</div>
				</a> <a class="dropdown-item preview-item">
					<div class="preview-item-content flex-grow py-2">
						<p class="preview-subject ellipsis font-weight-medium text-dark">VUE
							Bundle</p>
						<p class="fw-light small-text mb-0">Bundle of 6 Premium Vue
							Admin Dashboard</p>
					</div>
				</a> <a class="dropdown-item preview-item">
					<div class="preview-item-content flex-grow py-2">
						<p class="preview-subject ellipsis font-weight-medium text-dark">React
							Bundle</p>
						<p class="fw-light small-text mb-0">Bundle of 8 Premium React
							Admin Dashboard</p>
					</div>
				</a>
			</div></li>
		<li class="nav-item d-none d-lg-block">
			<div id="datepicker-popup"
				class="input-group date datepicker navbar-date-picker">
				<span class="input-group-addon input-group-prepend border-right">
					<span class="icon-calendar input-group-text calendar-icon"></span>
				</span> <input type="text" class="form-control">
			</div>
		</li>
		<li class="nav-item">
			<form class="search-form" action="#">
				<i class="icon-search"></i> <input type="search"
					class="form-control" placeholder="Search Here" title="Search here">
			</form>
		</li>
		<li class="nav-item dropdown"><a class="nav-link count-indicator text-danger"
			id="notificationDropdown" href="#" data-bs-toggle="dropdown"> <i
				class="icon-mail icon-lg"></i>
		</a>
			<div
				class="dropdown-menu dropdown-menu-right navbar-dropdown preview-list pb-0"
				aria-labelledby="notificationDropdown">
				<a class="dropdown-item py-3 border-bottom">
					<p class="mb-0 font-weight-medium float-left">You have 4 new
						notifications</p> <span
					class="badge badge-pill badge-primary float-right">View all</span>
				</a> <a class="dropdown-item preview-item py-3">
					<div class="preview-thumbnail">
						<i class="mdi mdi-alert m-auto text-primary"></i>
					</div>
					<div class="preview-item-content">
						<h6 class="preview-subject fw-normal text-dark mb-1">Application
							Error</h6>
						<p class="fw-light small-text mb-0">Just now</p>
					</div>
				</a> <a class="dropdown-item preview-item py-3">
					<div class="preview-thumbnail">
						<i class="mdi mdi-settings m-auto text-primary"></i>
					</div>
					<div class="preview-item-content">
						<h6 class="preview-subject fw-normal text-dark mb-1">Settings</h6>
						<p class="fw-light small-text mb-0">Private message</p>
					</div>
				</a> <a class="dropdown-item preview-item py-3">
					<div class="preview-thumbnail">
						<i class="mdi mdi-airballoon m-auto text-primary"></i>
					</div>
					<div class="preview-item-content">
						<h6 class="preview-subject fw-normal text-dark mb-1">New user
							registration</h6>
						<p class="fw-light small-text mb-0">2 days ago</p>
					</div>
				</a>
			</div></li>
		<li class="nav-item dropdown"><a class="nav-link count-indicator"
			id="countDropdown" href="#" data-bs-toggle="dropdown"
			aria-expanded="false"> <i class="icon-bell"></i> <span
				class="count"></span>
		</a>
			<div
				class="dropdown-menu dropdown-menu-right navbar-dropdown preview-list pb-0"
				aria-labelledby="countDropdown">
				<a class="dropdown-item py-3">
					<p class="mb-0 font-weight-medium float-left">You have 7 unread
						mails</p> <span class="badge badge-pill badge-primary float-right">View
						all</span>
				</a>
				<div class="dropdown-divider"></div>
				<a class="dropdown-item preview-item">
					<div class="preview-thumbnail">
						<img src="../Admin/template/images/faces/face10.jpg" alt="image"
							class="img-sm profile-pic">
					</div>
					<div class="preview-item-content flex-grow py-2">
						<p class="preview-subject ellipsis font-weight-medium text-dark">Marian
							Garner</p>
						<p class="fw-light small-text mb-0">The meeting is cancelled</p>
					</div>
				</a> <a class="dropdown-item preview-item">
					<div class="preview-thumbnail">
						<img src="../Admin/template/images/faces/face12.jpg" alt="image"
							class="img-sm profile-pic">
					</div>
					<div class="preview-item-content flex-grow py-2">
						<p class="preview-subject ellipsis font-weight-medium text-dark">David
							Grey</p>
						<p class="fw-light small-text mb-0">The meeting is cancelled</p>
					</div>
				</a> <a class="dropdown-item preview-item">
					<div class="preview-thumbnail">
						<img src="../Admin/template/images/faces/face1.jpg" alt="image"
							class="img-sm profile-pic">
					</div>
					<div class="preview-item-content flex-grow py-2">
						<p class="preview-subject ellipsis font-weight-medium text-dark">Travis
							Jenkins</p>
						<p class="fw-light small-text mb-0">The meeting is cancelled</p>
					</div>
				</a>
			</div></li>
		<li class="nav-item dropdown d-none d-lg-block user-dropdown"><a
			class="nav-link" id="UserDropdown" href="#" data-bs-toggle="dropdown"
			aria-expanded="false"> <img class="img-xs rounded-circle"
				src="${userLogin.getAvatar() }" style="border: 2px solid red"
				alt="Profile image">
		</a>
			<div class="dropdown-menu dropdown-menu-right navbar-dropdown"
				aria-labelledby="UserDropdown">
				<div class="dropdown-header text-center">
					<img class="img-md rounded-circle" src="${userLogin.getAvatar() }"
						style="width: 60px; height: 60px; border: 2px solid red"
						alt="Profile image">
					<p class="mb-1 mt-3 font-weight-semibold">${userLogin.getFullname() }</p>
					<p class="fw-light text-muted mb-0">${userLogin.getEmail() }</p>
				</div>
				<a class="dropdown-item"><i
					class="dropdown-item-icon mdi mdi-account-outline text-primary me-2"></i>
					Hồ sơ của tôi <span class="badge badge-pill badge-danger">1</span></a> <a
					class="dropdown-item"><i
					class="dropdown-item-icon mdi mdi-message-text-outline text-primary me-2"></i>
					Tin nhắn</a> <a class="dropdown-item"><i
					class="dropdown-item-icon mdi mdi-calendar-check-outline text-primary me-2"></i>
					Hoạt động</a> <a class="dropdown-item"><i
					class="dropdown-item-icon mdi mdi-help-circle-outline text-primary me-2"></i>
					FAQ</a> <a class="dropdown-item" href="../signout"><i
					class="dropdown-item-icon mdi mdi-power text-primary me-2"></i>Đăng xuất</a>
			</div></li>
	</ul>
	<button
		class="navbar-toggler navbar-toggler-right d-lg-none align-self-center"
		type="button" data-bs-toggle="offcanvas">
		<span class="mdi mdi-menu"></span>
	</button>
</div>