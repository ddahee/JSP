<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>

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
		        <li class="active"><a href="register.jsp">회원가입 <span class="sr-only">(current)</span></a></li>
		        <li><a href="list.jsp">회원 리스트 </a></li>
		        <li><a href="login.jsp">로그인</a></li>
		        
		      </ul>
		    </div>
		  </div>
		</nav>
		
		
		<!-- 본문 시작  -->
		<form class="form-horizontal">
		  <fieldset>
		    <legend>회원 상세 정보 </legend>
		    
		    <div class="form-group">
		      <label for="id" class="col-lg-2 control-label">아이디 : </label>
		      <div class="col-lg-10">
		        test
		      </div>
		    </div>
		    
		    <div class="form-group">
		      <label for="name" class="col-lg-2 control-label">이름 : </label>
		      <div class="col-lg-10">
		        홍길동 
		      </div>
		    </div>
		    <div class="form-group">
		      <label for="age" class="col-lg-2 control-label">나이 : </label>
		      <div class="col-lg-10">
		        20
		      </div>
		    </div>
		    <div class="form-group">
		      <label class="col-lg-2 control-label">성별 : </label>
		      <div class="col-lg-10">
		        <div class="radio">
		          남자 
		        </div>
		      </div>
		      </div>
		      <div class="form-group">
		      <label for="addr" class="col-lg-2 control-label">주소 : </label>
		      	서울시 구로구 고척동 동양미래대학교 
		    </div>
		    
		    <div class="form-group">
		      <div class="col-lg-10 col-lg-offset-2">
		        <button type="submit" class="btn btn-primary">삭제</button>
		      </div>
		    </div>
		  </fieldset>
		</form>
	</body>
</html>