<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>index.jsp</title>
</head>
<body>
	<br> 検索条件を入力してください。
	<br>（何も入力しないと全件抽出します）
	<br>
	<br>
	<!-- プロジェクト名/Servlet名(web.xml参照) -->
	<form action="/Java_MVC_Test/Search" method="POST">

		ID: <input type="text" name="id">

		名前: <input type="text" name="name">

		性別:
		<SELECT NAME="sei">
			<OPTION VALUE="" selected></OPTION>
			<OPTION VALUE="男">男</OPTION>
			<OPTION VALUE="女">女</OPTION>
		</SELECT>

		入社年：
		<SELECT NAME="nen">
			<OPTION VALUE="" selected></OPTION>
			<OPTION VALUE="2002">2002</OPTION>
			<OPTION VALUE="2003">2003</OPTION>
			<OPTION VALUE="2004">2004</OPTION>
			<OPTION VALUE="2005">2005</OPTION>
			<OPTION VALUE="2006">2006</OPTION>
		</SELECT> <br> <br> <input type="submit" value="検索">

	</form>

	<!-- -------------- -->
	<br> 以下から登録できます。
	<br>
	<br>
	<form action="/Java_MVC_Test/Edit" method="POST">

		ID: <input type="text" name="id">

		名前: <input type="text"name="name">

		性別：
		<SELECT NAME="sei">
			<OPTION VALUE="" selected></OPTION>
			<OPTION VALUE="男">男</OPTION>
			<OPTION VALUE="女">女</OPTION>
		</SELECT>

		入社年：
		<SELECT NAME="nen">
			<OPTION VALUE="" selected></OPTION>
			<OPTION VALUE="2002">2002</OPTION>
			<OPTION VALUE="2003">2003</OPTION>
			<OPTION VALUE="2004">2004</OPTION>
			<OPTION VALUE="2005">2005</OPTION>
			<OPTION VALUE="2006">2006</OPTION>
		</SELECT>
		住所: <input type="text" name="address"> <br> <br>

		<input type="hidden" name="mode" value="add"> <input type="submit" value="登録">
	</form>

</body>
</html>