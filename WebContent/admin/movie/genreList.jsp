<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="./css/jboard.css">
<style>
.deleteBtn{
	margin-left: 5px;
}
</style>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script>


</script>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>

	<div id="contentsArea">

		<section id="titlename" class="qnaBoard">
			<h1>장르 등록</h1>

			<div id="infoArea">
				<section class="search">
					<form name="search" action="./BoardSearchList.do" method="post">
						<fieldset>
							<legend>검색</legend>
							<label for="keyword"></label> <select name="keyfield"
								class="b_search">
								<option value="all" selected="selected">전체 검색</option>
								<option value="title">
									<c:if test="${'name' == keyfield}">selected="selected"</c:if>>장르</option>


							</select> <input type="search" id="keyword" name="keyword"
								required="required" placeholder="검색어 입력">
							<button type="submit">검색</button>
						</fieldset>
					</form>
				</section>
			</div>
			<p class="allPost">
				전체 글: &nbsp; <strong><c:out value="${listcount}" /> </strong>개
			</p>
			<table class="boardTable">
				<caption>게시판 리스트</caption>
				<c:choose>
					<c:when test="${listcount>0}">
						<thead>
							<tr>
								<th scope="col" class="bbsNumber">번호</th>
								<th scope="col" class="bbsTitle">장르</th>
								<th scope="col" class="bbsDate">등록일</th>
								
							</tr>
						</thead>
						
						<c:forEach var="genreList" items="${genreList}" varStatus="status">
							<tbody>
								<tr>
									<c:set value="${genreList.gen_no }" var="delete_num"></c:set>
									<td><c:out value="${genreList.gen_no}" /></td>
									<td><c:out value="${genreList.name}" /></td>
									<td><c:out value="${genreList.reg_date}"  /><a href="./GenreDeleteProcess.jh?delNum=${genreList.gen_no}"><button class="deleteBtn">삭제</button></a></td>
									
									


								</tr>
							</tbody>
							<input type="hidden" class=".deleteHidden" value="${delete_num }"/>
						</c:forEach>
					</c:when>
				</c:choose>
			</table>
			<div align="center">
				<table id="boardTableNe" class="boardTableNe">
					<tbody>
						<c:if test="${searchlistcount==0}">
							<tr>
								<td colspan="4"></td>
								<td>등록된 글이 없습니다.</td>
							</tr>
						</c:if>
						<tr>
							<td colspan="5"><c:choose>
									<c:when test="${page <= 1}"> [이전]&nbsp; </c:when>
									<c:otherwise>
										<a href="./GenreList.jh?page=<c:out value="${page-1}"/>">[이전]</a>&nbsp;
</c:otherwise>
								</c:choose> <c:forEach var="start" begin="${startpage}" end="${endpage}"
									step="1">
									<c:choose>
										<c:when test="${start eq page}"> [<c:out
												value="${start}" />] </c:when>
										<c:otherwise>
											<a href="./GenreList.jh?page=<c:out value="${start}" />">[<c:out
													value="${start}" />]
											</a>&nbsp;
</c:otherwise>
									</c:choose>
								</c:forEach> <c:choose>
									<c:when test="${page >= maxpage}">[다음] </c:when>
									<c:otherwise>
										<a href="./GenreList.jh?page=<c:out value="${page+1}" />">[다음]</a>
									</c:otherwise>
								</c:choose></td>
						</tr>
					</tbody>
				</table>
				<div class="btnJoinAreb">

					<a href="./GenreWrite.jh"><button type="button" value="button"
						 class="btnOk">
						글쓰기</button></a>


				</div>
			</div>
		</section>
	</div>
</body>
</html>