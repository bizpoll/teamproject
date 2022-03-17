<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>


	
<%@ include file="./cssLink.jsp"%>
<link rel="stylesheet" href="${contextPath}/resources/css/style.css"/>
<link rel="stylesheet" href="${contextPath}/resources/css/plugins.css"/>
<%-- <link rel="stylesheet" href="${contextPath}/resources/css/animate.css"/> --%>

<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">
<link href='https://fonts.googleapis.com/css?family=Anton' rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Neucha' rel='stylesheet' type='text/css'>
<body>
<%@ include file="./mainheader.jsp"%>

<style>
a{text-decoration:none; color:#666;}
a:hover{color:#1bc1a3;}

#wrapper{
/*   width:600px; */
  margin:50px auto;
  height:400px;
  position:relative;
  color:#fff;
  text-shadow:rgba(0,0,0,0.1) 2px 2px 0px;  
}

#slider-wrap{
/*   width:600px; */
  height:400px;
/*   position:relative; */
  overflow:hidden;
}

#slider-wrap ul#slider{
  width:100%;
  height:100%;
  position:absolute;
  top:0;
  left:0;
}

#slider-wrap ul#slider li{
  float:left;
  position:relative;
  width:1500px;
  height:400px; 
/*   margin: 0 15px; */
}

#slider-wrap ul#slider li > div{
/*   position:absolute; */
  display: flex;
  justify-content: flex-end;
  width: 100%;
  top:20px;
  left:35px;  
}

#slider-wrap ul#slider li > div h3{
  font-size:36px;
  text-transform:uppercase; 
}

#slider-wrap ul#slider li > div span{
  font-family: Neucha, Arial, sans serif;
  font-size:21px;
}

#slider-wrap ul#slider li img{
/*   display:block; */
/*   width:100%; */
/*   height: 100%; */
	height: 380px;
}


/*btns*/
.btns{
  position:absolute;
  width:50px;
  height:60px;
  top:50%;
  margin-top:-25px;
  line-height:57px;
  text-align:center;
  cursor:pointer; 
  background:rgba(0,0,0,0.1);
  z-index:100;
  
  
  -webkit-user-select: none;  
  -moz-user-select: none; 
  -khtml-user-select: none; 
  -ms-user-select: none;
  
  -webkit-transition: all 0.1s ease;
  -moz-transition: all 0.1s ease;
  -o-transition: all 0.1s ease;
  -ms-transition: all 0.1s ease;
  transition: all 0.1s ease;
}

.btns:hover{
  background:rgba(0,0,0,0.3); 
}

#next{right:-50px; border-radius:7px 0px 0px 7px;}
#previous{left:-50px; border-radius:0px 7px 7px 7px;}
#counter{
  top: 30px; 
  right:35px; 
  width:auto;
  position:absolute;
}
#slider-wrap.active #next{right:0px;}
#slider-wrap.active #previous{left:0px;}
/*bar*/
#pagination-wrap{
  min-width:20px;
  margin-top:350px;
  margin-left: auto; 
  margin-right: auto;
  height:15px;
  position:relative;
  text-align:center;
}
#pagination-wrap ul {
  width:100%;
}
#pagination-wrap ul li{
  margin: 0 4px;
  display: inline-block;
  width:5px;
  height:5px;
  border-radius:50%;
  background:#fff;
  opacity:0.5;
  position:relative;
  top:0;
  
  
}

#pagination-wrap ul li.active{
  width:12px;
  height:12px;
  top:3px;
  opacity:1;
  box-shadow:rgba(0,0,0,0.1) 1px 1px 0px; 
}
/*Header*/
h1, h2{text-shadow:none; text-align:center;}
h1{ color: #666; text-transform:uppercase;  font-size:36px;}
h2{ color: #7f8c8d; font-family: Neucha, Arial, sans serif; font-size:18px; margin-bottom:30px;} 
/*ANIMATION*/
#slider-wrap ul, #pagination-wrap ul li{
  -webkit-transition: all 0.3s cubic-bezier(1,.01,.32,1);
  -moz-transition: all 0.3s cubic-bezier(1,.01,.32,1);
  -o-transition: all 0.3s cubic-bezier(1,.01,.32,1);
  -ms-transition: all 0.3s cubic-bezier(1,.01,.32,1);
  transition: all 0.3s cubic-bezier(1,.01,.32,1); 
}
</style>
<%-- 바디 시작 --%>
<!-- 슬라이드 -->
<div id="wrapper">
	<div id="slider-wrap">
		<ul id="slider">
			<c:forEach items="${areaList}" begin="1" end="5" var="areaList">
			<li>
				<div >
					<img alt="이미지" src="${areaList.area_image}">
					<div>
						<h4  class="text-white">${areaList.area_english_title}</h4>
						<h4 class="text-white">${areaList.area_name}&nbsp;${areaList.area_detail_name}</h4>
<%-- 						<p style="word-break:break-all;">${areaList.area_content }</p> --%>
					</div> 
				</div>
			</li>
			</c:forEach>
		</ul>
       <!--controls-->
		<div class="btns" id="next"><i class="fa fa-arrow-right"></i></div>
		<div class="btns" id="previous"><i class="fa fa-arrow-left"></i></div>
		<div id="pagination-wrap">
			<ul>
			</ul>
		</div>
		<!--controls-->  
	</div>
</div>

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
$(function() {
	var pos = 0;  //current position
	var totalSlides = $('#slider-wrap ul li').length;  //number of slides
	var sliderWidth = $('#slider-wrap').width();   //get the slide width
	$(document).ready(function(){
	  $('#slider-wrap ul#slider').width(sliderWidth*totalSlides);
	  $('#next').click(function(){
	    slideRight();
	  });
	  $('#previous').click(function(){
	    slideLeft();
	  });
	  var autoSlider = setInterval(slideRight, 3000);
	  $.each($('#slider-wrap ul li'), function() { 
	     var li = document.createElement('li');
	     $('#pagination-wrap ul').append(li);    
	  });
	  countSlides();
	  pagination();
	  $('#slider-wrap').hover(
	    function(){ $(this).addClass('active'); clearInterval(autoSlider); }, 
	    function(){ $(this).removeClass('active'); autoSlider = setInterval(slideRight, 3000); }
	  );
	});//DOCUMENT READY
	function slideLeft(){
	  pos--;
	  if(pos==-1){ pos = totalSlides-1; }
	  $('#slider-wrap ul#slider').css('left', -(sliderWidth*pos));  
	  countSlides();
	  pagination();
	}
	function slideRight(){
	  pos++;
	  if(pos==totalSlides){ pos = 0; }
	  $('#slider-wrap ul#slider').css('left', -(sliderWidth*pos)); 
	  countSlides();
	  pagination();
	}
	function countSlides(){
	  $('#counter').html(pos+1 + ' / ' + totalSlides);
	}
	function pagination(){
	  $('#pagination-wrap ul li').removeClass('active');
	  $('#pagination-wrap ul li:eq('+pos+')').addClass('active');
	}
});

</script>
</body>
</html>
