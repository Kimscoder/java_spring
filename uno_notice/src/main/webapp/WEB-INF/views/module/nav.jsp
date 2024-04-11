<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<style>
* {
	margin: 0px;
	padding: 0px;
}

.icon {
	display: inline-block;
	width: 40px;
	height: 40px;
	background-image: url('uno.png');
	background-size: cover;
	text-indent: -9999px;
}

.container {
	display: flex;
	flex-direction: row;
	flex-wrap: wrap;
	withd: 100%;
	justify-content: space-around;
	align-item: stretch;
	height: 100vh;
}

.logo {
	width: 350px;
	height: 70px;
	float: left;
}

.navbar {
	background-color: #FBF6EF !important;
	box-shadow: 0px 2px 4px rgba(0, 0, 0, 0.3);
	/* Adjust values as needed */
}

.wrapper {
	margin: 100px; /* Adjust the value as needed */
	box-shadow: 0px 2px 4px rgba(0, 0, 0, 0.0); /* Shadow effect */
}

.navbar-nav {
	text-align: center;
	justify-content: space-between;
}

.navbar-nav .nav-link {
	color: #333; /* Change text color to black */
	font-weight: 500;
}

.custom-shadow {
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
}

.note-codable {
	height: 400px; /* 높이를 조절하려는 값으로 변경하세요 */
	overflow-y: auto; /* 내용이 넘칠 경우 스크롤바 표시 */
}

.mailbox-controls.with-border.text-center {
	height: 400px; /* 원하는 높이로 조절 */
	overflow-y: auto; /* 내용이 넘칠 경우 스크롤바 표시 */
	width: 100%; /* 너비를 100%로 설정하여 반응형으로 만듭니다. */
	max-width: 1075px; /* 최대 너비를 1075px로 설정합니다. */
	margin-left: auto; /* 좌우 여백을 자동 조절하여 가운데 정렬합니다. */
	margin-right: auto;
}

#header {
	margin-top: 20px;
}

.card-read {
	height: 700px; /* 원하는 높이로 조절 */
	/* 내용이 넘칠 경우 스크롤바 표시 */
	width: 1075px; /* 너비를 100%로 설정하여 반응형으로 만듭니다. */
	max-width: 1075px; /* 최대 너비를 1075px로 설정합니다. */
	margin-left: auto; /* 좌우 여백을 자동 조절하여 가운데 정렬합니다. */
	margin-right: auto;
}

.mailbox-read-message {
	text-align: center;
	margin-top: 20px;
}

.pagination .page-link {
	background-color: #FBF6EF; /* 페이지 링크의 배경 색상 변경 */
	color: #333; /* 페이지 링크의 텍스트 색상 변경 */
}

.pagination .page-item.active .page-link {
	background-color: #333; /* 활성화된 페이지 링크의 배경 색상 변경 */
	color: #FBF6EF; /* 활성화된 페이지 링크의 텍스트 색상 변경 */
}

.pagination .page-item.disabled .page-link {
	background-color: #EEE; /* 비활성화된 페이지 링크의 배경 색상 변경 */
	color: #999; /* 비활성화된 페이지 링크의 텍스트 색상 변경 */
}

.c_content {
	display: flex;
	flex-direction: row;
	flex-wrap: wrap;
	withd: 100%;
	justify-content: space-around;
	align-item: stretch;
	height: 100vh;
}
</style>

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">

</head>

<body>
	<nav class="navbar navbar-expand-sm bg-light navbar-light">
		<!-- Left navbar links -->

		<div id="header">
			<div class="logo">
				<a href="#"><img
					src="<%=request.getContextPath()%>/resources/statics/icon.svg"></a>
				<a href="#"><img
					src="<%=request.getContextPath()%>/resources/statics/uno.png"></a>

			</div>
		</div>



		<ul class="navbar-nav">

			<li class="nav-item d-none d-sm-inline-block"><a
				href="../../index3.html" class="nav-link">홈</a></li>
			<li class="nav-item d-none d-sm-inline-block"><a
				href="/notice/list" class="nav-link">공지사항</a></li>
			<li class="nav-item d-none d-sm-inline-block"><a href="#"
				class="nav-link">문의</a></li>
			<li class="nav-item d-none d-sm-inline-block"><a href="#"
				class="nav-link">직거래판매</a></li>

			<li class="nav-item d-none d-sm-inline-block"><a href="#"
				class="nav-link">재고관리</a></li>

			<li class="nav-item d-none d-sm-inline-block"><a href="/control/monitor"
				class="nav-link">관제시스템</a></li>
			<li class="nav-item d-none d-sm-inline-block"><a href="#"
				class="nav-link">무인운송</a></li>
		</ul>

		<!-- Right navbar links -->


		<ul class="navbar-nav ml-auto">
			<!-- Navbar Search -->
			<li class="nav-item"><a class="nav-link"><i
					class="fas fa-user mr-1"></i> 농장주님, 환영합니다.</a></li>
			<!-- Logout link with icon -->
			<li class="nav-item"><a href="/logout" class="nav-link"> <i
					class="fas fa-sign-out-alt"></i>
			</a></li>
		</ul>




	</nav>