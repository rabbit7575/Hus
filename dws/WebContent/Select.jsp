<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- jstl core 라이브러리를 사용하기 위한 선언문 -->
<!-- 반복문 -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!-- 화페 -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
@import url(http://fonts.googleapis.com/earlyaccess/hanna.css);

body {
	margin: 0px;
	padding: 0px;
	font-family: 'Hanna', serif;
}

#content {
	width: 400px;
	height: 700px;
	border: 1px solid black;
	margin: 0 auto;
	margin-top: 50px;
	background-color: #d8e9ef;
	border-radius: 10px;
}

#dws_title {
	padding-top: 25px;
	text-align: center;
	font-size: 20px;
	color: black;
}

a {
	text-decoration: none;
}

#dws_manager {
	text-align: center;
	padding-top: 10px;
	margin-top: 10px;
	padding-bottom: 70px;
}

.btn_index {
	padding: 8px 12px;
	background-color: blue;
	color: white;
	width: 80px;
	display: inline-block;
	border-radius: 20px;
}
.div_index { 
	text-align:center; 
	padding-bottom:22px; 
}
.btn13 {
	background-color: #4ea1d3;
}

.btn24 {
	background-color: #e85a71;
}

table {
	margin: 5px;
	padding: 0px;
	width: 100%;
}

#btu {
	text-align: center;
	margin: 0 auto;
	margin-top: 30px;
}
.span_ck{
	font-size: 12px;
	color: #e85a71;
	display: none;
}
.srbtn{
	padding: 10px;
}
table{ 
	text-align: center; 
	width:95%;
}
#tr_menu{
	background-color: black;
	color: white;
}
</style>
<script src="js/jquery-3.2.1.js"></script>
<script type="text/javascript">
$(document).ready(function() {
	$("input").focus(function() {
		$(this).css("border-color", "green");
	});
	$("input").blur(function() {
		$(this).css("border-color", "white");
	});
	
	form.submit();
		
});
</script>
</head>
<body>
	<div id = "content">
		<div id="dws_title"><a href="index.html"> 디지털 웹 솔루션	<br> 개발자 과정 1기</a></div>
		<div id="dws_manager"> - 출 석 부 - </div>
			<table >
			<tr id = "tr_menu">
				<td>ID</td>
				<td>이름</td>
				<td>연락처</td>
				<td>수정여부</td>
				<td>삭제여부</td>
			</tr>
			<c:forEach items="${dwslist}" var="dwsVal">
				<tr>
					<td>${dwsVal.id} </td>
					<td>${dwsVal.name}</td>
					<td>${dwsVal.phone} </td>
					<td><a href="#">수정</a></td>
					<td><a href="DwsDelete?id=${dwsVal.id}&name=${dwsVal.name}" >
					삭제</a></td>
				</tr>
			</c:forEach>
		</table>
		<br>
		<br>
		<br>
		<div class="div_index"><a href="Index.jsp" class="btn_index btn13">메인으로</a></div>
	</div>
	</body> 
</html>
