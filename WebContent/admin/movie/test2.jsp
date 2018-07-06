<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	
	<script src="http://code.jquery.com/jquery-1.12.4.min.js"></script>

	<style>
	.wish-comment{padding:0 20px 20px 20px;position:relative;color:#6d6c83;height:20px}
	
	</style>

<link rel="stylesheet" media="screen"
	href="https://d3sz5r0rl9fxuc.cloudfront.net/assets/application/evalmore-d49a8cde22a31953fead09ba1cbfb72702eb5dadd86e2ceadeed57c991c8cc6a.css">
<script>
	$(function(){
		$(".watcha-star half left").hover(function(){
			$(this).css("background-color","yellow");
		});
		
		$(".watcha-star half right").hover(function(){
			$(this).css("background-color","yellow");
		});
	});

</script>


</head>
<body>

	<div
		class="movie-card size-1x1 poster-type base_movie  user-action-m5nj8f card grid-1 hei-1"
		style="position: absolute; left: 480px; top: 0px;">
		<div class="poster-wrapper" style="position: relative;">

			<img class="poster"
				src="https://dhgywazgeek0d.cloudfront.net/watcha/image/upload/c_fill,h_400,q_80,w_280/v1494335756/ivj6rq72wxwzrp8wxd3u.jpg"
				width="100%">

			<div id="watcha-tooltip" class="eval-tooltip rating-tooltip"
				style="z-index: 10; left: 99.5px; top: 252.281px; display: none;">
				<div class="watcha-tooltip-content">볼만해요</div>
				<div class="arrow" style="left: 24px;"></div>
			</div>

			<div class="predicted-rating"></div>

			<div class="detail-opener gradation"></div>
			<div class="bottom"></div>
			<div class="action-wrapper">
				<div class="movie-title">겟 아웃</div>
				<div class="rating">
					<span class="watcha-star half left" data-value="0.5"></span><span
						class="watcha-star half right" data-value="1"></span><span
						class="watcha-star half left" data-value="1.5"></span><span
						class="watcha-star half right" data-value="2"></span><span
						class="watcha-star half left" data-value="2.5"></span><span
						class="watcha-star half right" data-value="3"></span><span
						class="watcha-star half left" data-value="3.5"></span><span
						class="watcha-star half right" data-value="4"></span><span
						class="watcha-star half left" data-value="4.5"></span><span
						class="watcha-star half right" data-value="5"></span>
				</div>

				<div class="wish-comment">
					<div class="wish">
						<span class="icon"></span> 보고싶어요ㅎㅎ
					</div>

				</div>



			</div>
		</div>



	</div>

</body>
</html>


