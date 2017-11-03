<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!-- 화페 -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
@import url(http://fonts.googleapis.com/earlyaccess/hanna.css);
	body{
		margin: 0px;
		padding: 0px;
	}
	#contentLayout {
	width : 700px;
	height : 700px;
 	margin: 0 auto;
 	padding: 0px;
 /* 	border: 1px solid blue; */
 	
 	}
	#tableLayout{
		text-align: center;
		margin: 0 auto;
		border: 1px solid black;
		border-collapse: collapse;
	}
	#headertd{
		height: 50px;
		font-size: 25px;
		color: white;
		background-color: black;
		font-weight: bold;
	}
	tr, td{
	 	border: 1px solid black; 
	}
	.allimgsize {
		width:350px;
		height:400px;
	}
	.LineLayoutMenu{
		height: 50px;
		width: 150px;
		font-weight: bold;
		font-size: 20px;
	}
	.LineLayoutVal{
		height: 50px;
		width: 150px;
	}
	.LineLayout2{
		height: 70px;
	}
	#savres{
 	width : 700px;
 	margin: 0 auto;
 	/* border: 1px solid red; */
 	text-align: center;
	}
	 .srbtu{
 
 	background-color: black;
 	color: white;
 	padding:1px 1px 1px 1px;
 	text-align: center;
 	text-decoration: none;
 	border-radius:3px;
 }
</style>
</head>
<body>
		<div>
			<%@include file="Header.jsp" %>
		</div>
<fieldset>
	<div id = "contentLayout">
		<br><hr><br>
		<%
		String img =  request.getParameter("img");
		String name =  request.getParameter("name");
		String price =  request.getParameter("price");
		%>
		<table id = "tableLayout">
			<tr>
				<td colspan="3" id="headertd">상세페이지</td>
			</tr>
			<tr>
				<td rowspan="5"><img class="allimgsize" alt="베스트상품" src="img/<%=img %>"></td>
				<td class="LineLayoutMenu">상품명</td>
				<td class="LineLayoutVal"><%=name %></td>
			</tr>
			<tr>
				<td class="LineLayoutMenu">판매가</td>
				<td class="LineLayoutVal">
				<fmt:setLocale value="ko_kr"/> <!-- ko_kr, en_us, ja_jp -->
				<fmt:formatNumber value="<%=price %>" type="currency"/>
				</td>
			</tr>
			<tr>
				<td class="LineLayoutMenu" colspan="2" rowspan="1">설명</td>
			</tr>
			<tr>
				<td class="LineLayout2" colspan="2" rowspan="2">겁나 좋음</td>
			</tr>
		</table>
		<br><hr><br>
		<div id="savres">
			<a href="IndexAction" class="srbtu">메인으로</a>
		</div>
	</div>
</fieldset>
</body>
</html>