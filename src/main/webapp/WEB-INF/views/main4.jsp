<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=c6544d76c3912585c75cfd126a875faf&libraries=services,clusterer,drawing"></script>
<script type="text/javascript" src="./assets/js/jquery-1.12.4.js"></script>
<title>Insert title here</title>
</head>
<body>
	<div data-start="${start}" data-end="${end}" data-latlng="${latlng}" id="map" style="width:1440px;height:700px;"></div>
</body>
<script>
//경로 띄워주는 로직
	var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
	mapOption = { 
	    center: new kakao.maps.LatLng(37.48271740269386,126.99381542283633), // 지도의 중심좌표
	    level: 3 // 지도의 확대 레벨
	};  
	
	var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다
	
	var latlng = $("#map").data("latlng");
	var start = $("#map").data("start");
	var end = $("#map").data("end");
	//선을 구성하는 좌표 배열입니다. 이 좌표들을 이어서 선을 표시합니다
	//테스트 결과 json 파싱해서 for문 반복으로 넣어주면 될듯
	var linePath = [
		new kakao.maps.LatLng(start[1], start[0]),
// 		new kakao.maps.LatLng(37.46912968716258,126.98761047624417)
		];
	for (var i=0; i<latlng.length; i++) {
			if (i == latlng.length) {
				linePath.push(new kakao.maps.LatLng(end[1],end[0]));
				break;
			}
			linePath.push(new kakao.maps.LatLng(latlng[i+1],latlng[i]),);
			i++;
		};
// 	new kakao.maps.LatLng(37.533723133830215, 126.99135606403439),
// 	new kakao.maps.LatLng(37.533624022957795, 126.99123756240226),
// 	new kakao.maps.LatLng(37.533650664694235, 126.99119194505334),
// 	new kakao.maps.LatLng(37.53384742247417, 126.99101957486624),
// 	new kakao.maps.LatLng(37.53384742247417, 126.99101957486624),
// 	new kakao.maps.LatLng(37.53380073188641,126.99082785492774),
// 	new kakao.maps.LatLng(37.53363643483701,126.99058114718757),
// 	new kakao.maps.LatLng(37.53363643483701,126.99058114718757),
// 	new kakao.maps.LatLng(37.533526484063756,126.99036765166292),
// 	new kakao.maps.LatLng(37.533526484063756,126.99036765166292),
// 	new kakao.maps.LatLng(37.53354102016584,126.98996012987803),
// 	new kakao.maps.LatLng(37.53354102016584,126.98996012987803),
// 	new kakao.maps.LatLng(37.5336025419973,126.98872600715302),
// 	new kakao.maps.LatLng(37.5336025419973,126.98872600715302),
// 	new kakao.maps.LatLng(37.53367403612228,126.98865715400589),
// 	new kakao.maps.LatLng(37.53367403612228,126.98865715400589),
// 	new kakao.maps.LatLng(37.53375405514506,126.9885316124124),
// 	new kakao.maps.LatLng(37.53375405514506,126.9885316124124),
// 	new kakao.maps.LatLng(37.533780211283165,126.98842942738524),
// 	new kakao.maps.LatLng(37.53378883306197,126.98838405236114),
// 	new kakao.maps.LatLng(37.53378844539524,126.98833879903012),
// 	new kakao.maps.LatLng(37.53378815463382,126.9883048590324),
// 	new kakao.maps.LatLng(37.53376984500708,126.98827116245756),
// 	new kakao.maps.LatLng(37.53375163229884,126.98824877922605),
// 	new kakao.maps.LatLng(37.53373341958646,126.9882263960054),
// 	new kakao.maps.LatLng(37.53370629437327,126.98821544783445),
// 	new kakao.maps.LatLng(37.5336612472344,126.98821605642155),
// 	new kakao.maps.LatLng(37.5336612472344,126.98821605642155),
// 	new kakao.maps.LatLng(37.53361678165671,126.98828454484553),
// 	new kakao.maps.LatLng(37.53268822903624,126.98928144783774),
// 	new kakao.maps.LatLng(37.53268822903624,126.98928144783774),
// 	new kakao.maps.LatLng(37.531864491318856,126.98989222485685),
// 	new kakao.maps.LatLng(37.531864491318856,126.98989222485685),
// 	new kakao.maps.LatLng(37.53042286947153,126.9909525673588),
// 	new kakao.maps.LatLng(37.53042286947153,126.9909525673588),
// 	new kakao.maps.LatLng(37.53003749313808,126.99119535467446),
// 	new kakao.maps.LatLng(37.52983104903198,126.99128864751061),
// 	new kakao.maps.LatLng(37.52983104903198,126.99128864751061),
// 	new kakao.maps.LatLng(37.52941700117017,126.9913394794073),
// 	new kakao.maps.LatLng(37.52941700117017,126.9913394794073),
// 	new kakao.maps.LatLng(37.52882286098571,126.99140404957403),
// 	new kakao.maps.LatLng(37.52882286098571,126.99140404957403),
// 	new kakao.maps.LatLng(37.527292800889,126.9916056697434),
// 	new kakao.maps.LatLng(37.51699989898214, 127.01497646176549)
// 	];
	
	//지도에 표시할 선을 생성합니다
	var polyline = new kakao.maps.Polyline({
		path: linePath, // 선을 구성하는 좌표배열 입니다
		strokeWeight: 5, // 선의 두께 입니다
		strokeColor: '#4454a1', // 선의 색깔입니다
		strokeOpacity: 1, // 선의 불투명도 입니다 1에서 0 사이의 값이며 0에 가까울수록 투명합니다
		strokeStyle: 'solid' // 선의 스타일입니다
	});
	
	//지도에 선을 표시합니다 
	polyline.setMap(map);  
</script>
</html>