<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	request.setCharacterEncoding("UTF-8");

	int errorType = request.getParameter("errorMessage") == null ? 0 : Integer.parseInt(request.getParameter("errorMessage"));
	
	List<String> errorList = new ArrayList<>();
	errorList.add("");
	errorList.add("데이터베이스 에러, 관리자에게 문의하세요");
	errorList.add("타이틀, 내용에 빈 내용은 입력하실 수 없습니다.");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	글쓰기
	<form method="POST" action="create.jsp">
		<input type="text" name="boardTitle"/>
		<textarea name="boardContent" rows="5"></textarea>
		<input type="submit" value="글 작성">
	</form>
	<div><a href="list.jsp">목록으로 가기</a></div>
	<div><%= errorList.get(errorType) %></div>
</body>
</html>