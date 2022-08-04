<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>SPOTMATE</title>
        <meta name="title" content="SPOTMATE">
        <meta name="description" content="">
        <meta name="author" content="">
        <meta name="keywords" content="">
        <meta property="og:type" content="website">
        <meta property="og:title" content="">
        <meta property="og:description" content="">
        <meta property="og:url" content="">
        <meta property="og:image" content="">
        <meta property="og:author" content="">
        <meta property="kakao:title" content="">
        <meta property="kakao:description" content="">
        <!-- favicon -->
        <link rel="shortcut icon" href="/assets/images/common/favicon.ico" type="image/x-icon">
        <link rel="icon" href="/assets/images/favicon.ico" type="image/x-icon">
        <link rel="apple-touch-icon" sizes="57x57" href="/assets/images/common/apple-icon-57x57.png">
        <link rel="apple-touch-icon" sizes="60x60" href="/assets/images/common/apple-icon-60x60.png">
        <link rel="apple-touch-icon" sizes="72x72" href="/assets/images/common/apple-icon-72x72.png">
        <link rel="apple-touch-icon" sizes="76x76" href="/assets/images/common/apple-icon-76x76.png">
        <link rel="apple-touch-icon" sizes="114x114" href="/assets/images/common/apple-icon-114x114.png">
        <link rel="apple-touch-icon" sizes="120x120" href="/assets/images/common/apple-icon-120x120.png">
        <link rel="apple-touch-icon" sizes="144x144" href="/assets/images/common/apple-icon-144x144.png">
        <link rel="apple-touch-icon" sizes="152x152" href="/assets/images/common/apple-icon-152x152.png">
        <link rel="apple-touch-icon" sizes="180x180" href="/assets/images/common/apple-icon-180x180.png">
        <link rel="icon" type="image/png" sizes="192x192"  href="/assets/images/common/android-icon-192x192.png">
        <link rel="icon" type="image/png" sizes="32x32" href="/assets/images/common/favicon-32x32.png">
        <link rel="icon" type="image/png" sizes="96x96" href="/assets/images/common/favicon-96x96.png">
        <link rel="icon" type="image/png" sizes="16x16" href="/assets/images/common/favicon-16x16.png">
        <link rel="manifest" href="/assets/images/common/manifest.json">
        <meta name="msapplication-TileColor" content="#ffffff">
        <meta name="msapplication-TileImage" content="/assets/images/common/ms-icon-144x144.png">
        <meta name="theme-color" content="#ffffff">
        <!-- css, js 연결 -->
        <link rel="stylesheet" href="../common/css/swiper-bundle.min.css">
        <link rel="stylesheet" href="../common/css/style.css">
        <script src="../common/js/jquery-1.11.0.min.js"></script>
        <script src="../common/js/swiper.min.js"></script>
        <script src="../common/js/style.js"></script>
</head>
<link href="${pageContext.request.contextPath}/assets/css/style.css" rel="stylesheet" />
<link href="${pageContext.request.contextPath}/assets/css/swiper-bundle.main.css" rel="stylesheet" />
<body>
  <!-- header -->
        <header class="header_wrapper">
            <div class="top_banner">
                <p>안전하게 이용하는 스팟메이트 안전 대책&nbsp;&nbsp;&gt;</p>
            </div>
            <div class="inner clear">
                <div class="lft_sec">
                    <h1 class="header_logo"><a href="javascript:void(0);"><img src="/assets/images/common/header_logo.png" alt="SPOTMATE"></a></h1>
                </div>
                <div class="cen_sec">
                    <!-- <strong class="header_tit">SERVICE</strong> -->
                    <ul class="gnb" id="gnb">
                        <li>
                            <a href="javascript:void(0);">BRAND</a>
                            <div class="depth2">
                                <ul>
                                    <li><a href="javascript:void(0);">ABOUT US</a></li>
                                    <li><a href="javascript:void(0);">FOR EARTH</a></li>
                                </ul>
                            </div>
                        </li>
                        <li>
                            <a href="javascript:void(0);">SPOT</a>
                            <div class="depth2">
                                <ul>
                                    <li><a href="javascript:void(0);">CARPOOL</a></li>
                                    <li><a href="javascript:void(0);">HITCHHIKE</a></li>
                                </ul>
                            </div>
                        </li>
                        <li>
                            <a href="javascript:void(0);">MATE</a>
                            <div class="depth2">
                                <ul>
                                    <li><a href="javascript:void(0);">SERVICE</a></li>
                                    <li><a href="javascript:void(0);">PRODUCT</a></li>
                                </ul>
                            </div>
                        </li>
                        <li>
                            <a href="javascript:void(0);">COMMUNITY</a>
                            <div class="depth2">
                                <ul>
                                    <li><a href="javascript:void(0);">NOTICE</a></li>
                                    <li><a href="javascript:void(0);">FAQ</a></li>
                                    <li><a href="javascript:void(0);">EVENT</a></li>
                                </ul>
                            </div>
                        </li>
                        <li>
                            <a href="javascript:void(0);">DRIVER</a>
                            <div class="depth2">
                                <ul>
                                    <li><a href="javascript:void(0);">GUIDE</a></li>
                                    <li><a href="javascript:void(0);">REGISTER</a></li>
                                </ul>
                            </div>
                        </li>
                    </ul>
                </div>
                <div class="rit_sec">
                    <!-- <strong class="header_tit">PRTFOLIO</strong> -->
                    <div class="">
                        <!-- 로그인 전 -->
                        <!--
                        <ul class="header_btn">
                            <li><a href="javascript:void(0);" class="btn_login">LOGIN</a></li>
                            <li><a href="javascript:void(0);" class="btn_join">회원가입</a></li>
                        </ul>
                        -->
                        <!-- 로그인 후 -->
                        <!-- -->
                        <ul class="loginafter">
                            <li>
                                <a href="javascript:void(0);" class="btn_a1">
                                    <img src="/assets/images/common/login_image_50_01.png" alt="회원이미지">
                                    Joyunju123님
                                </a>
                                <div class="down">
                                    <ul>
                                        <li><a href="javascript:void(0);">마이 페이지</a></li>
                                        <li><a href="javascript:void(0);">마이 포인트</a></li>
                                        <li><a href="javascript:void(0);">나의 예약 내역</a></li>
                                        <li><a href="javascript:void(0);">로그아웃</a></li>
                                    </ul>
                                </div>
                            </li>
                            <li>
                                <a href="javascript:void(0);" class="btn_a2">MY PAGE</a>
                            </li>
                        </ul>
                        
                    </div>
                </div>
            </div>
        </header>
        <!-- //header -->
</body>
</html>