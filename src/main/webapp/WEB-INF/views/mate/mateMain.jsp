<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>mateMain</title>
</head>
<link href="https://fonts.googleapis.com/css?family=Noto+Sans&display=swap?" rel="stylesheet" />
<link href="https://fonts.googleapis.com/css?family=Montserrat&display=swap?" rel="stylesheet" />
<link href="https://fonts.googleapis.com/css?family=Inter&display=swap?" rel="stylesheet" />
<script type="text/javascript" src="./assets/js/jquery-1.12.4.js"></script>

<link href="${pageContext.request.contextPath}/assets/css/mateMain.css" rel="stylesheet" />
<link href="${pageContext.request.contextPath}/assets/css/common.css" rel="stylesheet" />

<body>
<!-- wrap -->
<div id="wrap">
	<!-- header -->
	<div id=header>
	</div>
	
	<div id="content">
		<h2>FIND YOUR MATE</h2>
		<div class="inputBox">
			
			<div class="sel1">
				<label for="Location" class="LocationLabel">Location</label><br>
				<input type="text" id="Location" placeholder="목적지를 입력해주세요">
			</div>
			
			<div class="sel2">
				<label for="CheckIn" class="CheckInLabel">Check In</label><br>
				<input type="text" id="CheckIn" placeholder="Add Dates">
			</div>
			
			<div class="sel3">
				<label for="CheckOut" class="CheckOutLabel">Check Out</label><br>
				<input type="text" id="CheckOut" placeholder="Add Dates">
			</div>
			
			<div class="sel4">
				<label for="People" class="PeopleLabel">People</label><br>
				<input type="text" id="People" placeholder="Add Guests">
			</div>
			
			<div class="searchPictogrem"></div>
		</div>
	</div>
	
	<div id="content2">
		<div class="checkBox">
				<span class="nonSmoke"><input type="checkbox" name="mateContactList" value="nonSmoke">&nbsp;&nbsp;비흡연자</span>
				<span class="femaleDriver"><input type="checkbox" name="mateContactList" value="femaleDriver">&nbsp;&nbsp;여성드라이버</span>
				<span class="pet"><input type="checkbox" name="mateContactList" value="pet">&nbsp;&nbsp;반려동물</span>
				<span class="phoneCharger"><input type="checkbox" name="mateContactList" value="phoneCharger">&nbsp;&nbsp;핸드폰 충전기 이용 가능</span>
				<span class="handWash"><input type="checkbox" name="mateContactList" value="handWash">&nbsp;&nbsp;손소독제</span>
				<span class="carWifi"><input type="checkbox" name="mateContactList" value="carWifi">&nbsp;&nbsp;차량 와이파이</span>
				<span class="silence"><input type="checkbox" name="mateContactList" value="silence">&nbsp;&nbsp;조용히가기</span>
				<span class="useTrunk"><input type="checkbox" name="mateContactList" value="useTrunk">&nbsp;&nbsp;트렁크 사용 가능</span>
				<div class="pictogrem01"></div>											
		</div>
		
		<div class=mateList>
			<div class="list1">		
			</div><br>
			<span class="driverName">Driver Joyunju</span>
			<span class="schedule">일정 07.25 - 07.26</span><br>
			<span class="startEnd">서울역 → 강릉</span>
			<span class="seat">좌석</span>
			<span class="seatNo">2</span>
			<span class="v240_11418">애견</span>
			<span class="v240_11298">가능</span>
		</div>		
		<div class=mateList>
			<div class="list2">		
			</div><br>
			<span class="v240_11262">Driver Joyunju</span>
			<span class="v240_11286">일정 07.25 - 07.26</span><br>
			<span class="v240_11274">서울역 → 강릉</span>
			<span class="v240_11322">좌석</span>
			<span class="v240_11310">2</span>
			<span class="v240_11418">애견</span>
			<span class="v240_11298">가능</span>
		</div>		
		<div class=mateList>
			<div class="list3">		
			</div><br>
			<span class="v240_11262">Driver Joyunju</span>
			<span class="v240_11286">일정 07.25 - 07.26</span><br>
			<span class="v240_11274">서울역 → 강릉</span>
			<span class="v240_11322">좌석</span>
			<span class="v240_11310">2</span>
			<span class="v240_11418">애견</span>
			<span class="v240_11298">가능</span>
		</div>		
		<div class=mateList>
			<div class="list4">		
			</div><br>
			<span class="v240_11262">Driver Joyunju</span>
			<span class="v240_11286">일정 07.25 - 07.26</span><br>
			<span class="v240_11274">서울역 → 강릉</span>
			<span class="v240_11322">좌석</span>
			<span class="v240_11310">2</span>
			<span class="v240_11418">애견</span>
			<span class="v240_11298">가능</span>
		</div>
		
		<div class=mateList>
			<div class="list1">		
			</div><br>
			<span class="v240_11262">Driver Joyunju</span>
			<span class="v240_11286">일정 07.25 - 07.26</span><br>
			<span class="v240_11274">서울역 → 강릉</span>
			<span class="v240_11322">좌석</span>
			<span class="v240_11310">2</span>
			<span class="v240_11418">애견</span>
			<span class="v240_11298">가능</span>
		</div>		
		<div class=mateList>
			<div class="list2">		
			</div><br>
			<span class="v240_11262">Driver Joyunju</span>
			<span class="v240_11286">일정 07.25 - 07.26</span><br>
			<span class="v240_11274">서울역 → 강릉</span>
			<span class="v240_11322">좌석</span>
			<span class="v240_11310">2</span>
			<span class="v240_11418">애견</span>
			<span class="v240_11298">가능</span>
		</div>		
		<div class=mateList>
			<div class="list3">		
			</div><br>
			<span class="v240_11262">Driver Joyunju</span>
			<span class="v240_11286">일정 07.25 - 07.26</span><br>
			<span class="v240_11274">서울역 → 강릉</span>
			<span class="v240_11322">좌석</span>
			<span class="v240_11310">2</span>
			<span class="v240_11418">애견</span>
			<span class="v240_11298">가능</span>
		</div>		
		<div class=mateList>
			<div class="list4">		
			</div><br>
			<span class="v240_11262">Driver Joyunju</span>
			<span class="v240_11286">일정 07.25 - 07.26</span><br>
			<span class="v240_11274">서울역 → 강릉</span>
			<span class="v240_11322">좌석</span>
			<span class="v240_11310">2</span>
			<span class="v240_11418">애견</span>
			<span class="v240_11298">가능</span>
		</div>
		
		<div class=mateList>
			<div class="list1">		
			</div><br>
			<span class="v240_11262">Driver Joyunju</span>
			<span class="v240_11286">일정 07.25 - 07.26</span><br>
			<span class="v240_11274">서울역 → 강릉</span>
			<span class="v240_11322">좌석</span>
			<span class="v240_11310">2</span>
			<span class="v240_11418">애견</span>
			<span class="v240_11298">가능</span>
		</div>		
		<div class=mateList>
			<div class="list2">		
			</div><br>
			<span class="v240_11262">Driver Joyunju</span>
			<span class="v240_11286">일정 07.25 - 07.26</span><br>
			<span class="v240_11274">서울역 → 강릉</span>
			<span class="v240_11322">좌석</span>
			<span class="v240_11310">2</span>
			<span class="v240_11418">애견</span>
			<span class="v240_11298">가능</span>
		</div>		
		<div class=mateList>
			<div class="list3">		
			</div><br>
			<span class="v240_11262">Driver Joyunju</span>
			<span class="v240_11286">일정 07.25 - 07.26</span><br>
			<span class="v240_11274">서울역 → 강릉</span>
			<span class="v240_11322">좌석</span>
			<span class="v240_11310">2</span>
			<span class="v240_11418">애견</span>
			<span class="v240_11298">가능</span>
		</div>		
		<div class=mateList>
			<div class="list4">		
			</div><br>
			<span class="v240_11262">Driver Joyunju</span>
			<span class="v240_11286">일정 07.25 - 07.26</span><br>
			<span class="v240_11274">서울역 → 강릉</span>
			<span class="v240_11322">좌석</span>
			<span class="v240_11310">2</span>
			<span class="v240_11418">애견</span>
			<span class="v240_11298">가능</span>
		</div>
		
		<button class="v240_11556">
			<span class="v240_11557">더보기</span>
		</button>		
	</div>
	
	<!-- banner -->
	<div id="banner">
		<span class="v240_10918">BANNER</span>
	</div>
	<!-- //banner -->
</div>
<!-- //wrap -->

</body>
</html>