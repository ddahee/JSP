<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
   
<%
	String id = request.getParameter("id");

	//1. JDBC 드라이버 로드
	Class.forName("oracle.jdbc.driver.OracleDriver");
	
	//2. 데이터 베이스와 연결
	Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "jspuserc", "jsp1234");
	
	//3. SQL문 실행
	String sql = "delete member where id=?";
	
	PreparedStatement pstmt = con.prepareStatement(sql);
	
	//바인딩
	pstmt.setString(1, id);
	
	int result = pstmt.executeUpdate();
	
	//out.print(result);
	
	if(result == 1) 
		response.sendRedirect("list");
	
	//4. 데이터베이스와 연결 끊음
	//stmt.close();
	pstmt.close();
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