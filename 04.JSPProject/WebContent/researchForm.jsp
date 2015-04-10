<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html>
<head>
	<title>JSP/Servlet Example</title>
</head>

<body>
<h1>설문 조사</h1>
<form method="get" action="research.jsp">
	<table border="1">
	<tr>
		<td>이름 :</td>
		<td><input type="text" name="name"></td>
	</tr><br>
	<tr>
		<td>성별 :</td>
		<td><input type="radio" name="gender" value="남자">남자
			<input type="radio" name="gender" value="여자">여자</td>
	</tr><br>
	<tr>
		<td>좋아하는계절 :</td>
		<td><input type="checkBox" name="season" value="봄">봄
			<input type="checkBox" name="season" value="여름">여름
			<input type="checkBox" name="season" value="가을">가을
			<input type="checkBox" name="season" value="겨울">겨울</td>
	</tr><br>
	<tr>
		<td><input type="submit" value="전송"></td>
		<td><input type="reset" value="취소"></td>
	</tr>
	</table>
</form>
</body>
</html>