<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>


	
<%@ include file="./cssLink.jsp"%>
<link rel="stylesheet" href="${contextPath}/resources/css/style.css"/>
<link rel="stylesheet" href="${contextPath}/resources/css/plugins.css"/>
<%-- <link rel="stylesheet" href="${contextPath}/resources/css/animate.css"/> --%>

<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">
<link href='https://fonts.googleapis.com/css?family=Anton' rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Neucha' rel='stylesheet' type='text/css'>

<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

<body>
<%@ include file="./mainheader.jsp"%>

<style>
.carousel-inner > .carousel-item > img{ 
/* width: 640px; height: 720px; */ 
}

</style>
<%-- 바디 시작 --%>
<!-- 슬라이드 -->
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script> 
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script> 
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script> 
<script> 
	$('.carousel').carousel({ 
		interval: 2000 //기본 5초 
	}) ;
</script> 
<!-- <div class="container"> -->
<!-- <h2>Carousel practice</h2> -->
<!-- </div>  -->
<div id="demo" class="carousel slide" data-ride="carousel"> 
	<div class="carousel-inner"> 
		<div class="carousel-item active"> 
			<img class="d-block w-100" src="https://images.pexels.com/photos/213399/pexels-photo-213399.jpeg?auto=compress&cs=tinysrgb&h=650&w=940" alt="First slide" style="height: 450px"> 
		</div>
		<c:forEach items="${areaList}" begin="1" end="3" var="areaList">
			<div class="carousel-item"> 
				<img alt="이미지" src="${areaList.area_image}" style="width: 100%;height:450px;">
			</div> 
		</c:forEach> 
		<a class="carousel-control-prev" href="#demo" data-slide="prev"> 
			<span class="carousel-control-prev-icon" aria-hidden="true"></span> 
			<!-- <span>Previous</span> --> 
		</a> 
		<a class="carousel-control-next" href="#demo" data-slide="next"> 
			<span class="carousel-control-next-icon" aria-hidden="true"></span> 
			<!-- <span>Next</span> --> 
		</a> 
		<ul class="carousel-indicators"> 
			<li data-target="#demo" data-slide-to="0" class="active"></li> 
			<li data-target="#demo" data-slide-to="1"></li> 
			<li data-target="#demo" data-slide-to="2"></li> 
			<li data-target="#demo" data-slide-to="3"></li> 
		</ul> 
	</div>
</div>	



<!-- <div id="wrapper"> -->
<!-- 	<div id="slider-wrap"> -->
<!-- 		<ul id="slider"> -->
<%-- 			<c:forEach items="${areaList}" begin="1" end="5" var="areaList"> --%>
<!-- 			<li> -->
<!-- 				<div > -->
<%-- 					<img alt="이미지" src="${areaList.area_image}"> --%>
<!-- 					<div> -->
<%-- 						<h4  class="text-white">${areaList.area_english_title}</h4> --%>
<%-- 						<h4 class="text-white">${areaList.area_name}&nbsp;${areaList.area_detail_name}</h4> --%>
<%-- 						<p style="word-break:break-all;">${areaList.area_content }</p> --%>
<!-- 					</div>  -->
<!-- 				</div> -->
<!-- 			</li> -->
<%-- 			</c:forEach> --%>
<!-- 		</ul> -->
<!--        controls -->
<!-- 		<div class="btns" id="next"><i class="fa fa-arrow-right"></i></div> -->
<!-- 		<div class="btns" id="previous"><i class="fa fa-arrow-left"></i></div> -->
<!-- 		<div id="pagination-wrap"> -->
<!-- 			<ul> -->
<!-- 			</ul> -->
<!-- 		</div> -->
<!-- 		<!--controls-->   
<!-- 	</div> -->
<!-- </div> -->

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
										<h4>${areaList.area_name}&nbsp;${areaList.area_detail_name}</h4>
										<p>${areaList.area_english_title}</p>
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

<script type="text/javascript">
// $(function() {
// 	var pos = 0;  //current position
// 	var totalSlides = $('#slider-wrap ul li').length;  //number of slides
// 	var sliderWidth = $('#slider-wrap').width();   //get the slide width
// 	$(document).ready(function(){
// 	  $('#slider-wrap ul#slider').width(sliderWidth*totalSlides);
// 	  $('#next').click(function(){
// 	    slideRight();
// 	  });
// 	  $('#previous').click(function(){
// 	    slideLeft();
// 	  });
// 	  var autoSlider = setInterval(slideRight, 3000);
// 	  $.each($('#slider-wrap ul li'), function() { 
// 	     var li = document.createElement('li');
// 	     $('#pagination-wrap ul').append(li);    
// 	  });
// 	  countSlides();
// 	  pagination();
// 	  $('#slider-wrap').hover(
// 	    function(){ $(this).addClass('active'); clearInterval(autoSlider); }, 
// 	    function(){ $(this).removeClass('active'); autoSlider = setInterval(slideRight, 3000); }
// 	  );
// 	});//DOCUMENT READY
// 	function slideLeft(){
// 	  pos--;
// 	  if(pos==-1){ pos = totalSlides-1; }
// 	  $('#slider-wrap ul#slider').css('left', -(sliderWidth*pos));  
// 	  countSlides();
// 	  pagination();
// 	}
// 	function slideRight(){
// 	  pos++;
// 	  if(pos==totalSlides){ pos = 0; }
// 	  $('#slider-wrap ul#slider').css('left', -(sliderWidth*pos)); 
// 	  countSlides();
// 	  pagination();
// 	}
// 	function countSlides(){
// 	  $('#counter').html(pos+1 + ' / ' + totalSlides);
// 	}
// 	function pagination(){
// 	  $('#pagination-wrap ul li').removeClass('active');
// 	  $('#pagination-wrap ul li:eq('+pos+')').addClass('active');
// 	}
// });

</script>
</body>
</html>
