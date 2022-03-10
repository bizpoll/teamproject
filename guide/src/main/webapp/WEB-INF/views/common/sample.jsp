<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


	
<%@ include file="../common/cssLink.jsp"%>
<body>
<%@ include file="../common/mainheader.jsp"%>
	

<%-- 바디 시작 --%>
<a href="${contextPath}/login"> 로그인버튼</a><br>${principal}
<br>
<a class="nav-link active" href="javascript:logout.submit();">로그아웃</a>
<div id="div-logout"></div>
<br>

<a href="${contextPath}/member/info">마이페이지</a>
<br>
<a href="${contextPath}/qna/list">문의게시판</a>
<%-- 이곳에 작성해주세요 --%>
	
<%-- 바디 끝 --%>

	
<%@ include file="../common/mainfooter.jsp"%>
<%@ include file="../common/jsLink.jsp"%>

</body>
</html>
