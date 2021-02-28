<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
       <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style >
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
.red{
color: red;
}
.green{
color: green;
}
.title{
font-family: cursive;
color: olive;
}
</style>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">
</head>
<body>
<div class="center">
<h2 class="green">YOUR ANSWER AND CORRECT ANSWER</h2> <br>
<p class="red"><%= request.getAttribute("msg") != null ? request.getAttribute("msg") : " "%> </p>
	<c:forEach items="${ listAnswer}" var="listAnswer">	
		<p class="title">${listAnswer.number }.${listAnswer.question } ..</p> 
		<c:forEach items="${ listUser}" var="listUser">
		
			<c:if test="${listAnswer.number == listUser.num }">
		
				<c:if test="${listAnswer.correctAnswer == 'A' }">
					
						<c:if test="${listUser.answerUser == 'A' }">
						
						<img alt="" src="image/correct.png" width="20px" height="20px" > ${listAnswer.option1} <br>
						 ${listAnswer.option2} <br>
						 ${listAnswer.option3} <br>
						 ${listAnswer.option4} <br>
					</c:if>
					<c:if test="${listUser.answerUser == 'B' }">
						<img alt="" src="image/correct.png" width="20px" height="20px" > ${listAnswer.option1} <br>
						<img alt="" src="image/uncorrect.png" width="20px" height="20px" > ${listAnswer.option2} <br>
						 ${listAnswer.option3} <br>
						 ${listAnswer.option4} <br>
					</c:if>
					<c:if test="${listUser.answerUser == 'C' }">
						<img alt="" src="image/correct.png" width="20px" height="20px" > ${listAnswer.option1} <br>
						 ${listAnswer.option2} <br>
						<img alt="" src="image/uncorrect.png" width="20px" height="20px" > ${listAnswer.option3} <br>
						 ${listAnswer.option4} <br>
					</c:if>
					<c:if test="${listUser.answerUser == 'D' }">
						<img alt="" src="image/correct.png" width="20px" height="20px" > ${listAnswer.option1} <br>
						 ${listAnswer.option2} <br>
						 ${listAnswer.option3} <br>
						<img alt="" src="image/uncorrect.png" width="20px" height="20px" > ${listAnswer.option4} <br>
					</c:if>
				</c:if>
				
				<c:if test="${listAnswer.correctAnswer == 'B' }">
					
						<c:if test="${listUser.answerUser == 'A' }">
						
						<img alt="" src="image/uncorrect.png" width="20px" height="20px" > ${listAnswer.option1} <br>
						<img alt="" src="image/correct.png" width="20px" height="20px" > ${listAnswer.option2} <br>
						 ${listAnswer.option3} <br>
						 ${listAnswer.option4} <br>
					</c:if>
					<c:if test="${listUser.answerUser == 'B' }">
						 ${listAnswer.option1} <br>
						<img alt="" src="image/correct.png" width="20px" height="20px" > ${listAnswer.option2} <br>
						 ${listAnswer.option3} <br>
						 ${listAnswer.option4} <br>
					</c:if>
					<c:if test="${listUser.answerUser == 'C' }">
						${listAnswer.option1} <br>
						<img alt="" src="image/correct.png" width="20px" height="20px" > ${listAnswer.option2} <br>
						<img alt="" src="image/uncorrect.png" width="20px" height="20px" > ${listAnswer.option3} <br>
						 ${listAnswer.option4} <br>
					</c:if>
					<c:if test="${listUser.answerUser == 'D' }">
						 ${listAnswer.option1} <br>
						<img alt="" src="image/correct.png" width="20px" height="20px" > ${listAnswer.option2} <br>
						 ${listAnswer.option3} <br>
						<img alt="" src="image/uncorrect.png" width="20px" height="20px" > ${listAnswer.option4} <br>
					</c:if>
				</c:if>
				
				<c:if test="${listAnswer.correctAnswer == 'C' }">
					
						<c:if test="${listUser.answerUser == 'A' }">
						
						<img alt="" src="image/uncorrect.png" width="20px" height="20px" > ${listAnswer.option1} <br>
						 ${listAnswer.option2} <br>
						<img alt="" src="image/correct.png" width="20px" height="20px" > ${listAnswer.option3} <br>
						 ${listAnswer.option4} <br>
					</c:if>
					<c:if test="${listUser.answerUser == 'B' }">
					 ${listAnswer.option1} <br>
						<img alt="" src="image/uncorrect.png" width="20px" height="20px" > ${listAnswer.option2} <br>
						<img alt="" src="image/correct.png" width="20px" height="20px" > ${listAnswer.option3} <br>
						 ${listAnswer.option4} <br>
					</c:if>
					<c:if test="${listUser.answerUser == 'C' }">
						${listAnswer.option1} <br>
						 ${listAnswer.option2} <br>
						<img alt="" src="image/correct.png" width="20px" height="20px" > ${listAnswer.option3} <br>
						 ${listAnswer.option4} <br>
					</c:if>
					<c:if test="${listUser.answerUser == 'D' }">
						 ${listAnswer.option1} <br>
						 ${listAnswer.option2} <br>
						<img alt="" src="image/correct.png" width="20px" height="20px" > ${listAnswer.option3} <br>
						<img alt="" src="image/uncorrect.png" width="20px" height="20px" > ${listAnswer.option4} <br>
					</c:if>
				</c:if>
				
				<c:if test="${listAnswer.correctAnswer == 'D' }">
					
						<c:if test="${listUser.answerUser == 'A' }">
						
						<img alt="" src="image/uncorrect.png" width="20px" height="20px" > ${listAnswer.option1} <br>
						 ${listAnswer.option2} <br>
						 ${listAnswer.option3} <br>
						 <img alt="" src="image/correct.png" width="20px" height="20px" >${listAnswer.option4} <br>
					</c:if>
					<c:if test="${listUser.answerUser == 'B' }">
						 ${listAnswer.option1} <br>
						<img alt="" src="image/uncorrect.png" width="20px" height="20px" > ${listAnswer.option2} <br>
						 ${listAnswer.option3} <br>
						<img alt="" src="image/correct.png" width="20px" height="20px" > ${listAnswer.option4} <br>
					</c:if>
					<c:if test="${listUser.answerUser == 'C' }">
						 ${listAnswer.option1} <br>
						 ${listAnswer.option2} <br>
						<img alt="" src="image/uncorrect.png" width="20px" height="20px" > ${listAnswer.option3} <br>
						<img alt="" src="image/correct.png" width="20px" height="20px" > ${listAnswer.option4} <br>
					</c:if>
					<c:if test="${listUser.answerUser == 'D' }">
						 ${listAnswer.option1} <br>
						 ${listAnswer.option2} <br>
						 ${listAnswer.option3} <br>
						<img alt="" src="image/correct.png" width="20px" height="20px" > ${listAnswer.option4} <br>
					</c:if>
				</c:if>
			</c:if>
		</c:forEach>
	</c:forEach>
</div>
</body>
</html>