<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>mateDeep</title>
</head>
<script type="text/javascript" src="./assets/js/jquery-1.12.4.js"></script>

<link href="${pageContext.request.contextPath}/assets/css/mateDeep.css" rel="stylesheet" />
<link href="${pageContext.request.contextPath}/assets/css/swiper-bundle.main.css" rel="stylesheet" />
<body>
	<!-- mateDeep_wrap -->
	<div class="mateDeep_wrap">
	
		<!-- header -->
		<header>
			<c:import url="/WEB-INF/views/includes/header.jsp"></c:import>
		</header>	
		<!-- //header -->
		
		<!-- mateDeep_banner1 -->
		<div class="mateDeep_banner1">
			<h2>같이 타고 가요<br>FIND YOUR MATE</h2>
			<h3>출발지에서 도착지까지<br> 모든 일정의 이동을 함께하는 서비스입니다.</h3>
		</div>
		<!-- //mateDeep_banner1 -->
		
		<!-- mateDeep_content -->
		<div class="mateDeep_content">
			<div class="mateDeep_infoBox">
			<div class="driverInfo">
				<span class="mateDeep_passengers">탑승 인원수</span>
				<span class="mateDeep_CPassengers">1명</span>
				<span class="mateDeep_boardingtime">탑승 시간</span>
				<span class="mateDeep_CBoardingtime">오전 08:00</span>
				<span class="mateDeep_startDay">출발 날짜</span>
				<span class="mateDeep_CStartDay">2022.07.25.월요일</span>
				<span class="mateDeep_endDay">도착 날짜</span>
				<span class="mateDeep_CEndDay">2022.07.27.수요일</span>
			</div>
				<span class="mateDeep_totalPoint">총 결제 포인트</span>
				<span class="mateDeep_payPoint">50,000 포인트</span>
				<p class="p1">*포인트는 선결제되며,<br> 도착시 드라이버에게 지급이됩니다.</p>
				<p class="p2">*출발 예정시간보다 15분이상 늦게 도착시<br> 패널티가 부여될 수 있으며, 자세한 사항은<br> 공지사항에서 확인 부탁드립니다.</p>
				<button class="mateDeep_boardingBtn">
					<p class="p3">탑승하기</p>
				</button>		
			</div>
			
			<div class="mateDeep_titleFont1">이동 스케줄</div>
			
			<div class="mateDeep_today">
				<div class="mateDeep_dayBox">
					<p>1일차</p>
				</div>
				<div class="mateDeep_float">			
					<div class="mateDeep_start">START</div>
					<div class="mateDeep_time">08 : 00 AM</div>
					<div class="mateDeep_spot">서울역</div>							
				</div>
				<img class="mateDeep_float" src="${pageContext.request.contextPath}/assets/images/mate_mapline.png">
				<div class="mateDeep_float">
					<div class="mateDeep_start">SPOT 1</div>
					<div class="mateDeep_time">01 : 30 PM</div>
					<div class="mateDeep_spot">강릉 안목해변</div>
				</div>
				<img class="mateDeep_float" src="${pageContext.request.contextPath}/assets/images/mate_mapline.png">
				<div class="mateDeep_float">
					<div class="mateDeep_start">SPOT 2</div>
					<div class="mateDeep_time">04 : 20 PM</div>
					<div class="mateDeep_spot">테라로사 카페</div>
				</div>
				<img class="mateDeep_float" src="${pageContext.request.contextPath}/assets/images/mate_mapline.png">
				<div class="mateDeep_float">
					<div class="mateDeep_start">SPOT 3</div>
					<div class="mateDeep_time">07 : 20 PM</div>
					<div class="mateDeep_spot">강릉 주문진</div>
				</div>
			</div>
			
			<div class="mateDeep_today">
				<div class="mateDeep_dayBox">
					<p>2일차</p>
				</div>
				<div class="mateDeep_float">			
					<div class="mateDeep_start">START</div>
					<div class="mateDeep_time">08 : 00 AM</div>
					<div class="mateDeep_spot">서울역</div>							
				</div>
				<img class="mateDeep_float" src="${pageContext.request.contextPath}/assets/images/mate_mapline.png">
				<div class="mateDeep_float">
					<div class="mateDeep_start">SPOT 1</div>
					<div class="mateDeep_time">08 : 00 AM</div>
					<div class="mateDeep_spot">서울역</div>
				</div>
				<img class="mateDeep_float" src="${pageContext.request.contextPath}/assets/images/mate_mapline.png">
				<div class="mateDeep_float">
					<div class="mateDeep_start">SPOT 2</div>
					<div class="mateDeep_time">08 : 00 AM</div>
					<div class="mateDeep_spot">서울역</div>
				</div>
				<img class="mateDeep_float" src="${pageContext.request.contextPath}/assets/images/mate_mapline.png">
				<div class="mateDeep_float">
					<div class="mateDeep_start">SPOT 3</div>
					<div class="mateDeep_time">08 : 00 AM</div>
					<div class="mateDeep_spot">서울역</div>
				</div>
			</div>
			
			<div class="mateDeep_titleFont2">주변 장소 추천</div>
			<div class="mateDeep_map"></div>
			
			
		
		
		
		
		
		
					
		</div>
		<!-- //mateDeep_content -->
		
				
		<!-- footer -->
		<header>
			<c:import url="/WEB-INF/views/includes/footer.jsp"></c:import>
		</header>	
		<!-- //footer -->
	
	</div>
	<!-- //mateDeep_wrap -->
</body>
</html>