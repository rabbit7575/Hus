<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!-- 화페 -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 <meta http-equiv="Refresh" content="3;url=IndexAction">

<title>Insert title here</title>
<style type="text/css">
body{
	margin: 0px;
	height: 0px;
}
#welcomeid{
	text-align: center;
	font-size: 25px;
	margin: 0 auto;
	height: 150px;
	width: 450px;
	padding-top: 150px;
}
#Huslogo{
	font-size: 30px;
}
img{
	height: 700px;
	width: 700px;
}
#alllayout{
	height: 500px;
	width: 700px;
	margin: 0 auto;
	border: 0px solid black;
	background-image:url("img/dd.jpg");
	background-size:700px 500px;
	background-repeat: no-repeat;
}
</style>
<script src="js/jquery-3.2.1.min.js"></script>
<!-- <script type="text/javascript">
setTimeout("move()", 3000);
function move(){
		location.href="IndexAction"
}; -->
</script>
</head>
<body>
<%-- <c:forEach items="${Shopname} " var="nameVal">
	<div id="alllayout">
		<div id = "welcomeid">
			<span id="Huslogo">Hus</span><br>
			${nameVal}회원님 가입을 축하드립니다.<br>
			3초 후에 메인 페이지로 이동합니다.
		</div>
	</div>
</c:forEach> --%>
<header>
	<div>
		<%@include file="Header.jsp" %>
	</div>
</header>
<br><br><br><br><br>
<%
String name = request.getParameter("Mbname");
%>
	<div id="alllayout">
		<div id = "welcomeid">
			<span id="Huslogo">Hus</span><br>
			<%=name %>회원님 가입을 축하드립니다.<br>
			3초 후에 메인 페이지로 이동합니다.
		</div>
	</div>


</body>
</html>