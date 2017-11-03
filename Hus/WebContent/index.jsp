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
/* @import url(http://fonts.googleapis.com/earlyaccess/nanumpenscript.css); */
/* @import url('https://fonts.googleapis.com/css?family=Fjalla+One'); */
/* @import url(http://fonts.googleapis.com/earlyaccess/hanna.css); */
@import url('https://fonts.googleapis.com/css?family=Fjalla+One');
	body, div {
		margin: 0px;
		padding: 0px;
		/* background-color: #F5F6F7; */
	}
	
	h3 {
		margin: 0px;
	}
	
	.in_img {
		width:250px;
		height:250px;
		/* box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19); */
	}
	
	.in_img:HOVER {
		opacity: 0.3;
    	filter: alpha(opacity=50);	
	}
	
	.a_link {
		text-decoration: none;
	}
	.pdt_item {
		position: relative;
		float: left; /* 밑으로 줄줄이 나오는걸 옆으로 따닥따닥 붙인다 */
		margin: 0px 10px;
		width:260px;
		height: 255px;
		text-align: center;
	}
	
	.pdt_item:HOVER {
		/* background-color: black;	 */
	}
	.item_list{
		clear: both; /* 한개끝나면 밑으로 내려와서 다시 시작한다 */
	}
	
	.wrap_info {
		display: none;
	}

	.pdt_item:HOVER .wrap_info{
		position: absolute;
    	top: 50%;
   		left: 50%;
		display: block;
		width: 120px;
		height: 40px;
		/* background-color: white; */
		font-weight: bold;
	}
	
	.span_val {
		color: black;
		text-align: center;
		font-size: 20px;
		/* font-family: 'Nanum Pen Script', serif; */
	}
#middle{
	width: 100%;
	margin: 0 auto;
}
.item_body{
	margin : 0 auto;
	width: 1200px;
	}
</style>
<script src="js/jquery-3.2.1.min.js"></script>
<script type="text/javascript">
	$(function(){
		$(window).scroll(function(){
			if($(this).scrollTop()>190){
				$("#nav").css({"position":"fixed","top":"0px"});
			}else{	
				$("#nav").css({"position":"relative","top":"7px"});
			}
		});
	});
</script>
</head>

<body>
	<div>
		<%@ include file="Header.jsp" %>
	</div>
	<div></div>
  	<div id= "middle">
		<%@ include file="test.jsp" %>
	</div>
	<br>
	<div class = "item_body">
		<div class="item_list">
			<h3>Best Item</h3>
			<hr>
			<c:forEach items="${bestlist}" var="bestVal">
			<div class="pdt_item">
				<a class="a_link" href="Detailpage.jsp?img=${bestVal.p_img}&name=${bestVal.p_name}&price=${bestVal.p_price2}">
					<img class="in_img" alt="베스트상품" src="img/${bestVal.p_img}">
					<div class= "wrap_info">
						<span class="span_val">${bestVal.p_name}</span><br>
						<span class="span_val">
						 	<fmt:setLocale value="ko_kr"/> <!-- ko_kr, en_us, ja_jp -->
							<fmt:formatNumber value="${bestVal.p_price2}" type="currency"/>
						</span>
					</div>
				</a>
			</div>
			</c:forEach>
		</div>
		<br>
		<div class="item_list">
			<h3>New Item</h3>
			<hr>
			<c:forEach items="${newlist}" var="newVal">
			<div class="pdt_item">
				<a class="a_link" href="Detailpage.jsp?img=${newVal.p_img}&name=${newVal.p_name}&price=${newVal.p_price2}">
					<img class="in_img" alt="신상품" src="img/${newVal.p_img}">
					<div class="wrap_info">
						<span class="span_val">${newVal.p_name}</span><br>
						<span class="span_val">
						<fmt:setLocale value="ko_kr"/> <!-- ko_kr, en_us, ja_jp -->
						<fmt:formatNumber value="${newVal.p_price2}" type="currency"/>
						</span>
					</div>
				</a>
			</div>
			</c:forEach>
		</div>
	</div>
</body>
</html>