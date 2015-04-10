<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html>
<head>
	<title>JSP/Servlet Example</title>
</head>

<body>
<h1>설문 조사 결과</h1>

<%
	request.setCharacterEncoding("UTF-8");

	String name = request.getParameter("name");
	out.println("이름 :" + name);
	
	String gender = request.getParameter("gender");
	out.println("성별 :" + gender);
	
	if(gender.equals("남자")) {
		response.sendRedirect("http://www.naver.com");
	}
	else
		response.sendRedirect("http://www.daum.net");
	
	String[] season = request.getParameterValues("season");
	if(season ==null)
		out.print("없어여");
	else
		/* for(int i=0; i<season; i++) {
			out.print(season[i]);
		} */
		for(String s : season) {
			out.print(s);
		}
%>
	

</body>
</html>