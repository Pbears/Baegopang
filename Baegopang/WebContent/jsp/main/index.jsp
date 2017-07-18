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
			<a href="storeByBrandMain.jsp?brandno=100">
				<img src='/Baegopang/img/chicken.jpg' class="img-circle" onmouseover="this.src='/Baegopang/img/chickenChar.jpg'" onmouseout="this.src='/Baegopang/img/chicken.jpg'"/>
			</a> &nbsp;
			<a href="storeByBrandMain.jsp?brandno=200">
				<img src="/Baegopang/img/jajang.png" class="img-circle" onmouseover="this.src='/Baegopang/img/jajangChar.jpg'" onmouseout="this.src='/Baegopang/img/jajang.png'">
			</a> &nbsp;
			<a href="storeByBrandMain.jsp?brandno=300">
				<img src="/Baegopang/img/pizza.png" class="img-circle" onmouseover="this.src='/Baegopang/img/pizzaChar.jpg'" onmouseout="this.src='/Baegopang/img/pizza.png'"/>
			</a><br>
			<a href="storeByBrandMain.jsp?brandno=400">
				<img src="/Baegopang/img/bibeam.png" class="img-circle" onmouseover="this.src='/Baegopang/img/bibeamChar.jpg'" onmouseout="this.src='/Baegopang/img/bibeam.png'">
			</a>
			<a href="storeByBrandMain.jsp?brandno=500">
				<img src="/Baegopang/img/jock.jpg" class="img-circle" onmouseover="this.src='/Baegopang/img/jockChar.jpg'" onmouseout="this.src='/Baegopang/img/jock.jpg'">
			</a> &nbsp;&nbsp;&nbsp;
			<a href="storeByBrandMain.jsp?brandno=600">
				<img src="/Baegopang/img/tang.jpg" class="img-circle" onmouseover="this.src='/Baegopang/img/tangChar.jpg'" onmouseout="this.src='/Baegopang/img/tang.jpg'">
			</a><br>
			<a href="storeByBrandMain.jsp?brandno=700">
				<img src="/Baegopang/img/don.png" class="img-circle" onmouseover="this.src='/Baegopang/img/donChar.jpg'" onmouseout="this.src='/Baegopang/img/don.png'">
			</a >&nbsp;
			<a href="storeByBrandMain.jsp?brandno=800">
				<img src="/Baegopang/img/dosirak.jpg" class="img-circle" onmouseover="this.src='/Baegopang/img/dosirakChar.jpg'" onmouseout="this.src='/Baegopang/img/dosirak.jpg'">
			</a> &nbsp;
			<a href="storeByBrandMain.jsp?brandno=900">
				<img src="/Baegopang/img/ham.png" class="img-circle" onmouseover="this.src='/Baegopang/img/hamChar.jpg'" onmouseout="this.src='/Baegopang/img/ham.png'">
			</a>
		</div>
	<jsp:include page="footer.jsp"/>
</body>
</html>