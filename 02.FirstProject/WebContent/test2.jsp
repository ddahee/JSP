<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h1>GET</h1>
<form method="get" action="HelloServlet">
	�̸� : <input type="text" name="name"><br>
	���̵� : <input type="text" name="id"><br>
	��й�ȣ : <input type="password" name="pw"><br>
	<input type="submit" value="GET ������� ����">
</form>
<a href="HelloServlet">��ũ�� GET ���</a>
<hr>

<h1>POST</h1>
<form method="post" action="HelloServlet">
	�̸� : <input type="text" name="name"><br>
	���̵� : <input type="text" name="id"><br>
	��й�ȣ : <input type="password" name="pw"><br>
	<input type="submit" value="POST ������� ����">
</form>
<hr>

<h1>JSP</h1>
<form method="get" action="test3.jsp">
	�̸� : <input type="text" name="name"><br>
	���̵� : <input type="text" name="id"><br>
	��й�ȣ : <input type="password" name="pw"><br>
	<input type="submit" value="JSP ������� ����">
</form>
</body>
</html>