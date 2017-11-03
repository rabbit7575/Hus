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
  <link rel="stylesheet" href="css/bootstrap.min.css">
 <style type="text/css">
@import url(http://fonts.googleapis.com/earlyaccess/nanumgothic.css);
	body, ul {
		margin: 0px;
		padding : 0px;
		
		/* background-color: #F5F6F7; */
	}
	/* 로고 이미지 구간*/
	#content_layout {
		margin: 10px 20px 20px 20px;
		padding: 0px;
	}
	
	
	/*로그인 구간 */
	
	.div_input{
		background-color: white;
		border: 1px solid #dadada;
		margin-bottom: 14px;
		padding: 7px 10px;
		width: 450px;
		height: 35px;
	}
	.input_login{
		border-width: 0px;
		width: 408px;
		height : 20px;
		padding : 7px 0px 6px 0px;
		/* border: 1px solid red; */
	}
	
	#btn_login{
		width: 450px;
		height: 59px;
		text-decoration: none;
		background-color: black;
		display: block;
		text-align: center;
		color: white;
		font-size: 22px;
		padding-top: 2px;
		line-height: 61px;
		margin:  30px 0px 13px 0px;
	}
	.logo_a{
		text-decoration: none;
		font-family: 'Fjalla One', sans-serif;
	}
	.logo_spanB{
		color: black;
		text-decoration: none;
		font-size : 55px;
	}
	.logo_spanS{
		color: black;
		text-decoration: none;
		font-size : 25px;
	}
	#member{
		font-size: 12px;
		text-align: center;
		color: #8C8C8C;
	}
	 .member_a:LINK, .member_a:VISITED {
		color: inherit;
		text-decoration: none;
		/*inhreit 하면 부모의 색상 물려 받는당*/
	}
	.member_a:HOVER {
	   text-decoration: underline;
	}
	.span_ck{
		font-size: 12px;
		color: #e85a71;
		display: none;
 	}
 	#content_layout2{
		width: 450px;
		height : 400px;
		margin: 0 auto;
		padding: 0px;
		/* border: 1px solid blue; */
 	}
 	#endbutton{
 		margin: 0px;
 		padding: 0px;
 	}
 	.modal-dialog{
 		width: 560px;
 		margin: 0px auto;
 		top:70px;
 	}
 	#loginlogo{
 		width: 280px;
		text-align: center;
		/*margin: 0 auto; 중앙 */
		padding: 0px;
 	}
</style>
  <script src="js/jquery-3.2.1.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script type="text/javascript">
	$(document).ready(function() {

		$("#inputid").focus(function(){
			$("#huns_id").css("border","1px solid grey")
		});
		$("#inputid").blur(function(){
			$("#huns_id").css("border","1px solid #dadada")
		});
		
		$("#inputps").focus(function(){
			$("#huns_ps").css("border","1px solid grey")
		});
		$("#inputps").blur(function(){
			$("#huns_ps").css("border","1px solid #dadada")
		});
		$("#inputid").blur(function(){
			if($("#inputid").val()==""){
				$("#span_id").css("display","block");
				$("#span_pw").css("display","none");
				$("#span_ip").css("display","none");
			}else{
				$("#span_id").css("display","none");
			}
		});
		$("#inputps").blur(function(){
			if($("#inputps").val()==""){
				$("#span_pw").css("display","block");
				$("#span_id").css("display","none");
				$("#span_ip").css("display","none");
			}else{
				$("#span_pw").css("display","none");
			}
		});
		
		$("#off_a").click(function(){
			var temp = $("#off").text();
			if(temp=="OFF"){
				$("#off_a").text("ON").css("color","#1fbc02");
			}else{
				$("#off_a").text("OFF").css("color","#666666");
			}
		}); 
 	});
	$(document).on("click", ".btn13", function(){
		var
		form = $("#formlogin");
		uid = $("#inputid");
		upw = $("#inputps");
		
		var
		id = $.trim(uid.val()),
		pw =  $.trim(upw.val());
		
		if(id == ""){
			uid.focus();
			$("#span_id").css("display","block");
			$("#span_pw").css("display","none");
			$("#span_ip").css("display","none");
			return false;
		}else if(pw == ""){
			upw.focus();
			$("#span_pw").css("display","block");
			$("#span_id").css("display","none");
			$("#span_ip").css("display","none");
			return false;
		}
		form.submit();
		
		
	});
	$(document).on("click", ".close", function(){
		$("#span_pw").css("display","none");
		$("#span_id").css("display","none");
		$("#span_ip").css("display","none");
	});
	</script>
	<script type="text/javascript">
	window.onload = function(){
		var code = ${code};
		if(code == "2"){
			/*  $("#span_pw").text("아이디 또는 비밀번호가 다릅니다.").css("display","block");  */
			document.getElementById('span_ip').style.display="block"; 
			 $('#myModal').modal({ show: 'true' });
		}else{
			
		}
	};
	
</script>
</head>
<body>
<div class="modal fade" id="myModal" role="dialog">
	<div class="modal-dialog">
	      <!-- Modal content-->
	      <div class="modal-content">
		      <div id ="content_layout">
		      	<div id="endbutton">
			    	<button type="button" class="close" data-dismiss="modal">&times;</button>
			    </div><br>
			     <div id ="content_layout2">
					<header >
						<div id="logo">
							<a class="logo_a" href="#">
								<div id="loginlogo" >
									<span class="logo_spanB">LOGIN</span><br>
									<span class="logo_spanS">HUNS</span>
									<br><br>
								</div>
							</a>
						</div>
					</header>
					<section>
						<form action="LoginAction" name="formlogin" id="formlogin" method="post">
							<div class="div_input" id="huns_id">
								<input type="text" placeholder="아이디"  class="input_login"  name="inputid" id="inputid">
							</div>
							<div class="div_input" id="huns_ps">
								<input type="password" placeholder="비밀번호"  class="input_login"  name="inputps"  id="inputps">
							</div>
							<div>
								<span class="span_ck" id="span_id">아이디를 입력해주세요.</span>
							</div>
							<div>
								<span class="span_ck" id="span_pw">비밀번호를 입력해주세요.</span>
							</div>
							<div>
								<span class="span_ck" id="span_ip">아이디 또는 패스워드가 달라~~요!!! 안알려줌 !!!</span>
							</div>
							<div>
								<a id = "btn_login" class="btn13" href="#">로그인</a>
							</div>
						</form>
						<div>
							<hr>
						</div>
						<div id = "member">
							<a class="member_a" href="#">아이디 찾기</a>&nbsp <span class="si">|</span>&nbsp
							<a class="member_a" href="#">비밀번호 찾기</a>&nbsp <span class="si">|</span>&nbsp
							<a class="member_a" href="HunSignUp.jsp">회원가입</a>
						</div>
					</section>
				</div>
			</div>
		</div>
	</div>
</div>
</body>
</html>