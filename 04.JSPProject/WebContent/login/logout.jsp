<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!-- logout.jsp -->
<%
	session.removeAttribute("loginId");

	session.invalidate(); //session값 모두 지움

	response.sendRedirect("main.jsp");
%>
<!DOCTYPE html>

<html>
<head>
	<title>JSP/Servlet Example</title>
</head>

<body>

</body>
</html>