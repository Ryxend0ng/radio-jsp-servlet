<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
.center{
padding:20px;
font-family:  monospace;
border: 1px solid black;
width: 500px;
margin:0 auto;
height: auto; 

}
.inputDisplay{
display: flex;
justify-content: space-around;
}
</style>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">
</head>
<body>
<div class="center">
<h2>TEST ENGLISH MS.HOA</h2>
	<form action="RadioController" method="post" name="nhap">
		<c:forEach items="${ listanswer}" var="listanswer">
			<p> ${listanswer.number }.${listanswer.question }</p> <br>
			<input type="radio" value="A" name="${listanswer.number }"> ${listanswer.option1 } <br>
			<input type="radio"value="B" name="${listanswer.number }"> ${listanswer.option2 } <br>
			<input type="radio"value="C" name="${listanswer.number }"> ${listanswer.option3 } <br>
			<input type="radio"value="D" name="${listanswer.number }"> ${listanswer.option4 } <br> <br>
		</c:forEach>
		<div class="inputDisplay"><input type="submit" value="enter" class="btn btn-success" onclick="myFun();"><input type="reset" value="reset" class="btn btn-primary"></div>
	</form>
	</div>
	
</body>
</html>