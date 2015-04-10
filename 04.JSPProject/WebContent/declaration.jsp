<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.*" %>
<%@ page errorPage="error.jsp" %>
<!DOCTYPE html>

<html>
<head>
	<title>JSP/Servlet Example</title>
</head>

<body>
<!-- declaration.jsp -->

<%= str %> <br>

<%= 2/0 %> <br>

<%= abs(-10) %>

<% File f = new File("abs.txt"); %>

<%!
	String str = "Hello";

	public int abs(int n) {
		
		if(n < 0)
			n = -n;
		
		return n;
	}
%>
</body>
</html>