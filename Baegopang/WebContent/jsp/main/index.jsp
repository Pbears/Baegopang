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
	}
	
</style>
</head>
<body>
	<jsp:include page="header.jsp"/>
		<div id="menuContainer" align="center">
			<a href="chickenMain.jsp">
				<img src='/Baegopang/img/chicken.jpg' class="img-circle" onmouseover="this.src='/Baegopang/img/chickenChar.jpg';" onmouseout="this.src='/Baegopang/img/chicken.jpg';" /></a>
			<a href="#"><img src="/Baegopang/img/pizza.png" class="img-circle" onmouseover="this.src='/Baegopang/img/pizzaChar.jpg';" onmouseout="this.src='/Baegopang/img/pizza.png';"></a>
			<a href="#"><img src="/Baegopang/img/jajang.png" class="img-circle" onmouseover="this.src='/Baegopang/img/jajangChar.jpg';" onmouseout="this.src='/Baegopang/img/jajang.png';"></a>
			<a href="#"><img src="/Baegopang/img/jock.jpg" class="img-circle" onmouseover="this.src='/Baegopang/img/jockChar.jpg';" onmouseout="this.src='/Baegopang/img/jock.jpg';"></a><br>
			<a href="#"><img src="/Baegopang/img/bibeam.png" class="img-circle" onmouseover="this.src='/Baegopang/img/bibeamChar.jpg';" onmouseout="this.src='/Baegopang/img/bibeam.png';"></a>
			<a href="#"><img src="/Baegopang/img/don.png" class="img-circle" onmouseover="this.src='/Baegopang/img/donChar.jpg';" onmouseout="this.src='/Baegopang/img/don.png';"></a>
			<a href="#"><img src="/Baegopang/img/ham.png" class="img-circle" onmouseover="this.src='/Baegopang/img/hamChar.jpg';" onmouseout="this.src='/Baegopang/img/ham.png';"></a>
			<a href="#"><img src="/Baegopang/img/dosirak.jpg" class="img-circle" onmouseover="this.src='/Baegopang/img/dosirakChar.jpg';" onmouseout="this.src='/Baegopang/img/dosirak.jpg';"></a>
		</div>
	<jsp:include page="footer.jsp"/>
</body>
</html>