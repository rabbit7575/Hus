 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>여행정보 검색 포털 화개장터</title>
<!-- 합쳐지고 최소화된 최신 CSS -->
<link href="css/bootstrap.min.css" rel="stylesheet">
<script src = "js/jquery-3.2.1.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<style type="text/css">
#myCarousel{
	height: 300px;
	margin: 0 auto;
}
.carousel-inner{
	width: 100%;
	margin: 0 auto;
} 
.carousel-inner > .item > img,
.carousel-inner > .item > a > img {
  margin : 0 auto;
  max-width: 100%;
  min-width: 100%;
  /* width : 1800px; */
  height: 300px;
}
.carousel-control.left {
  background-image:         linear-gradient(to right, rgba(0, 0, 0, .0) 0%, rgba(0, 0, 0, .0) 100%);
}
.carousel-control.right {
  background-image:         linear-gradient(to right, rgba(0, 0, 0, .0) 0%, rgba(0, 0, 0, .0) 100%);
}
</style>
<script type="text/javascript">
	$(document).ready(function(){
	});
</script>
</head>
<body>
	<div id="myCarousel" class="carousel slide" data-ride="carousel"> 
		<!--페이지-->
		<ol class="carousel-indicators">
  			<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
  			<li data-target="#myCarousel" data-slide-to="1"></li>
  			<li data-target="#myCarousel" data-slide-to="2"></li>
		</ol>
		<!--페이지-->
		<div class="carousel-inner">
  			<!--슬라이드1-->
  			<div class="item active"> 
  				<img class = "show_img" src="img/m01.jpg" alt="First slide">
  			</div>
  			<!--슬라이드1-->
			<!--슬라이드2-->
 			<div class="item"> 
 				<img class = "show_img" src="img/m02.jpg" data-src="" alt="Second slide" >
  			</div>
			<!--슬라이드2-->
			<!--슬라이드3-->
			<div class="item"> 
				<img class = "show_img" src="img/m03.jpg" data-src="" alt="Third slide" >
  			</div>
  		<!--슬라이드3-->
		</div>
		<!--이전, 다음 버튼-->
		<a class="left carousel-control" href="#myCarousel" data-slide="prev"><span class="glyphicon glyphicon-chevron-left"></span></a> 
		<a class="right carousel-control" href="#myCarousel" data-slide="next"><span class="glyphicon glyphicon-chevron-right"></span></a> 
	</div>
</body>
</html>
