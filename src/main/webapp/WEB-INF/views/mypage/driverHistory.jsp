<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script type="text/javascript" src="./assets/js/jquery-1.12.4.js"></script>
<link rel="stylesheet" href="/assets/css/spotmate.css">
<title>Insert title here</title>
</head>
<body>

<div id="wrap"  class="clearfix">
	<c:import url="/WEB-INF/views/includes/nav.jsp"></c:import>
	<div id="contents" class="clearfix">
		<div id="map">
		<a href="https://map.naver.com/v5/directions/14098157.132451665,4423781.713551996,%EC%B6%A9%EC%B2%AD%EB%82%A8%EB%8F%84%20%EB%8B%B9%EC%A7%84%EC%8B%9C,,ADDRESS_POI/14137315.611241747,4506435.253062116,%EB%B0%A9%EB%B0%B0%EC%97%AD%202%ED%98%B8%EC%84%A0,225,SUBWAY_STATION/-/car?c=14094001.0749226,4467333.1283304,9,0,0,0,dh"><img src="./assets/images/naver_map(1).png"></a>
		</div>
		<div class="head">
			<h1>이용  내역</h1>
			<input type="text">
		</div>
		<div>
			<table border=1>
				<thead>
					<tr>
						<th>no.</th>
						<th>출발지</th>
						<th>목적지</th>
						<th>소요시간</th>
						<th>후기</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>1</td>
						<td>서울</td>
						<td>부산</td>
						<td>4시간 30분</td>
						<td><a href="">후기</a></td>
					</tr>
					<tr>
						<td>1</td>
						<td>서울</td>
						<td>대전</td>
						<td>2시간 30분</td>
						<td><a href="">나의 후기</a></td>
					</tr>
				</tbody>
				
			</table>
			<ul>
				<li>1</li>
				<li>2</li>
				<li>3</li>
				<li>4</li>
			</ul>
		</div>	
	</div>
	<c:import url="/WEB-INF/views/includes/footer.jsp"></c:import>
</div>
</body>
</html>

