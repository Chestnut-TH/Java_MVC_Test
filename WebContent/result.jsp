<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>result.jsp</title>
</head>
<body>
	<br>

	<%
		String status = (String) request.getAttribute("status");
	%>

	<br>
	<br>
	<%=status%>
	<br>
	<br>

	<a href="./index.jsp">トップページに戻る</a>
</body>
</body>
</html>