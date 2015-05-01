<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>

<%
	//0. 요청 처리
	request.setCharacterEncoding("UTF-8");
	
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String name = request.getParameter("name");
	String age = request.getParameter("age");
	String gender = request.getParameter("gender");
	String addr = request.getParameter("addr");
	//out.print(id);

	//1. JDBC 드라이버 로드
	Class.forName("oracle.jdbc.driver.OracleDriver");
	
	//2. 데이터 베이스와 연결
	Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "jspuserc", "jsp1234");
	
	//3. SQL문 실행
	//1) statement 객체 이용
	/* String sql = "insert into member values('" + id + "', '" + pw + "', '" + name +"', 20, '1', '서울시', '2015-04-17')";
	Statement stmt = con.createStatement();
	int result = stmt.executeUpdate(sql); //sql실행, alt+x
	
	out.print(result); */
	
	//2) PreparedStatement 객체 이용
	String sql = "insert into member values(?, ?, ?, ?, ?, ?, default)";
	PreparedStatement pstmt = con.prepareStatement(sql);
	
	//바인딩
	pstmt.setString(1, id);
	pstmt.setString(2, pw);
	pstmt.setString(3, name);
	pstmt.setInt(4, Integer.parseInt(age));
	pstmt.setString(5, gender);
	pstmt.setString(6, addr);
	
	int result = pstmt.executeUpdate();
	
	out.print(result);
	
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