<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
	width: 260px;
	height: 400px;
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
	width: 40px;
	display: inline-block;
	border-radius: 20px;
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
	
	
	/* 클릭 이벤트 */
	$("#input_id").blur(function(){
		if($("#input_id").val()==""){
			$("#span_id").css("display","block");
		}else{
			$("#span_id").css("display","none");
		}
	});
	$("#input_name").blur(function(){
		if($("#input_name").val()==""){
			$("#span_name").css("display","block");
		}else{
			$("#span_name").css("display","none");
		}
	});
	$("#input_age").blur(function(){
		if($("#input_age").val()==""){
			$("#span_age").css("display","block");
		}else{
			$("#span_age").css("display","none");
		}
	});
	$("#input_major").blur(function(){
		if($("#input_major").val()==""){
			$("#span_major").css("display","block");
		}else{
			$("#span_major").css("display","none");
		}
	});
	$("#input_phone").blur(function(){
		if($("#input_phone").val()==""){
			$("#span_phone").css("display","block");
		}else{
			$("#span_phone").css("display","none");
		}
	});
});

$(document).on("click", ".btn13", function(){
	var
	form = $("#firminsert"),
	uid = $("#input_id"),
	uname = $("#input_name"),
	uage = $("#input_age"),
	umajor = $("#input_major"),
	uphone = $("#input_phone");
	
	var id = $.trim(uid.val());
	if(id == ""){
		uid.focus();
		$("#span_id").css("display","block");
		return false;
	}
	var name = $.trim(uname.val());
	if(name == ""){
		uname.focus();
		$("#span_name").css("display","block");
		return false;
	}
	var age = $.trim(uage.val());
	if(age == ""){
		uage.focus();
		$("#span_age").css("display","block");
		return false;
	}else if($.isNumeric(age) == false){
		uage.focus();
		uage.val("");
		$("#span_age").text("숫자를 입력해주세요.").css("display","block");
		return false;
	}else if(age.length >2){
		uage.focus();
		uage.val("");
		$("#span_age").text("99세미만 입력해주세요.").css("display","block");
		return false;
	}else if(age < 22 || age > 40){
		uage.focus();
		uage.val("");
		$("#span_age").text("22부터 40세까지 입력해주세요.").css("display","block");
		return false;
	}
	var major = $.trim(umajor.val());
	if(major == ""){
		umajor.focus();
		$("#span_major").css("display","block");
		return false;
	}
	var phone = $.trim(uphone.val());
	if(phone == ""){
		uphone.focus();
		$("#span_phone").css("display","block");
		return false;
	}else if($.isNumeric(phone) == false){
		uphone.focus();
		uphone.val("");
		$("#span_phone").text("숫자만 입력해주세요.").css("display","block");
		return false;
	}else if(phone.length != 11){
		uphone.focus();
		uphone.val("");
		$("#span_phone").text("연락처11자를 입력해주세요.").css("display","block");
		return false;
	}
	
	form.submit();
		
});
	
	/*등록 클릭 이벤트 alert("확인");	*/
	/* 	function checked() {
			frminsert.submit();
		}  */
</script>
</head>
<body>
	<div id="content">
		<div id="dws_title"><a href="index.html">  디지털 웹 솔루션 <br> 개발자 과정 1기</a></div>
		<div id="dws_manager">- 학생 수정 -</div>

		<form action="DwsUpdate" name="firminsert" id="firminsert" method="post">
			<table>
				<tr>
					<td><label for="input_id">변경 ID:</label></td>
					<td><input type="text" id="input_id" name="id" placeholder="변경할 ID" maxlength="20" size="20"></td>
				</tr>
				<tr>
				<td></td>
				<td><span class="span_ck" id="span_id">ID를 입력해주세요</span></td>
				</tr>
				<tr>
					<td><label for="input_name">이름:</label></td>
					<td><input type="text" id="input_name" name="name" placeholder="이름" maxlength="20" size="20"></td>
				</tr>
				<tr>
				<td></td>
				<td><span class="span_ck" id="span_name">이름을 입력해주세요</span></td>
				<tr>
					<td><label for="input_age">나이:</label></td>
					<td><input type="text" id="input_age" name="age" placeholder="나이" maxlength="20" size="20"></td>
				</tr>
				<tr>
				<td></td>
				<td><span class="span_ck" id="span_age">나이를 입력해주세요</span></td>
				</tr>
				<tr>
					<td><label for="input_major">전공:</label></td>
					<td><input type="text" id="input_major" name="major" placeholder="전공" maxlength="20" size="20"></td>
				</tr>
				<tr>
				<td></td>
				<td><span class="span_ck" id="span_major">전공을 입력해주세요</span></td>
				</tr>
				<tr>
					<td><label for="input_phone">전화번호:</label></td>
					<td><input type="text" id="input_phone" name="phone" placeholder="전화번호" maxlength="20" size="20"></td>
				</tr>
				<tr>
				<td></td>
				<td><span class="span_ck" id="span_phone">연락처를 입력해주세요</span></td>
				</tr>
			</table>
			<div id="btu">
				<!-- <span><a href="javascript:checked()" class="btn_index btn13">등록</a></span> -->

				<span class="srbtn"><a href="#" class="btn_index btn13">확인</a></span>
				<span class="srbtn"><a href="index.html" class="btn_index btn24">취소</a></span>
			</div>
		</form>
	</div>
</body>
</html>