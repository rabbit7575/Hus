<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
 
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
 
	body {
		margin: 0px;
		padding: 0px;
	}
	
	em {
		font-style: normal;
		font-size: 12px;
	}
	
	.detail_page {
		width: 100%;
		
	}
	
	img {
		width: 450px;
		height: 400px;
		vertical-align: middle;
	}
	
	.detail_wrap {
		width: 900px;
		height: 600px;
		margin: auto;
		margin-top: 150px;
		
	}
	
	.detail_table {
		float: right;
		height: 350px;
		padding: 20px;
	}
	
	.detail_table td {
		margin-bottom: 10px;
	}
	
	.table_detail {
		font-size: 12px;
	}
	
	.table_title {
		margin-left: 20px;
	}
	
	.table_tr {
		margin-bottom: 10px;
	}
	.table_tr_1{
		margin-bottom: 10px;
		text-align: center;
	}
	
	#btn_buy {
		text-decoration: none;
		color: black;
		border: 1px solid black;
		border-radius: 3px;
		padding: 10px;
	}
	
	#btn_cart {
		text-decoration: none;
		color: black;
		border: 1px solid black;
		padding: 10px;
		border-radius: 3px;
	}
	
	#table_price {
		border-top: 1px solid black;
	}
	.table_title span{
	
	}
	
	
 
</style>
</head>
<body>
<%@include file="Header.jsp"%>
	<div class = "detail_page">
	<div class = "detail_wrap">
		<img src = "img/b01.jpg">
		
		<table class = "detail_table">
			<tr class = "table_tr_1">
				<th class = "table_title" colspan = "2">
				스위브 인터레켄 맨투맨
				</th>
			</tr>
				<tr class="table_tr_1 table_detail">
				<th class="table_title" style="text-align: center"><em>free size / 커플룩으로 좋은 맨투맨</em></th>
				</tr>
			
			<tr class = "table_tr table_detail">
				<td>판매가격</td>
				<td>60000원</td>
			</tr>
			<tr class = "table_tr table_detail">
				<td>색상</td>
				<td>
					<select>
						<option>Navy</option>
						<option>White</option>
					</select>
				</td>
			</tr>
			<tr class = "table_tr table_detail">
				<td>사이즈</td>
				<td>
					<select>
						<option>free</option>
					</select>
				</td>
			</tr>
			<tr class = "table_tr table_detail">
				<td>수량</td>
				<td><input type = "text"></td>
			</tr>
			<tr id = "table_btn">
				<td><a href = "#" id = "btn_buy">구매하기</a></td>
				<td><a href = "#" id = "btn_cart">장바구니</a></td>
		</table>
	</div>
</div>
</body>
</html>