<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page import="java.sql.*" %>
<%
	//1. JDBC 드라이버 로드
	Class.forName("oracle.jdbc.driver.OracleDriver");
	
	//2. 데이터 베이스와 연결
	Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "jspuserc", "jsp1234");
	
	//3. SQL문 실행
	PreparedStatement pstmt = null;
	String sql = "select * from member";
			
	//response.setContentType("text/html; charset=UTF-8");
	//PrintWriter out = response.getWriter();
%>
<html>
	<head>
		<title>JSP/Servlet Example</title>
	
		<link rel="stylesheet" type="text/css" href="../css/bootstrap.css">
	
	</head>
	
	<body>
		<!-- 메뉴 시작  -->
		<nav class="navbar navbar-inverse">
		  <div class="container-fluid">
		    <div class="navbar-header">
		      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-2">
		        <span class="sr-only">Toggle navigation</span>
		        <span class="icon-bar"></span>
		        <span class="icon-bar"></span>
		        <span class="icon-bar"></span>
		      </button>
		      <a class="navbar-brand" href="main.jsp">회원관리</a>
		    </div>
		
		    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-2">
		      <ul class="nav navbar-nav">
		        <li><a href="register.jsp">회원가입 <span class="sr-only">(current)</span></a></li>
		        <li class="active"><a href="#">회원 리스트 </a></li>
		        <li><a href="login.jsp">로그인</a></li>
		        
		      </ul>
		    </div>
		  </div>
		</nav>
		
		
		<!-- 본문 시작  -->
		<form action="detail.jsp">
	  <fieldset>
	    <legend>회원리스트 </legend>
	    <table class="table table-striped table-hover ">
		  <thead>
		    <tr>
		      <th>#</th>
		      <th>아이디</th>
		      <th>이름 </th>
		      <th>성별</th>
		      <th>가입일</th>
		      <th>삭제</th>
		    </tr>
		  </thead>
		  <tbody>
		  	<!-- 리스트를 출력한 후, 아이디를 클릭하는 경우에 detail.jsp로 링크 -->
		    <tr>
		      <td>1</td>
		      <td><a href="detail.jsp">test</a></td>
		      <td>홍길동</td>
		      <td>남자</td>
		      <td>2015-05-07</td>
		      <td>삭제</td>
		    </tr>
		    <tr>
		      <td>2</td>
		      <td>Column content</td>
		      <td>Column content</td>
		      <td>Column content</td>
		      <td>Column content</td>
		      <td>삭제</td>
		    </tr>
		    <tr class="info">
		      <td>3</td>
		      <td>Column content</td>
		      <td>Column content</td>
		      <td>Column content</td>
		      <td>Column content</td>
		      <td>삭제</td>
		    </tr>
		    <tr class="success">
		      <td>4</td>
		      <td>Column content</td>
		      <td>Column content</td>
		      <td>Column content</td>
		      <td>Column content</td>
		      <td>삭제</td>
		    </tr>
		    <tr class="danger">
		      <td>5</td>
		      <td>Column content</td>
		      <td>Column content</td>
		      <td>Column content</td>
		      <td>Column content</td>
		      <td>삭제</td>
		    </tr>
		    <tr class="warning">
		      <td>6</td>
		      <td>Column content</td>
		      <td>Column content</td>
		      <td>Column content</td>
		      <td>Column content</td>
		      <td>삭제</td>
		    </tr>
		    <tr class="active">
		      <td>7</td>
		      <td>Column content</td>
		      <td>Column content</td>
		      <td>Column content</td>
		      <td>Column content</td>
		      <td>삭제</td>
		    </tr>
		  </tbody>
		</table> 
	  </fieldset>
	</form>
	</body>
</html>