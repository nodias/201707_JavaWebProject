<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%response.setCharacterEncoding("UTF-8");  %>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
			<meta name="viewport" content="width=device-wid th, initial-scale=1">
				<title>인덱스</title>
				<link rel="stylesheet" href="./bootstrap/css/bootstrap.css"/>
				<script type="text/javascript" src="./js/jquery-1.12.4.min.js"></script>
				<script type="text/javascript" src="./bootstrap/js/bootstrap.js"></script>
			</head>
			<body>

				<div class="container">
					<!-- Trigger the modal with a button -->

					<!-- Modal -->
					<div class="modal fade" id="myModal" role="dialog">
						<div class="modal-dialog">

							<!-- Modal content-->
							<div class="modal-content">
								<div class="modal-header">
									<h4 class="modal-title">MOVIERS는 영화를 추천해주는 최강의 사이트 입니다.</h4>
								</div>
								<div class="modal-body" id="index_modal">
									<a href="./member/login.ss">로그인</a>
								</div>
								<div class="modal-footer"></div>
							</div>
						</div>
					</div>

				</div>
			<div class="clearfix">
				<div class=”pull-left“>
				<c:choose>
					<c:when test="${id==null }">
						<script>
							$('#myModal').modal({backdrop: 'static', keyboard: false})
						</script>
					</c:when>
					<c:when test="${id=='admin' }">
					<div class="clearfix"></div>
					<div class=”pull-left“>
						<a  class="navbar-brand" href="./member/adminMemberList.ss">관리자모드 접속(회원 목록 보기)</a>
					</div>
					</c:when>
				</c:choose>
				</div>
				</div>
				<script type="text/javascript">
					var naver_id_login = new naver_id_login("nZkKTZTbLF_d4yAjblE1", "http://127.0.0.1:8081/MovieR/");
					// 접근 토큰 값 출력
					alert(naver_id_login.oauthParams.access_token);
					// 네이버 사용자 프로필 조회
					naver_id_login.get_naver_userprofile("naverSignInCallback()");
					// 네이버 사용자 프로필 조회 이후 프로필 정보를 처리할 callback function
					function naverSignInCallback() {
						alert(naver_id_login.getProfileData('email'));
						alert(naver_id_login.getProfileData('nickname'));
						alert(naver_id_login.getProfileData('age'));
					}
				</script>
				
			</body>
		</html>
