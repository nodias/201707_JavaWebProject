<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.3.js" charset="utf-8"></script>
<script type="text/javascript" src="http://code.jquery.com/jquery-1.11.3.min.js"></script>
</head>
<body>
<script type="text/javascript">
  var naver_id_login = new naver_id_login("nZkKTZTbLF_d4yAjblE1", "http://127.0.0.1:8081/MovieR/member/login.ss");
  // 접근 토큰 값 출력
  // 네이버 사용자 프로필 조회
  naver_id_login.get_naver_userprofile("naverSignInCallback()");
  // 네이버 사용자 프로필 조회 이후 프로필 정보를 처리할 callback function
  function naverSignInCallback() {
	var id = naver_id_login.getProfileData('email');
	var name = naver_id_login.getProfileData('name');
	window.opener.location.href = "./naverLoginProcess.ss?id="+id+"&name="+name;
	window.close();
  }
</script>
 	페이지이동중입니다..
</body>
</html>