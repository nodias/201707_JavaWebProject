<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>테스트</h1>
	<ul>
		<li>이건 되야하고...</li>
		<c:forEach items="${movieList }" var="movie">
		<li>movie.getTitle()</li>
		</c:forEach>
	
	
	</ul>
</body>
</html>