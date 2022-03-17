<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>


	
<%@ include file="./cssLink.jsp"%>
<link rel="stylesheet" href="${contextPath}/resources/css/style.css"/>
<link rel="stylesheet" href="${contextPath}/resources/css/iconfont.css"/>
<link rel="stylesheet" href="${contextPath}/resources/css/slick.css"/>
<link rel="stylesheet" href="${contextPath}/resources/css/slick-theme.css"/>
<body>
<%@ include file="./mainheader.jsp"%>
	

<%-- 바디 시작 --%>
<div id="carouselExampleCaptions" class="carousel slide" data-bs-ride="carousel">
	<div class="carousel-indicators">
		<button type="button" data-bs-target="#carouselExampleCaptions"
			data-bs-slide-to="0" class="active" aria-current="true"
			aria-label="Slide 1"></button>
		<button type="button" data-bs-target="#carouselExampleCaptions"
			data-bs-slide-to="1" aria-label="Slide 2"></button>
		<button type="button" data-bs-target="#carouselExampleCaptions"
			data-bs-slide-to="2" aria-label="Slide 3"></button>
	</div>
	<div class="carousel-inner" style="height: 30em;">
<!-- 		<div class="carousel-item active"> -->
<!-- 			<img src="..." class="d-block" alt="..."> -->
<!-- 			<div class="carousel-caption d-none d-md-block"> -->
<!-- 				<h5>First slide label</h5> -->
<!-- 				<p>Some representative placeholder content for the first slide.</p> -->
<!-- 			</div> -->
<!-- 		</div> -->
		<c:forEach items="${areaList}" var="areaList" begin="1" end="5" varStatus="index">
			<div class="carousel-item">
				<img src="${areaList.area_image}" class="d-block w-100" alt="..." style="height: 100%;">
				<div class="carousel-caption d-none d-md-block">
					<h5>${areaList.area_english_title}</h5>
					<h5>${areaList.area_name}&nbsp;${areaList.area_detail_name}</h5>
					<p>${areaList.area_content}</p>
					<p>${index}</p>
				</div>
			</div>
		</c:forEach>
	</div>
	<button class="carousel-control-prev" type="button"
		data-bs-target="#carouselExampleCaptions" data-bs-slide="prev">
		<span class="carousel-control-prev-icon" aria-hidden="true"></span> <span
			class="visually-hidden">Previous</span>
	</button>
	<button class="carousel-control-next" type="button"
		data-bs-target="#carouselExampleCaptions" data-bs-slide="next">
		<span class="carousel-control-next-icon" aria-hidden="true"></span> <span
			class="visually-hidden">Next</span>
	</button>
</div>

<section id="portfolio" class="portfolio margin-top-120">
	<!-- Portfolio container-->
	<div class="container">
		<div class="row">
			<div class="main-portfolio roomy-80">
				<div>
					<div class="head_title text-center sm-text-center wow fadeInDown pb-3">
						<h3><strong>여행지 선택하기</strong></h3>
					</div>
				</div>

				<div class="d-flex justify-content-center mb-3">
					<div class="filters-button-group text-right sm-text-center">
						<button class="btn button is-checked" data-filter="*">전체</button>
						<button class="btn button" data-filter=".metal">서울/경기</button>
						<button class="btn button" data-filter=".transition">광역시/특별자치</button>
						<button class="btn button" data-filter=".alkali">강원도</button>
						<button class="btn button" data-filter=".ar">경상도</button>
						<button class="btn button" data-filter=".ar2">전라도</button>
						<button class="btn button" data-filter=".ar3">충청도</button>
					</div>
				</div>
				<div style="clear: both;"></div>

				<div class="grid">
					<c:forEach items="${areaList}" var="areaList">
						<c:if test="${areaList.area_code == 0}">
							<div class="grid-item metal">
								<input type="hidden" name="area_code" value="">
								<input type="hidden" name="area_detail_code">
								<img alt="" src="${areaList.area_image}">
								<div class="grid_hover_area d-flex flex-row justify-content-center align-items-center">
									<div class="girid_hover_text text-center">
										<h4 class="text-white">${areaList.area_english_title}</h4>
										<p class="text-white">${areaList.area_name}&nbsp;${areaList.area_detail_name}</p>
									</div>
								</div>
								<!-- End off grid Hover area -->
							</div>
						</c:if>
					</c:forEach>
					
					<c:forEach items="${areaList}" var="areaList">
						<c:if test="${areaList.area_code == 1}">
							<div class="grid-item transition">
								<img alt="" src="${areaList.area_image}">
								<div class="grid_hover_area d-flex flex-row justify-content-center align-items-center">
									<div class="girid_hover_text text-center">
										<h4 class="text-white">${areaList.area_english_title}</h4>
										<p class="text-white">${areaList.area_name}&nbsp;${areaList.area_detail_name}</p>
									</div>
								</div>
								<!-- End off grid Hover area -->
							</div>
						</c:if>
					</c:forEach>
					
					<c:forEach items="${areaList}" var="areaList">
						<c:if test="${areaList.area_code == 2}">
							<div class="grid-item alkali">
								<img alt="" src="${areaList.area_image}">
								<div class="grid_hover_area d-flex flex-row justify-content-center align-items-center">
									<div class="girid_hover_text text-center">
										<h4 class="text-white">${areaList.area_english_title}</h4>
										<p class="text-white">${areaList.area_name}&nbsp;${areaList.area_detail_name}</p>
									</div>
								</div>
								<!-- End off grid Hover area -->
							</div>
						</c:if>
					</c:forEach>
					
					<c:forEach items="${areaList}" var="areaList">
						<c:if test="${areaList.area_code == 3}">
							<div class="grid-item ar">
								<img alt="" src="${areaList.area_image}">
								<div class="grid_hover_area d-flex flex-row justify-content-center align-items-center">
									<div class="girid_hover_text text-center">
										<h4 class="text-white">${areaList.area_english_title}</h4>
										<p class="text-white">${areaList.area_name}&nbsp;${areaList.area_detail_name}</p>
									</div>
								</div>
								<!-- End off grid Hover area -->
							</div>
						</c:if>
					</c:forEach>
					
					<c:forEach items="${areaList}" var="areaList">
						<c:if test="${areaList.area_code == 4}">
							<div class="grid-item ar2">
								<img alt="" src="${areaList.area_image}">
								<div class="grid_hover_area d-flex flex-row justify-content-center align-items-center">
									<div class="girid_hover_text text-center">
										<h4 class="text-white">${areaList.area_english_title}</h4>
										<p class="text-white">${areaList.area_name}&nbsp;${areaList.area_detail_name}</p>
									</div>
								</div>
								<!-- End off grid Hover area -->
							</div>
						</c:if>
					</c:forEach>
					
					<c:forEach items="${areaList}" var="areaList">
						<c:if test="${areaList.area_code == 5}">
							<div class="grid-item ar3">
								<img alt="" src="${areaList.area_image}">
								<div class="grid_hover_area d-flex flex-row justify-content-center align-items-center">
									<div class="girid_hover_text text-center">
										<h4 class="text-white">${areaList.area_english_title}</h4>
										<p class="text-white">${areaList.area_name}&nbsp;${areaList.area_detail_name}</p>
									</div>
								</div>
								<!-- End off grid Hover area -->
							</div>
						</c:if>
					</c:forEach>

				</div>
				<div style="clear: both;"></div>
			</div>
		</div>
	</div>
	<!-- Portfolio container end -->
</section>
<!-- End off portfolio section -->
	
<%-- 바디 끝 --%>

	
<%@ include file="./mainfooter.jsp"%>
<%@ include file="./jsLink.jsp"%>
<script src="${contextPath}/resources/js/jquery.magnific-popup.js"></script>
<script src="${contextPath}/resources/js/jquery.easing.1.3.js"></script>
<script src="${contextPath}/resources/js/slick.min.js"></script>
<script src="${contextPath}/resources/js/js.isotope.js"></script>
<script src="${contextPath}/resources/js/jquery.collapse.js"></script>
<script src="${contextPath}/resources/js/bootsnav.js"></script>

<script src="https://unpkg.com/masonry-layout@4/dist/masonry.pkgd.min.js"></script>

<script src="${contextPath}/resources/js/plugins.js"></script>
<script src="${contextPath}/resources/js/main.js"></script>
<script type="text/javascript">
$(function() {
	$(".move").on("click", function(e) {
		e.preventDefault();

		actionForm.append("<input type='hidden' name='bno' value='" + $(this).attr("href") + "'>");
		actionForm.attr("action", "/board/read");
		actionForm.submit();
	});
	
// 	$(".carousel-item").index(1).addClass("active");
	alert($(".carousel-item").index(1).html());
});
</script>
</body>
</html>
