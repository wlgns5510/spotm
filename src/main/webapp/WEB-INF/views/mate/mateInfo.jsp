<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메이트인포</title>
</head>
<link href="https://fonts.googleapis.com/css?family=Noto+Sans&display=swap" rel="stylesheet" />
<link href="https://fonts.googleapis.com/css?family=Montserrat&display=swap" rel="stylesheet" />
<link href="https://fonts.googleapis.com/css?family=Inter&display=swap" rel="stylesheet" />
<link href="${pageContext.request.contextPath}/assets/css/sptoMateInfo.css" rel="stylesheet" />
<script type="text/javascript" src="./assets/js/jquery-1.12.4.js"></script>

<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/spotMateMain.css">

<body>
<div id="wrap">
	<!-- header -->
		<c:import url="/WEB-INF/views/includes/header.jsp"></c:import>
	<!-- //header -->
	
	<div id="content1">
		<h1>콘텐츠1</h1>
	</div>
	<!-- //content1 -->
	
	<div id="content2">
		<h1>콘텐츠2</h1>
	</div>
	<!-- //content2 -->
	
	<div id="content1">
		<h1>콘텐츠3</h1>
	</div>
	<!-- //content3 -->
	
	<!-- footer -->
		<c:import url="/WEB-INF/views/includes/footer.jsp"></c:import>
	<!-- //footer -->
</div>
<!-- //wrap -->
</body>
</html>