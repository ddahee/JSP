<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
    
<html>
<head>
    	<title>JSP/Servlet Example</title>
    	<style> /* 꾸미기 */
    		body {
    			background-image:url("back.jpg");
    			background-repeat:no-repeat;
    			background-attachment:fixed;
    		}
    		input, select, textarea {
    			border:pink 2pt solid; /* 테두리 색깔 넣기*/
    			color:skyblue;
    			font-size:20px;
    			background-color:puple;
    		}
    	</style>
    	<script>
    		function gofunc() {
    			alert("Hello JavaScript");
    		}
    	</script>
</head>
    
<body>
<h1> request test</h1>
<hr>

<form action="TestServlet" onsubmit="return gofunc()"> // submit 버튼 눌럿을때 gofunc 함수 불러옴
	<label for="name">이름 : </label><input type="text" id="name" name="name"><br>
	<label for="pw">비밀번호 : </label><input type="password" id="pw"><br>
	<input type="radio" name="gender" value="남자"> 남자
	<input type="radio" name="gender" value="여자"> 여자 <br>
	
	<input type="checkbox" name="hobby" value="츅구">츅구
	<input type="checkbox" name="hobby" value="야궁">야궁
	<input type="checkbox" name="hobby" value="넝구">넝구<br>
	
	<input type="color" name="mycolor"><br>
	<input type="email" name="myEmail"><br>
	
	<select>
		<option value="java">Java</option>
		<option value="jsp">JSP</option>
		<option value="html">HTML</option>
	</select><br>
	
	<textarea rows="20" cols="15" name="txt"></textarea><br>
	
	<input type="submit" value="서버로 제출">
</form>
</body>
</html>