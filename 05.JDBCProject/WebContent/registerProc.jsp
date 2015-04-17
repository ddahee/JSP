<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>

<%
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	//out.print(id);

	// 1. JDBC 드라이버 로드
	Class.forName("oracle.jdbc.driver.OracleDriver");
	
	// 2. 데이터 베이스와 연결
	Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "jspuserc", "jsp1234");
	
	// 3. SQL문 실행
	String sql = "insert into member values('" + id + "', '" + pw + "', '홍길동', 20, '1', '서울시', '2015-04-17')";
	Statement stmt = con.createStatement();
	int result = stmt.executeUpdate(sql); //sql실행
	
	out.print(result);
	
	// 4. 데이터베이스와 연결 끊음
	stmt.close();
	con.close();
%>
<!DOCTYPE html>

<html>
<head>
	<title>JSP/Servlet Example</title>
</head>

<body>

</body>
</html>