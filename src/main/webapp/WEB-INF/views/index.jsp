<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
<script type="text/javascript" src="../assets/js/jquery-1.12.4.js"></script>
<title>Insert title here</title>
</head>
<body>
<h1>hi!!!!!!!!!!!!!!</h1>
<ul>
	<li onclick="kakaoLogin();">
      <a href="javascript:void(0)">
<<<<<<< HEAD
          <span>카카오 로그인</span>
      </a>
	</li>
	<li onclick="kakaoLogout();">
      <a href="javascript:void(0)">
          <span>카카오 로그아웃</span>
      </a>
	</li>
</ul>
<!-- 카카오 스크립트 -->
=======
      	<img src="/kakao_login_large_narrow.png" style="height:60px">
      </a>
	</li>
	<li onclick="kakaoLogout();">
		<a href="javascript:void(0)">
			<img src="/kakao_login_large_narrow.png" style="height:60px">
	    </a>
	</li>
</ul>
<div id="result"></div>
>>>>>>> branch 'master' of https://github.com/ljk0071/spotmate.git
</body>
<<<<<<< HEAD
<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
<script>
Kakao.init('c6544d76c3912585c75cfd126a875faf'); //발급받은 키 중 javascript키를 사용해준다.
console.log(Kakao.isInitialized()); // sdk초기화여부판단
//카카오로그인
function kakaoLogin() {
    Kakao.Auth.login({
      success: function (response) {
        Kakao.API.request({
        	url: '/v2/user/me',
            data: {
                property_keys: ["kakao_account.email","kakao_account.gender"]
            },
            success: function(response) {
                console.log(response);
            },
            fail: function(error) {
                console.log(error);
            },
        })
      },
      fail: function (error) {
        console.log(error)
      },
   })
}
//카카오로그아웃  
function kakaoLogout() {
    if (Kakao.Auth.getAccessToken()) {
      Kakao.API.request({
        url: '/v1/user/unlink',
        success: function (response) {
        	console.log(response)
        },
        fail: function (error) {
          console.log(error)
        },
      })
      Kakao.Auth.setAccessToken(ACCESS_TOKEN)
=======
<script>
Kakao.init('c6544d76c3912585c75cfd126a875faf'); //발급받은 키 중 javascript키를 사용해준다.
console.log(Kakao.isInitialized()); // sdk초기화여부판단
//카카오로그인
function kakaoLogin() {
    Kakao.Auth.login({
      success: function (response) {
        Kakao.API.request({
          url: '/v2/user/me',
          success: function (response) {
//         	  console.log(response)
              id = response.id
              connected_at = response.connected_at
              kakao_account = response.kakao_account
              $('#result').append(kakao_account);
              responsediv="<h2>로그인 성공 !!"
           	  responsediv += '<h4>id: '+id+'<h4>'
           	  responsediv += '<h4>connected_at: '+connected_at+'<h4>'
              email ="";
              gender = "";
              if(typeof kakao_account != 'undefined'){
            	  email = kakao_account.email;
            	  gender = kakao_account.gender;
              }
              responsediv += '<h4>email: '+email+'<h4>'
              responsediv += '<h4>gender: '+gender+'<h4>'
              $('#result').append(responsediv);
          },
          fail: function (error) {
            console.log(error)
          },
        })
      },
      fail: function (error) {
        console.log(error)
      },
    })
  }
//카카오로그아웃  
function kakaoLogout() {
    if (Kakao.Auth.getAccessToken()) {
      Kakao.API.request({
        url: '/v1/user/unlink',
        success: function (response) {
        	console.log(response)
        },
        fail: function (error) {
          console.log(error)
        },
      })
      Kakao.Auth.setAccessToken(undefined)
>>>>>>> branch 'master' of https://github.com/ljk0071/spotmate.git
    }
  }  
</script>
</html>