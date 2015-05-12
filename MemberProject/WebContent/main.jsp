<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
	<head>
		<title>JSP/Servlet Example</title>
	
	
		<link rel="stylesheet" type="text/css" href="../css/bootstrap.css">
	
	
		<style>
		
		
		</style>
	
	</head>
	
	<body>
	
		<div class="jumbotron">
		  <h1>회원관리 시스템 </h1>
		  <p>동양미래대학교 정보통신과 2015학년도 1학기 웹프로그래밍 1차 과제 </p>
		  <p><a class="btn btn-primary btn-lg" href="register.jsp">Go</a></p>
		</div>
		
		<!-- 로그인 성공시! -->
		<div class="alert alert-dismissible alert-info">
		  <button type="button" class="close" data-dismiss="alert">×</button>
		  <strong>test</strong>님 환영합니다. <a href="#" class="btn btn-info">로그아웃</a>
		</div>
	
	
		<!-- 로그인 실패시! -->
		<div class="alert alert-dismissible alert-danger">
		  <button type="button" class="close" data-dismiss="alert">×</button>
		  로그인하세요. <a href="#" class="btn btn-danger">로그인</a>
		</div>
		
	</body>
</html>