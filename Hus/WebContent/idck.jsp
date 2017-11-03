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
body{
	margin: 0px;
	padding: 0px;
}
#hilayout{
	margin: 20px auto;
	padding: 0px;
	width: 500px;
	height: 250px;
	background-color:black;
	border: 1px solid black;
}
#idcklayout{
	margin:5px;
	padding: 65px;
	background-color:white;
	border: 1px solid black;
}
.input_val{
	text-align: center;
}
.span_ck {
		font-size: 12px;
		color: #e85a71;
		font-family: 'Nanum Gothic', serif;
		position: absolute;
		left: 106px;
		display: none;
		margin: 10px auto;
}
#headerline{
	margin: 10px;
	padding: 5px;
}
#inputline{
	margin: 10px;
	padding: 0px;
}
#okline{
	margin:5px;
	padding: 25px;
	background-color:white;
}
</style>
<script src="js/jquery-3.2.1.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	$("#reckid").blur(function(){
		if($("#reckid").val()==""){
			$("#span_id").css("display","block");
		}else{
			$("#span_id").css("display","none");
		}
	});
});
	function closeOk() {
		var str = document.getElementById("hickuid").value;
		opener.document.forminsert.Mbpw.focus();
		opener.document.forminsert.ckuid.value="0";
		opener.document.forminsert.Mbid.value=str;
		opener.document.forminsert.reckuid.value="${message}";
		self.close();
	}
	function closeNg() {
		opener.document.forminsert.Mbid.select();
		opener.document.forminsert.ckuid.value="1";
		self.close();
	}
	
	$(document).on("click", ".btn13", function(){
 		var
 		re_id = /^[a-z0-9_-]{3,16}$/,
		form = $("#formckid"),
		uid = $("#reckid"),
		id = $.trim(uid.val());
		if(id == ""){
			uid.focus();
			$("#span_id").text("입력하고 눌러주세요.").css("display","block");
			return false;
		}else if(!re_id.test(id)){
			uid.focus();
			$("#span_id").text("유효하지않는 아이디입니다.").css("display","block");
			return false;	
		}
		
		
 		form.submit(); 
	});
</script>
</head>
<body>
<% String ckid =  request.getParameter("ckid");%>
	<div id ="hilayout">
		<div id= "idcklayout">
			<c:choose>
				<c:when test="${idCount == '0'}">
					<div class="input_val">
						<div id="okline">
							${message}는 사용 가능한 ID입니다.<br>
						<input type="hidden" id="hickuid" name="ckuid" value="<%=ckid %>">
						<button onclick="closeOk()">확인</button>
						</div>
					</div>
				</c:when>
				<c:when test="${idCount == '1'}">
					<div class="input_val">
						<form action="IdckAction" name="formckid" id="formckid" method="post">
						<div id="headerline">
							${message}는중복된 ID입니다.<br>
							다른 ID를 입력해주세요.<br>
						</div>
						<div id="inputline">
							<input type="text" id="reckid" name="ckid" placeholder="${message}" maxlength="30" size="32">
							<button type="submit" class="btn13">중복확인</button>
							<br><span id="span_id" class="span_ck">ID를 입력하세요.</span>
							<input type="hidden" id="ckuid" name="ckuid" value="1">
						</div>
						</form>
					</div>
					<!-- 	<button onclick="closeNg()">확인</button> -->
				</c:when>
			</c:choose>
		</div>
	</div>
</body>
</html>