<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!-- 스크립트 잇 -->
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
		width: 260px;]
		height: 400px;
		border : 1px solid black;
		margin: 0 auto;
		margin-top:50px; 
		background-color: #d8e9ef;
		border-radius:10px;
	}
	#dws_title {
		padding-top :25px ;
		text-align: center;
		font-size: 20px;
		color: black;
	}
	a {
		text-decoration: none;
	}
	#dws_manager{
		text-align: center;
		padding-top: 10px;
		margin-top:10px;
		padding-bottom: 70px;
	}
	.btn_index{
		padding: 8px 12px;
		background-color: blue;
		color: white;
		width: 79px;
		display: inline-block;	
		border-radius:20px;
	}
	.div_index{
		text-align:center;
		padding-bottom:22px; 
	}
	.btn13{
	background-color:#4ea1d3 ;
	
	}
	.btn13:HOVER{
		 background-color: #3C8CBE;
	}
	.btn24{
	background-color:#e85a71 ;
	}
	.btn24:HOVER{
		 background-color: #3C8CBE;
	}
	
</style>
<script src="js/jquery-3.2.1.js"></script>
<script type="text/javascript">
/*등록 클릭 이벤트*/
function checked() {
	frminsert.submit();
}
</script>
</head>
<body>
	<div id = "content">
		<div id="dws_title"><a href="index.html"> 디지털 웹 솔루션	<br> 개발자 과정 1기</a></div>
		<div id="dws_manager"> - 학사관리 - </div>
		<div class="div_index"><a href="html/ReInsert.html" class="btn_index btn13">학생 등록</a></div>
		<div class="div_index"><a href="Update.jsp" class="btn_index btn24">학생 수정</a></div>
		<div class="div_index"><a href="html/ReDelete.html" class="btn_index btn13">학생 취소</a></div>
		
		<!-- <form action="DwsSelect" name="frminsert" method="post"> -->
			<div class="div_index"><a href="DwsSelect" class="btn_index btn24">출  석  부</a></div>
		<!-- </form>javascript:checked() -->
	</div>
</body>
</html>