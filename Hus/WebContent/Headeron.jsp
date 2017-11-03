<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!-- 화페 -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
	@import url('https://fonts.googleapis.com/css?family=Fjalla+One');
	body, ul{
		margin: 0px;
		padding: 0px;
		/* background-color: #F5F6F7; */
	}
	#header{
		background-color: black;
		height: 30px;
		width: 100%;
		box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19); 
	}
	#header_ul{
		list-style-type: none;
		float: right;
	}
	.header_li {
		float:left;
		color: white;
		position: relative;
		background-color: black;
		font-size: 11px;
	}
	.header_lia{
		color: white;
		text-decoration: none;
		padding: 0 7px;
		font-size:11px;
		line-height: 30px;
	}
	.header_lia:HOVER{
		color: white;
		text-decoration: none;
	}
	/*.header_li>div>a*/
	#header_inner{
		float: right;
		margin-right:70px;
	}
	#huns{
		color: white;
		font-size:16px;
		line-height: 30px;
		font-weight: bold;
		margin-left: 70px
	}
	#header_dropdwonMy{
		width: 75px;
		background-color: black;
		padding: 5px;
		display: none;
		position: absolute;
	}
	#header_dropdwonBoard{
		width: 59px;
		background-color: black;
		padding: 5px;
		display: none;
		position: absolute;
	}
	
	/* #header_dropdwonMy >a, #header_dropdwonBoard >a */
		.header_dropdown_a {
		display: block;
		color: white; 
		text-decoration: none;
		font-size : 10px;
		padding-bottom: 5px;
		line-height : 5px;
		padding: 10px 0px;
	}
	/* #header_dropdwonMy >a:HOVER, #header_dropdwonBoard >a:HOVER */
	.header_dropdown_a:HOVER{
		text-decoration: underline;
		color:white;
		font-weight: bold;
	}

	.header_li:HOVER #header_dropdwonMy, .header_li:HOVER #header_dropdwonBoard{ /*숨겨진 div 뛰워준다*/
		display: block;
	}
	/*line2(로고이미지)*/
	#logo{
	}
	#logo>a{
		text-decoration: none;
		font-family: 'Fjalla One', sans-serif;
	}
	.logo_spanB{
		color: black;
		text-decoration: none;
		font-size : 55px;
	}
	.logo_spanS{
		color: black;
		text-decoration: none;
		font-size : 13px;
	}
	#mainlogo{
		width: 280px;
		text-align: center;
		/*margin: 0 auto; 중앙 */
		padding: 20px 0;
	}
	/*nav 맵*/
	#nav{
		height:50px;
		background-color: black;
		width: 100%;
		z-index: 1;
	}
	
	#nav_ul {
	list-style-type: none;
	}

	.nav_li {
		float: left;
		/* padding : 0 10px; */
		color: white;
		width: 100px;
		text-align: center;
		position: relative;
		z-index: 1;
	}

	.nav_a {
		color: white;
		text-decoration: none;
		line-height: 50px;
	}

	.nav_li:HOVER {
		background-color: white;
	}
	.nav_li:HOVER .nav_dropdwon{ /*숨겨진 div 뛰워준다*/
		display: block;
	}
	.nav_li:HOVER .nav_a {
		color: black;
	}
	.nav_dropdown_a {
		display: block;
		text-decoration: none;
		color:white;
		font-size: 13px;
		height :15px;
		line-height : 15px;
		padding: 10px 0px;
	}
	.nav_dropdown_a:HOVER{
		background-color: #DDDDDD;
		color: black;
	}
	.nav_dropdwon{
	/*border: 1px solid black;*/
		width: 101px;
		position: absolute;
		left: 0px;
		background-color: #353535;
		display: none; /*숨겨준다*/
	}
	#login_user{
		display: inline-block;
		width: 200px;
		height: 100%;
		line-height: 30px;
		float: left;
		text-align: right;
		color: yellow;
		font-size: 10px;
	}
</style>
</head>
<body>
	<div id="header">
		<span id="huns">HUNS</span>
		<!-- header div -->
		<div id="header_inner">
			<ul id="header_ul">
			<c:choose>
				<c:when test="${empty sessionScope.loginUser}">
					<li class="header_li"><a class="header_lia" href="Login.jsp">로그인</a></li>
					<li class="header_li"><a class="header_lia" href="contract.jsp">회원가입</a></li>
				</c:when>
				<c:otherwise>
					<li id="login_user" class="header_li">${sessionScope.loginUser.shopname}(${sessionScope.loginUser.shopid})
					님 환영합니다.</li>
					<li class="header_li"><a href="LoginOutAction" class="header_lia">로그아웃</a></li>
				</c:otherwise>
			</c:choose>
				<li class="header_li"><a class="header_lia" href="#">마이페이지▼</a>
					<div id="header_dropdwonMy">
						<a href="#" class="header_dropdown_a">주문/배송조회</a> 
						<a href="#" class="header_dropdown_a">장바구니</a>
						<a href="#" class="header_dropdown_a">쿠폰조회</a>
						<a href="SignUpUpdate" class="header_dropdown_a">회원정보</a>
					</div>
				</li>
				<li class="header_li"><a class="header_lia" href="#">고객센터▼</a>
					<div id="header_dropdwonBoard">
						<a href="#" class="header_dropdown_a">고객센터</a> 
						<a href="#" class="header_dropdown_a">공지사항</a>
						<a href="#" class="header_dropdown_a">입고지연</a>
					</div>
				</li>
				<li class="header_li"><a  class="header_lia" href="#">리뷰게시판</a></li>
			</ul>
		</div>
	</div>
	<!--logo div -->
	<div id="logo">
		<a href="IndexAction">
			<div id="mainlogo">
				<span class="logo_spanB">HUNS</span><br>
				<span class="logo_spanS">TREND BASIC CALSUAL</span>
			</div>
		</a>
	</div>
	
	<!--nav div -->
	<div id = "nav">
		<ui id="nav_ul">
			<li class="nav_li"><a class="nav_a" href="#">신상 5%</a></li>
			<li class="nav_li"><a class="nav_a" href="#">베스트 100</a></li>
			<li class="nav_li"><a class="nav_a" href="#">신발</a>
				<div class="nav_dropdwon">
					<a href="#" class="nav_dropdown_a">여성구두</a> 
					<a href="#" class="nav_dropdown_a">남성구두</a>
					<a href="#" class="nav_dropdown_a">여성운동화</a> 
					<a href="#" class="nav_dropdown_a">남성운동화</a>
				</div>
			</li>
			<li class="nav_li"><a class="nav_a" href="#">악세사리</a>
				<div class="nav_dropdwon">
					<a href="#" class="nav_dropdown_a">시계</a> 
					<a href="#" class="nav_dropdown_a">팔찌</a>
					<a href="#" class="nav_dropdown_a">발찌</a> 
					<a href="#" class="nav_dropdown_a">피어싱</a>
					<a href="#" class="nav_dropdown_a">반지</a>
					<a href="#" class="nav_dropdown_a">목걸이</a>
				</div>
			</li>
			<li class="nav_li"><a class="nav_a" href="#">아우터</a></li>
		</ui>
	</div>
</body>
</html>