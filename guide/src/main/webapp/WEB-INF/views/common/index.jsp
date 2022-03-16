<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>


	
<%@ include file="./cssLink.jsp"%>
<link rel="stylesheet" href="${contextPath}/resources/css/style.css"/>
<link rel="stylesheet" href="${contextPath}/resources/css/plugins.css"/>
<%-- <link rel="stylesheet" href="${contextPath}/resources/css/animate.css"/> --%>
<body>
<%@ include file="./mainheader.jsp"%>
	

<%-- 바디 시작 --%>
<section id="portfolio" class="portfolio margin-top-120">
	<!-- Portfolio container-->
	<div class="container">
		<div class="row">
			<div class="main-portfolio roomy-80">
				<div>
					<div class="head_title text-center sm-text-center wow fadeInDown">
						<h3><strong>여행지 선택하기</strong></h3>
					</div>
				</div>

				<div class="d-flex justify-content-center">
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

				<div class="grid text-center">
					<c:forEach items="${areaList}" var="areaList">
						<c:if test="${areaList.area_code == 0}">
							<div class="grid-item metal">
								<img alt="" src="${areaList.area_image}">
								<div class="grid_hover_area text-center">
									<div class="girid_hover_text m-top-110">
										<h4 class="text-white">${areaList.area_name}&nbsp;${areaList.area_detail_name}</h4>
										<p class="text-white">${areaList.area_english_title}</p>
									</div>
								</div>
								<!-- End off grid Hover area -->
							</div>
						</c:if>
					</c:forEach>
					
					<c:forEach items="${areaList}" var="areaList">
						<c:if test="${areaList.area_code == 1}">
							<div class="grid-item transitionium">
								<img alt="" src="${areaList.area_image}">
								<div class="grid_hover_area text-center">
									<div class="girid_hover_text m-top-110">
										<h4 class="text-white">${areaList.area_name}&nbsp;${areaList.area_detail_name}</h4>
										<p class="text-white">${areaList.area_english_title}</p>
									</div>
								</div>
								<!-- End off grid Hover area -->
							</div>
						</c:if>
					</c:forEach>
					
					<c:forEach items="${areaList}" var="areaList">
						<c:if test="${areaList.area_code == 2}">
							<div class="grid-item transitionium">
								<img alt="" src="${areaList.area_image}">
								<div class="grid_hover_area text-center">
									<div class="girid_hover_text m-top-110">
										<h4 class="text-white">${areaList.area_name}&nbsp;${areaList.area_detail_name}</h4>
										<p class="text-white">${areaList.area_english_title}</p>
									</div>
								</div>
								<!-- End off grid Hover area -->
							</div>
						</c:if>
					</c:forEach>
					
					<c:forEach items="${areaList}" var="areaList">
						<c:if test="${areaList.area_code == 3}">
							<div class="grid-item transitionium">
								<img alt="" src="${areaList.area_image}">
								<div class="grid_hover_area text-center">
									<div class="girid_hover_text m-top-110">
										<h4 class="text-white">${areaList.area_name}&nbsp;${areaList.area_detail_name}</h4>
										<p class="text-white">${areaList.area_english_title}</p>
									</div>
								</div>
								<!-- End off grid Hover area -->
							</div>
						</c:if>
					</c:forEach>
					
					<c:forEach items="${areaList}" var="areaList">
						<c:if test="${areaList.area_code == 4}">
							<div class="grid-item transitionium">
								<img alt="" src="${areaList.area_image}">
								<div class="grid_hover_area text-center">
									<div class="girid_hover_text m-top-110">
										<h4 class="text-white">${areaList.area_name}&nbsp;${areaList.area_detail_name}</h4>
										<p class="text-white">${areaList.area_english_title}</p>
									</div>
								</div>
								<!-- End off grid Hover area -->
							</div>
						</c:if>
					</c:forEach>
					
					<c:forEach items="${areaList}" var="areaList">
						<c:if test="${areaList.area_code == 5}">
							<div class="grid-item transitionium">
								<img alt="" src="${areaList.area_image}">
								<div class="grid_hover_area text-center">
									<div class="girid_hover_text m-top-110">
										<h4 class="text-white">${areaList.area_name}&nbsp;${areaList.area_detail_name}</h4>
										<p class="text-white">${areaList.area_english_title}</p>
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

</body>
</html>
