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
 body{
 	margin: 0px;
 	padding: 0px;
 	border: 0px;
 /* 	background-color: #F5F6F7 */
/*  	border: 1px solid green;*/
 }
table {
	width : 700px;
	height : 500px;
 	margin: 0px;
 	padding: 0px;
 	border: 0px;
 /* 	border: 1px solid blue; */
 }
 .ExText{
 	/* border: 1px solid yellow; */
 }
 .ExMenu{
 	font-size: 12px;
 	/* border: 1px solid yellow; */
 }
 #contentLayout {
 	width : 700px;
 	margin: 0 auto;
 	/* border: 1px solid gray; */
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
 #SignUpID{
 	background-color:#FFF29E;
 }
  .span_ck{
	font-size: 12px;
	color: #e85a71;
	display: none;
 }
</style>
<script src="js/jquery-3.2.1.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		$("input").focus(function(){
			$(this).css("background-color","#EAEAEA");
		});
		$("input").blur(function(){
			$(this).css("background-color","white");
		});
		
		
		$("#SUPw").blur(function(){
			if($("#SUPw").val()==""){
				$("#span_pw").css("display","block");
			}else{
				$("#span_pw").css("display","none");
			}
		});
		$("#ReSUPw").blur(function(){
			if($("#ReSUPw").val()==""){
				$("#span_rpw").css("display","block");
			}else{
				$("#span_rpw").css("display","none");
			}
		});
		$("#SUName").blur(function(){
			if($("#SUName").val()==""){
				$("#span_name").css("display","block");
			}else{
				$("#span_name").css("display","none");
			}
		});
		$("#SUAddr1").blur(function(){
			if($("#SUAddr1").val()==""){
				$("#span_add1").css("display","block");
			}else{
				$("#span_add1").css("display","none");
			}
		});
		$("#SUAddr2").blur(function(){
			if($("#SUAddr2").val()==""){
				$("#span_add2").css("display","block");
			}else{
				$("#span_add2").css("display","none");
			}
		});
		$("#SUEmail").blur(function(){
			if($("#SUEmail").val()==""){
				$("#span_mail").css("display","block");
			}else{
				$("#span_mail").css("display","none");
			}
		});
		$("#SUPhone").blur(function(){
			if($("#SUPhone").val()==""){
				$("#span_phone").css("display","block");
			}else{
				$("#span_phone").css("display","none");
			}
		});
	});
	$(document).on("click", ".btn13", function(){
		
		var re_pw = /^[a-z0-9_-]{6,18}$/; // 비밀번호 검사식
		var re_mail = /^([\w\.-]+)@([a-z\d\.-]+)\.([a-z\.]{2,6})$/; // 이메일 검사식
		var re_url = /^(https?:\/\/)?([a-z\d\.-]+)\.([a-z\.]{2,6})([\/\w\.-]*)*\/?$/; // URL 검사식
		var re_tel = /^[0-9]{8,11}$/; // 전화번호 검사식
		
		var
		form = $("#formupdate");
		uid = $("#SignUpID"),
		upw = $("#SUPw"),
		urepw = $("#ReSUPw"),
		uname = $("#SUName"),
		uadd1 = $("#SUAddr1"),
		uadd2 = $("#SUAddr2"),
		umail = $("#SUEmail"),
		uphone = $("#SUPhone");
		
		var
		 pw =  $.trim(upw.val()),
		 repw =  $.trim(urepw.val()),
		 name =  $.trim(uname.val()),
		 add1 =  $.trim(uadd1.val()),
		 add2 = $.trim(uadd2.val()),
		 mail = $.trim(umail.val()),
		 phone =  $.trim(uphone.val());
		
		if(pw == ""){
			upw.focus();
			$("#span_pw").css("display","block");
			return false;
		}else if(!re_pw.test(pw)){
			upw.focus();
			$("#span_pw").text("영문과 숫자를 조합하여 입력하세요.").css("display","block");
			return false;	
		}
		if(repw == ""){
			urepw.focus();
			$("#span_rpw").css("display","block");
			return false;
		}else if(pw != repw){
			urepw.focus();
			urepw.val("");
			$("#span_rpw").text("다릅니다.").css("display","block");
			return false;
		}	
		
		if(name == ""){
			uname.focus();
			$("#span_name").css("display","block");
			return false;
		}
		if(add1 == ""){
			uadd1.focus();
			$("#span_add1").css("display","block");
			return false;
		}
		if(add2 == ""){
			uadd2.focus();
			$("#span_add2").css("display","block");
			return false;
		}
		if(mail == ""){
			umail.focus();
			$("#span_mail").css("display","block");
			return false;
		}else if(!re_mail.test(mail)){
			umail.focus();
			$("#span_mail").text("잘못입력하셨습니다.").css("display","block");
			return false;	
		}
		if(phone == ""){
			uphone.focus();
			$("#span_phone").css("display","block");
			return false;
		}else if(!re_tel.test(phone)){
			uphone.focus();
			$("#span_phone").text("잘못입력하셨습니다.").css("display","block");
			return false;	
		}
		form.submit();
	});
</script>	
</head>
<body>
<header>
	<div>
		<%@include file="Header.jsp" %>
	</div>
</header>
<div id = "contentLayout">
		<form action="SignUpUpdate" name="formupdate" id="formupdate" method="post"><br>
			<fieldset>
				<div><b>회원정보 수정</b></div>
				<div>
					<hr>
				</div>
					<table>
					<tr>
						<td class ="ExMenu"><label for="SignUpID">아이디</label></td>
						<td class ="ExText"><input type="text"  readonly="readonly" placeholder="${sessionScope.loginUser.shopid}" value="${sessionScope.loginUser.shopid}" name="Mbid" id="SignUpID" maxlength="15" size="15"></td>
					</tr><tr>
						<td class ="ExMenu"><label for="SUPw">비밀번호</label></td>
						<td class ="ExText"><input type="password" value="${sessionScope.loginUser.shoppw}" name="Mbpw" id="SUPw" maxlength="15" size="15"></td>
					</tr><tr>	
						<td></td><td><span class="span_ck" id="span_pw">비밀번호를 입력해주세요.</span></td>
					</tr><tr>
						<td class ="ExMenu"><label for="ReSUPw">비밀번호 확인</label></td>
						<td class ="ExText"><input type="password" value="" name="ReMbpw" id="ReSUPw" maxlength="15" size="15"></td>
					</tr><tr>	
						<td></td><td><span class="span_ck" id="span_rpw">비밀번호를 다시 입력해주세요.</span></td>
					</tr><tr>
						<td class ="ExMenu"><label for="SUName">이름</label></td>
						<td class ="ExText"><input type="text" value="${sessionScope.loginUser.shopname}" name="Mbname" id="SUName" maxlength="15" size="15"></td>
					</tr><tr>
						<td></td><td><span class="span_ck" id="span_name">이름을 입력해주세요.</span></td>
					</tr><tr>
						<td class ="ExMenu"><label for="SUAddr1">주소</label></td>
						<td class ="ExText"><input type="text" value="${sessionScope.loginUser.shopadd1}" name="Mbadd1" id="SUAddr1" maxlength="40" size="40"></td>
					</tr><tr>
						<td></td><td><span class="span_ck" id="span_add1">주소를 입력해주세요.</span></td>
					</tr><tr>
						<td class ="ExMenu"><label for="SUAddr2">상세주소</label></td>
						<td class ="ExText"><input type="text" value="${sessionScope.loginUser.shopadd2}" name="Mbadd2" id="SUAddr2" maxlength="40" size="40"></td>
					</tr><tr>
						<td></td><td><span class="span_ck" id="span_add2">상세주소를 입력해주세요.</span></td>
					</tr><tr>
						<td class ="ExMenu"><label for="SUEmail">e-메일</label></td>
						<td class ="ExText">
						<input type="text" value="${sessionScope.loginUser.shopmail}" name="Mbmail" id="SUEmail" maxlength="30" size="30">
						</td>
					</tr><tr>
						<td></td><td><span class="span_ck" id="span_mail">메일을 입력해주세요.</span></td>
					</tr><tr>
						<td class ="ExMenu"><label for="SUPhone">연락처</label></td>
						<td class ="ExText"><input type="text" value="${sessionScope.loginUser.shopphone}" name="Mbphone" id="SUPhone" maxlength="15" size="15"></td>
					</tr><tr>
						<td></td><td><span class="span_ck" id="span_phone">연락처 입력해주세요.</span></td>
					</tr>
					
					</table>
				<div>
					<hr>
				</div>
				<div id="savres">
					<a href="#" class="srbtu btn13">회원수정</a>
					<a href="#" class="srbtu" type="reset">취소</a>
				</div>
			</fieldset>
		</form>
	</div>
</body>
</html>