<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>search.jsp</title>
</head>
<body>
	<br>

	<%
		// SearchServletで作成されたkekkaを受け取る
		ResultSet rset = (ResultSet) request.getAttribute("kekka");
	%>
	<table border="1">
		<tr bgcolor="#cccccc">
			<td><b>ID</b></td>
			<td><b>名前</b></td>
			<td><b>性別</b></td>
			<td><b>入社年</b></td>
			<td><b>住所</b></td>
			<!-- テーブル項目の追加-->
			<td><b>削除</b></td>
			<td><b>変更</b></td>
		</tr>

		<!-- 件数文繰り返す -->
		<%
			while (rset.next()) {
		%>
		<!-- カラム数 -->
		<tr>
			<td><%=rset.getString(1)%></td>
			<td><%=rset.getString(2)%></td>
			<td><%=rset.getString(3)%></td>
			<td><%=rset.getString(4)%></td>
			<td><%=rset.getString(5)%></td>
			<!-- 削除の追加-->
			<td><a href="Edit?&mode=delete&id=<%=rset.getString(1)%>">削除</a></td>
			<!-- 変更の追加-->
			<td>
				<form action="/Java_MVC_Test/Edit" method="POST">
					<input type="hidden" name="mode" value="change"> <input
						type="hidden" name="id" value="<%=rset.getString(1)%>"> <input
						type="hidden" name="name" value="<%=rset.getString(2)%>">
					<input type="hidden" name="sei" value="<%=rset.getString(3)%>">
					<input type="hidden" name="nen" value="<%=rset.getString(4)%>">
					<input type="hidden" name="address" value="<%=rset.getString(5)%>">
					<input type="submit" value="変更">
				</form>
			</td>

		</tr>
		<%
			}
		%>
	</table>

	<br>

	<a href="./index.jsp">トップに戻る</a>

</body>
</html>