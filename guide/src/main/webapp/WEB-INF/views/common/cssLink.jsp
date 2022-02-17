<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix ="fn"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<sec:authentication property="principal" var="principal"/>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<%-- 시큐리티용 --%>
<meta id="_csrf" name="_csrf" th:content="${_csrf.token}"/>
 
<meta id="_csrf_header" name="_csrf_header" th:content="${_csrf.headerName}"/>

<meta name="viewport" content="width=device-width, initial-scale=1">

<%-- 진아 파일 --%>
<link href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css" rel="stylesheet" type="text/css" />

<%-- Bootstrap5 CSS --%> 
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

<%-- Bootstrap ICON CSS --%> 	
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.2/font/bootstrap-icons.css">

<%-- 메인 css --%> 	
<link rel="stylesheet" type="text/css" href="/resources/css/mainCss.css">
	



<title>GOGO</title>
</head>
	