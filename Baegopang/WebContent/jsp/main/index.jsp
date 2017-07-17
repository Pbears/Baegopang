<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link href="/Baegopang/css/bootstrap.min.css" rel="stylesheet">
<style type="text/css">

	html{
		margin: 50px;
	}

	/* image change */
	
	.img-circle{
		width: 230px;
		height: 200px;
		margin: 10px;
	}
	
	a{
		margin-bottom: 30px;
		margin-right: 30px;
	}
	
</style>
</head>
<body>

	<jsp:include page="header.jsp"/>
		<div id="menuContainer" align="center">
			<a href="chickenMain.jsp">
				<img src='/Baegopang/img/chicken.jpg' class="img-circle" onmouseover="this.src='/Baegopang/img/chickenChar.jpg'" onmouseout="this.src='/Baegopang/img/chicken.jpg'"/>
			</a>&nbsp;
			<a href="pizzaMain.jsp">
				<img src="/Baegopang/img/pizza.png" class="img-circle" onmouseover="this.src='/Baegopang/img/pizzaChar.jpg'" onmouseout="this.src='/Baegopang/img/pizza.png'"/>
			</a>&nbsp;
			<a href="chinaFoodMain.jsp">
				<img src="/Baegopang/img/jajang.png" class="img-circle" onmouseover="this.src='/Baegopang/img/jajangChar.jpg'" onmouseout="this.src='/Baegopang/img/jajang.png'">
			</a><br>
			<a href="jockFoodMain.jsp">
				<img src="/Baegopang/img/jock.jpg" class="img-circle" onmouseover="this.src='/Baegopang/img/jockChar.jpg'" onmouseout="this.src='/Baegopang/img/jock.jpg'">
			</a>&nbsp;&nbsp;&nbsp;
			<a href="koreaFoodMain.jsp">
				<img src="/Baegopang/img/bibeam.png" class="img-circle" onmouseover="this.src='/Baegopang/img/bibeamChar.jpg'" onmouseout="this.src='/Baegopang/img/bibeam.png'">
			</a>
			<a href="tangFoodMain.jsp">
				<img src="/Baegopang/img/tang.jpg" class="img-circle" onmouseover="this.src='/Baegopang/img/tangChar.jpg'" onmouseout="this.src='/Baegopang/img/tang.jpg'">
			</a><br>
			<a href="japanFoodMain.jsp">
				<img src="/Baegopang/img/don.png" class="img-circle" onmouseover="this.src='/Baegopang/img/donChar.jpg'" onmouseout="this.src='/Baegopang/img/don.png'">
			</a>&nbsp;
			<a href="fastFoodMain.jsp">
				<img src="/Baegopang/img/ham.png" class="img-circle" onmouseover="this.src='/Baegopang/img/hamChar.jpg'" onmouseout="this.src='/Baegopang/img/ham.png'">
			</a>&nbsp;
			<a href="dosirakMain.jsp">
				<img src="/Baegopang/img/dosirak.jpg" class="img-circle" onmouseover="this.src='/Baegopang/img/dosirakChar.jpg'" onmouseout="this.src='/Baegopang/img/dosirak.jpg'">
			</a>
		</div>
	<jsp:include page="footer.jsp"/>
</body>
</html>