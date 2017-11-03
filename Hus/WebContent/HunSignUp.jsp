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
 	/* background-color: #F5F6F7 */
/*  	border: 1px solid green;*/
 }
table {
	width : 300px;
	/* height : 300px; */
 	margin: 0px auto;
 	padding: 0px;
 	border: 0px;
 	border-collapse: collapse;
 	line-height: 50%;
 	
	border: 1px solid blue; 
 }
 input{
 	border:0px;
 	padding: 10px 35px  10px 15px;
 }
 tr, td{
 padding:10px;
 border: 1px solid gray; 
 }
 .ExText{
 	/* border: 1px solid yellow; */
 }
 .ExMenu{
 	font-size: 12px;
 	/* border: 1px solid yellow; */
 }
 #contentLayout {
 	width : 300px;
 	margin: 0 auto;
 	/* border: 1px solid gray; */
 }
 #savres{
 	width : 300px;
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
  .srbtu1{
 
 	background-color: #EAEAEA;
 	margin : 0px auto;
 	padding: 2px 5px 5px 5px;
 	text-align: center;
 	text-decoration: none;
 	border-radius:3px;
 	font-size: 13px;
 }
 .span_ck{
	font-size: 10px;
	color: #e85a71;
	display: none;
	padding: 5px;
	margin: 0px;
 }
 #headername{
 	text-align: center;
 	font-size: 20px;
 }
 .zipbtn{
	margin: 0px;
	padding: 2px 5px 5px 5px;
	background-color: #EAEAEA;
 }

</style>
<script src="js/jquery-3.2.1.min.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		$("input").focus(function(){
			$(this).css("background-color","#EAEAEA");
		});
		$("input").blur(function(){
			$(this).css("background-color","white");
			$("#zipbtn").css("background-color","#EAEAEA");
			
		});
		
		/* 무결성 검사 */
		$("#SignUpID").blur(function(){
			if($("#SignUpID").val()==""){
				$("#span_id").css("display","block");
			}else{
				$("#span_id").css("display","none");
			}
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
		$("#sample6_postcode").blur(function(){
			if($("#sample6_postcode").val()==""){
				$("#span_zip").css("display","block");
				$("#span_add2").css("display","none");
			}else{
				$("#span_zip").css("display","none");
			}
		});
/* 		$("#sample6_address").blur(function(){
			if($("#sample6_address").val()==""){
				$("#span_add1").css("display","block");
				$("#span_add2").css("display","none");
				$("#span_zip").css("display","none");
			}else{
				$("#span_add1").css("display","none");
			}
		});*/
		$("#sample6_address2").blur(function(){
			if($("#sample6_address2").val()==""){
				$("#span_add2").css("display","block");
				$("#span_zip").css("display","none");
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
		
		var re_id = /^[a-z0-9_-]{3,16}$/; // 아이디 검사식
		var re_pw = /^[a-z0-9_-]{6,18}$/; // 비밀번호 검사식
		var re_mail = /^([\w\.-]+)@([a-z\d\.-]+)\.([a-z\.]{2,6})$/; // 이메일 검사식
		var re_url = /^(https?:\/\/)?([a-z\d\.-]+)\.([a-z\.]{2,6})([\/\w\.-]*)*\/?$/; // URL 검사식
		var re_tel = /^[0-9]{8,11}$/; // 전화번호 검사식
		
 		var
		form = $("#forminsert"),
		uid = $("#SignUpID"),
		upw = $("#SUPw"),
		urepw = $("#ReSUPw"),
		uname = $("#SUName"),
		umail = $("#SUEmail"),
		uphone = $("#SUPhone"),
		uzip = $("#sample6_postcode"),
		uadd1 = $("#sample6_address"),
		uadd2 = $("#sample6_address2"),
		reuckuid = $("#reckuid"),
		uckuid = $("#ckuid");
		 var
		 id = $.trim(uid.val()),
		 pw =  $.trim(upw.val()),
		 repw =  $.trim(urepw.val()),
		 name =  $.trim(uname.val()),
		 zip =  $.trim(uzip.val()),
		 add1 =  $.trim(uadd1.val()),
		 add2 = $.trim(uadd2.val()),
		 mail = $.trim(umail.val()),
		 phone =  $.trim(uphone.val()),
		 reckid = $.trim(reuckuid.val()),
		 ckid = $.trim(uckuid.val());
		 
		 /*유효성 검사*/
		if(id == ""){
			uid.focus();
			$("#span_id").css("display","block");
			return false;
		}else if(!re_id.test(id)){
			uid.focus();
			$("#span_id").text("유효하지않는 아이디입니다.").css("display","block");
			return false;	
		}
		
		if(ckid == "1"){
			uid.focus();
			$("#span_id").text("중복체크 해주세요.").css("display","block");
			return false;	
		}
		
		
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
			$("#span_rpw").text("동일하지않습니다.").css("display","block");
			return false;
		}	
		
		if(name == ""){
			uname.focus();
			$("#span_name").css("display","block");
			return false;
		}
		if(zip == ""){
			uzip.focus();
			$("#span_zip").css("display","block");
			$("#span_add1").css("display","none");
			return false;
		}else{
			$("#span_zip").css("display","none");
			$("#span_add1").css("display","none");
		}
/* 		if(add1 == ""){
			uadd1.focus();
			$("#span_zip").css("display","none");
			$("#span_add1").css("display","block");
			return false;
		} */
 		if(add2 == ""){
			uadd2.focus();
			$("#span_add2").css("display","block");
			$("#span_zip").css("display","none");
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
		/* 정규식 
		if(phone==""){
			alert("널값");
			uphone.focus();
			return false;
		}else if(!re_tel.test(phone)){
			alert("잘못입력");
			uphone.focus();
			return false;	
		}
		 */
/* 		if(id != reckid){
			uid.focus();
			$("#span_id").text("!!!중복체크 해주세요.").css("display","block");
			return false;	
		} */
		if(reckid != id){
			/* alert("reckid값 : "+reckid+"//id값"+id); */
			uid.focus();
			$("#span_id").text("ID가 변경되었습니다. 중복체크해주세요.").css("display","block");
			return false;
		}
		
		form.submit(); 
	});
	$(document).on("click", ".btn12" , function(){
		//새창의 크기
		cw=550;
		ch=300;
		//스크린의 크기
		sw=screen.availWidth;
		sh=screen.availHeight;
		// 열창의 포지션
		px=(sw-cw)/2;
		py=(sh-ch)/2;
		var re_id = /^[a-z0-9_-]{3,16}$/, // 아이디 검사식
		uid = $("#SignUpID"),
		id = $.trim(uid.val());
		if(id == ""){
			uid.focus();
			$("#span_id").css("display","block");
			return false;
		}else if(!re_id.test(id)){
			uid.focus();
			$("#span_id").text("유효하지않는 아이디입니다.").css("display","block");
			return false;	
		}else{
		//검색할 ID값 
		/* var id = $("#SignUpID").val(); */
		var url="IdckAction?ckid="+id;
		window.open(url,"_blank_1",
				"toolbar=no, menubar=no, status=no, scrollbars=no, resizable=no, left="+px
				+", top="+py
				+", width="+cw
				+", height="+ch);
		}	
		
		
	});
</script>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script>
    function sample6_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var fullAddr = ''; // 최종 주소 변수
                var extraAddr = ''; // 조합형 주소 변수

                // 사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    fullAddr = data.roadAddress;

                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                    fullAddr = data.jibunAddress;
                }

                // 사용자가 선택한 주소가 도로명 타입일때 조합한다.
                if(data.userSelectedType === 'R'){
                    //법정동명이 있을 경우 추가한다.
                    if(data.bname !== ''){
                        extraAddr += data.bname;
                    }
                    // 건물명이 있을 경우 추가한다.
                    if(data.buildingName !== ''){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // 조합형주소의 유무에 따라 양쪽에 괄호를 추가하여 최종 주소를 만든다.
                    fullAddr += (extraAddr !== '' ? ' ('+ extraAddr +')' : '');
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('sample6_postcode').value = data.zonecode; //5자리 새우편번호 사용
                document.getElementById('sample6_address').value = fullAddr;

                // 커서를 상세주소 필드로 이동한다.
                document.getElementById('sample6_address2').focus();
            }
        }).open();
    }
</script>	
</head>
<body>
<header>
	<div>
		<%@include file="Header.jsp" %>
	</div>
</header>
<div id = "contentLayout">
		<form action="SignInsert" name="forminsert" id="forminsert" method="post"><br>
			<fieldset>
				<div id="headername"><b>회원정보 입력</b></div>
				<div>
					<hr>
				</div>
					<table>
					<tr>
						<td class ="ExText"><input type="text" placeholder="아이디" name="Mbid" id="SignUpID" maxlength="25" size="25">
						<a href="#" class="srbtu1 btn12" type="button">중복체크</a>
						<input type="hidden" id="ckuid" name="ckuid" value="1">
						<input type="hidden" id="reckuid" name="reckuid">
						<br><span class="span_ck" id="span_id">ID를 입력해주세요.</span>
						</td>
					</tr><tr>
						<td class ="ExText"><input type="password" placeholder="비밀번호" name="Mbpw" id="SUPw" maxlength="40" size="40">
						<br><span class="span_ck" id="span_pw">비밀번호를 입력해주세요.</span>
						</td>
					</tr><tr>	
						<td class ="ExText"><input type="password" placeholder="비밀번호 확인" name="reMbpw" id="ReSUPw" maxlength="40" size="40">
						<br><span class="span_ck" id="span_rpw">비밀번호를 다시 입력해주세요.</span>
						</td>
					</tr><tr>
						<td class ="ExText"><input type="text" placeholder="이름" name="Mbname" id="SUName" maxlength="40" size="40">
						<br><span class="span_ck" id="span_name">이름을 입력해주세요.</span>
						</td>
					</tr><tr>
						<td class ="ExText">
								<input type="text" id="sample6_postcode" placeholder="우편번호" name="Mbzipcode" class="zipaddr" maxlength="20" size="20" readonly>
								<input type="button" onclick="sample6_execDaumPostcode()" value="우편번호 찾기" class="zipbtn" id="zipbtn">
								<br><br><input type="text" id="sample6_address" placeholder="주소" name="Mbadd1"  maxlength="40" size="40" class="zipaddr" readonly>
								<br><br><input type="text" id="sample6_address2" placeholder="상세주소"  name="Mbadd2"  maxlength="40" size="40" class="zipaddr">
							<!--<input type="text" placeholder="주소" name="Mbadd1" id="SUAddr1" maxlength="40" size="40">
							<input type="text" placeholder="상세주소" name="Mbadd2" id="SUAddr2" maxlength="40" size="40"> -->
							<br><span class="span_ck" id="span_add2">상세주소를 입력해주세요.</span>
							<!--<span class="span_ck" id="span_add1">주소를 입력해주세요.</span> -->
							<span class="span_ck" id="span_zip">우편번호를 입력해주세요.</span>
						</td>
					</tr><tr>
						<td class ="ExText"><input type="text" placeholder="이메일" name="Mbmail" id="SUEmail" maxlength="40" size="40">
						<br><span class="span_ck" id="span_mail">메일을 입력해주세요.</span>
						</td>
					</tr><tr>
						<td class ="ExText"><input type="text" placeholder="연락처" name="Mbphone" id="SUPhone" maxlength="40" size="40">
						<br><span class="span_ck" id="span_phone">연락처 입력해주세요.</span>
						</td>
					</tr>
					</table>
					
				<div>
					<hr>
				</div>
				<div id="savres">
					<a href="#" class="srbtu btn13" type="submit">회원가입</a>
					<a href="IndexAction" class="srbtu" type="reset">취소</a>
				</div>
			</fieldset>
		</form>
	</div>
</body>
</html>