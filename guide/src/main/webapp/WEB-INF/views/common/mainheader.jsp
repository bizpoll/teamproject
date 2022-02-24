<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

	<%-- header UI 시작 --%>
	<nav class="navbar navbar-expand-lg navbar-info shadow-sm" aria-label="Fifth navbar example">
		<div class="container-fluid">
			<a class="navbar-brand ml-3" href="#">
				<img src="${contextPath}/resources/image/logo.png" width="70em">
			</a>
			<button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarsExample05" aria-controls="navbarsExample05" aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			
			<div class="collapse navbar-collapse" id="navbarsExample05">
				<ul class="navbar-nav">
					<li class="nav-item">
						<a class="nav-link text-dark" href="#">로그인</a>
					</li>
					<li class="nav-item">
						<a class="nav-link text-dark" href="#">로그아웃</a>
					</li>
					<li class="nav-item">
						<a class="nav-link text-dark" href="#">회원가입</a>
					</li>
					<li class="nav-item">
						<a class="nav-link text-dark" href="#">마이페이지</a>
					</li>
					<li class="nav-item">
						<a class="nav-link text-dark" href="#">관리자페이지</a>
					</li>
					<li class="nav-item dropdown">
						<a class="nav-link dropdown-toggle text-dark" href="#" id="dropdown05" data-bs-toggle="dropdown" aria-expanded="false">커뮤니티</a>
						<ul class="dropdown-menu" aria-labelledby="dropdown05">
							<li><a class="dropdown-item" href="#">추천코스</a></li>
							<li><a class="dropdown-item" href="#">문의게시판</a></li>
						</ul>
					</li>
					<li class="nav-item">
						<a class="nav-link text-dark" href="#">이용방법</a>
					</li>
				</ul>
			</div>
		</div>
	</nav>
	<%-- header UI 끝 --%>

