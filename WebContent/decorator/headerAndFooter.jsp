<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="decorator" uri="http://www.opensymphony.com/sitemesh/decorator"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%response.setCharacterEncoding("UTF-8");  %>
<% response.setContentType("text/javascript;charset=UTF-8");%>


<!-- 1. /Content/WEB-INF/web.xml filter 선언 /* -->
<!-- 2. /Content/WEB-INF/sitemesh.xml -> 분해기, 조립기 선언 / 꾸미기 파일 선언 -->
<!-- 3. /Content/WEB-INF/decorations.xml -> 꾸미기 파일(jsp)선언 패턴들 선언 -->
<!-- 4. /Content/decorator/default_decorator.jsp - 꾸미는 jsp 만들기 -->

<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
			<meta name="viewport" content="width=device-width, initial-scale=1">
				<title>MOVIER:<decorator:title/></title>
				<link rel="stylesheet" href="http://localhost:8081/MovieR/bootstrap/css/bootstrap.css"/>
				<script type="text/javascript" src="http://localhost:8081/MovieR/js/jquery-1.12.4.min.js"></script>
				<script type="text/javascript" src="http://localhost:8081/MovieR/bootstrap/js/bootstrap.js"></script>
				<script src="http://malsup.github.com/jquery.form.js"></script>
				<script type="text/javascript">
				
				function fileCheck() {
					var filebing = document.getElementById('file').value;
					
					var fileName = filebing.slice(filebing.indexOf(".") + 1).toLowerCase();
					if (fileName != "jpg" && fileName != "png" && fileName != "gif"
							&& fileName != "bmp") {
						alert('이미지 파일(jpg, png, gif, bmp)만 등록 가능합니다.');
						return;
					} else {
						fileName = filebing.substring(filebing.lastIndexOf("\\") + 1); 
//			 			document.write(fileName);
						for (var i = 0; i < fileName.length; i++) {
							if (fileName.substring(i, i + 1) == "") {
								alert("파일명에 공백을 쓸 수 없습니다.");
								return;
							} else{
//			 					
							}
						}
					}
					Thumnail();
				}
				
				$(function () { //모달 제어
					$('#userConf_btn').click(function () {
						$('#hfModal').modal();
						$('#hfModal').on('hidden.bs.modal', function () {
							  location.reload();
							})
					})
				});
				
				$(function(){
					$("#file").on("change",function(){
						fileCheck();
					})
				})
				
				

				function Thumnail() {
 							var form = $('#log_frm')[0];
 							var formData = new FormData(form);
 							         var form = $('form')[0];
 							         var formData = new FormData(form);
 							             $.ajax({
 							                url: 'http://localhost:8081/MovieR/member/imageThum.ss',
 							                processData: false,
 							                contentType: false,
 							                enctype: "multipart/form-data",
 							                data: formData,
 							                type: 'POST',
 							                success: function(result){
 							                	$('#photo').html("<img src='http://localhost:8081/MovieR/img/${sessionScope.id}_ajax.jpg'>");
 							                }
 							            });
 							}
				

				function formTrans() {
					var str = $( "#userConf_frm" ).serialize();
					$.ajax({
			                url: 'http://localhost:8081/MovieR/member/userConfProcess.ss?'+str,
			                dataType : "text",
			                data: str,
			                type: 'POST',
			                success : function(data) {
			                    if (data=='a') {
									alert("비밀번호가 틀립니다.");
									$("#userConf_frm")[0].reset(); 
								} else {
									alert("설정이 적용되었습니다.");
									$("#close_btn").click();
								}
			                }
			            });
				  }

				$(function(){
					$("#submit_btn").on("click",function(){
						
						if(
								$("#name").val() == '${sessionScope.name}' //닉네임 x, 비번 x
							&&$("#pw").val() == ""
							&&$("#new_pw").val() == ""
							&&$("#new_pw_check").val()  == ""){
							$("#close_btn").click();
						
					} else if ($("#name").val() != '${sessionScope.name}' //닉네임 o
						) {
							if ($("#name").val().length<2||$("#name").val().length>20) { //닉네임 길이확인 
								alert("닉네임은 최소 2자, 최대 20글자까지 설정 가능합니다");
							} else if ($("#pw").val() == ""
									&&$("#new_pw").val() == ""
									&&$("#new_pw_check").val()  == ""){ //비번 변경여부 확인 x:submit o:다음 else if
									formTrans();
									
								} else {
									if ($("#pw").val() != "") {
										if ($("#new_pw").val().length<6||$("#new_pw").val().length>20) {
											alert("비밀번호는 최소 6자, 최대 20글자까지 설정 가능합니다");
										} else if ($("#new_pw_check").val()  != $("#new_pw").val()) {
											alert("새 비밀번호가 일치하지 않습니다.");
									} else{
										formTrans();
									}
									} else {
										alert("현재 비밀번호를 입력해주세요.");
									}
								}
							} else if ($("#name").val() == '${sessionScope.name}') {
								if ($("#pw").val() != "") {
									if ($("#new_pw").val().length<6||$("#new_pw").val().length>20) {
										alert("비밀번호는 최소 6자, 최대 20글자까지 설정 가능합니다");
									} else if ($("#new_pw_check").val()  != $("#new_pw").val()) {
										alert("새 비밀번호가 일치하지 않습니다.");
								} else{
									formTrans();
								}
								} else {
									alert("현재 비밀번호를 입력해주세요.");
								}
								
					}
						
					});
					
					$( "#userConf_frm" ).reset();
				});
				
				</script>
				<style media="screen">
					.dropdown:hover .dropdown-menu {
						display: block;
						margin-top: 0; 
					}
					.dropdown {
						width: 100px;
					}
					.ip {
						
						size: 150px;
					}
					
					#user_name {
						  width: 940px;
 						 .center-block();
					}
					
					h1 {
					}

				#img_p{
					min-width:  40px;
					height : 40px;
					width : 40px;
					max-width: 40px;
				}
				
				#user_name2{
					width: 80px;
				}
				
				#index_btn{
					text-align: center;
					size: 120px;
					margin-top: 10px;
					margin-left: 18px;
					font-size: 20px;
				}
				</style>

				<decorator:head/>
			</head>

			<body>
					<!-- Trigger the modal with a button -->

					<!-- Modal -->
					<div class="modal fade" id="hfModal" role="dialog" >
						<div class="modal-dialog">

							<!-- Modal content-->
							<div class="modal-content" >
								<div class="modal-header">
									<h4 class="modal-title">MOVIERS는 영화를 추천해주는 최강의 사이트 입니다.</h4>
								</div>
								<div class="modal-body" id="header_modal">
								<div>
								<div id="photo"  align="center" ><img src="http://localhost:8081/MovieR/img/${sessionScope.id}.jpg" onerror="this.src='http://localhost:8081/MovieR/img/base.jpg'" border="0"> </div>
									<form action="#" id="log_frm" method="post" enctype="multipart/form-data"  name="log_frm">
									<!--@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@-->
										<input multiple="multiple" type="file" name="fileName" id="file" style=" right: 0px; top: 0px; font-family: Arial; font-size: 15px; margin: 0px; padding: 0px; cursor: pointer; opacity: 0;"> <br />
									</form>
									
									<form action="http://localhost:8081/MovieR/member/userConfProcess.ss" method="post" name="userConf_frm" id="userConf_frm"> <!-- 유저 세팅폼  -->
										
										<table class="table table-hover">
										
											<tr>
												<td>
													<label for="id">이메일</label>
												</td>
												<td>${sessionScope.id }&nbsp;&nbsp;<button type="button" class="btn btn-default">변경하기</button>
												</td>
											</tr>
											<tr>
												<td>
													<label for="name">닉네임</label>
												</td>
												<td>
													<input type="text" class="ip" id="name" name="name" value="${sessionScope.name }" width="px"></td>
												</tr>
												<tr>
													<td rowspan="3" valign="top">
														<label for="password">비밀번호 변경</label>
													</td>
													<td>
														<input type="password" class="ip" id="pw" name="pw" required placeholder="기존 비밀번호 "></td>
													</tr>
													<tr>
														<td>
															<input type="password" class="ip" id="new_pw" name="new_pw" required placeholder=" 새 비밀번호 "></td>
														</tr>
														<tr>
															<td>
																<input type="password" class="ip" id="new_pw_check" name="new_pw_check" required placeholder="새 비밀번호 확인"></td>
															</tr>
														</table>
														<div hidden="true" id="hide"></div>
													</form>
												</div>
												<div class="modal-footer">
<%-- 										<a href="http://localhost:8081/MovieR/member/withdraw.ss?id=${sessionScope.id }" id="withdraw">탈퇴하기</a> --%>
												<a href="#" id="withdraw">탈퇴하기</a>
												<script type="text/javascript">
												$(function () { //모달 제어
													$('#withdraw').click(function () {
														
													})
												});
												</script>
												<button type="button" class="btn btn-default" id="submit_btn">확인</button>
												<button type="button" class="btn btn-default" data-dismiss="modal" id = "close_btn">Close</button>
												</div>
											</div>
<!-- 											Modal 끝 -->
										</div>
									</div>
								</div>
								
								<header class="row">
								<div class="navbar navbar-default" > 	
									<div class="col-md-1" id="#index_btn2"> 
											<a class="nav navbar-nav" id="index_btn"  href="http://localhost:8081/MovieR/index.ss"><b>MOVIER</b></a>
									</div>
									<div class="col-md-9">
											<ul class="nav navbar-nav">
											<li><a  href="http://localhost:8081/MovieR/movie/evalMore.jh">평가늘리기</a></li>
											<li><a  href="http://localhost:8081/MovieR/movie/recommendation.jh">추천영화</a></li>
											<li><a  href="#">자유게시판</a></li>
										
										</ul>
									</div>
										<div class="col-md-2">
										<div class="navbar-brand">
										<div class="dropdown" id="user_name2">
											<a class="dropdown-toggle" href="#" id="user_name" >${sessionScope.name }</a>
											<ul class="dropdown-menu">
												<li>
													<a href="#">영화보관함</a>
												</li>
												<li>
													<a href="#" id="userConf_btn">회원설정</a>
													
												</li>
												<li>
													<a href="http://localhost:8081/MovieR/member/logoutProcess.ss">로그아웃</a>
												</li>
												<c:choose>
													<c:when test="${id=='admin'}">
														<li>
															<a href="http://localhost:8081/MovieR/MovieList.jh">영화관리</a>
														</li>
														<li>
															<a href="http://localhost:8081/MovieR/DirectorList.jh">감독관리</a>
														</li>
														<li>
															<a href="http://localhost:8081/MovieR/ActorList.jh">배우관리</a>
														</li>
														<li>
															<a href="http://localhost:8081/MovieR/GenreList.jh">장르관리</a>
														</li>
													</c:when>
												</c:choose>
											</ul>
										</div>
										
										</div>
										<img src="http://localhost:8081/MovieR/img/${sessionScope.id}.jpg" onerror="this.src='http://localhost:8081/MovieR/img/baseimg.jpg'" border="0" class="img-circle" id="img_p" >
										
									</div>
								
									</div>
									
								</header>
								<div class="clearfix">
								<div class=”pull-left“>
								<article>
									<decorator:body/>
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
									<a href="http://localhost:8081/MovieR/member/login.ss">로그인</a>
								</div>
								<div class="modal-footer"></div>
							</div>
						</div>
					</div>

				</div>
				
				<c:choose>
					<c:when test="${id==null }">
						<script>
							$('#myModal').modal({backdrop: 'static', keyboard: false})
						</script>
					</c:when>
					<c:when test="${id=='admin' }">
						<a href="http://localhost:8081/MovieR/member/adminMemberList.ss">관리자모드 접속(회원 목록 보기)</a>
					</c:when>
				</c:choose>
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
								</article>
								</div>
								</div>
								<footer class="navbar navbar-default"  >
								<div class="clearfix">
								<div class=”pull-left“>
								<div class="row"  style="float: left;">
									
									<div style="display:inline-block; float: block;">
										<a class="navbar-brand" href="http://localhost:8081/MovieR/terms/pterms.ss" >MOVIER 서비스 이용약관</a>
										<a class="navbar-brand" href="http://localhost:8081/MovieR/terms/rterms.ss">개인정보 취급방침</a>
									</div>
									<p>이 홈페이지의 저작권은 강성수에게 있습니다.</p>
									</div>
									</div>
									</div>
								
								</footer>
								
								
								
								
							</body>
						</html>
