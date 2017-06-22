<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<link href="../css/bootstrap.min.css" rel="stylesheet">
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
	<jsp:include page="header.jsp"></jsp:include>
		<div id="menuContainer" align="center">
			<a href="chickenMain.jsp">
				<img src='../img/chicken.jpg' class="img-circle" onmouseover="this.src='../img/pizza.png';" onmouseout="this.src='../img/chicken.jpg';" />
			</a>
			<a href="#"><img alt="" src="../img/pizza.png" class="img-circle"></a>
			<a href="#"><img alt="" src="../img/jajang.png" class="img-circle"></a>
			<a href="#"><img alt="" src="../img/jock.jpg" class="img-circle"></a><br>
			<a href="#"><img alt="" src="../img/bibeam.png" class="img-circle"></a>
			<a href="#"><img alt="" src="../img/don.png" class="img-circle"></a>
			<a href="#"><img alt="" src="../img/ham.png" class="img-circle"></a>
			<a href="#"><img alt="" src="../img/dosirak.jpg" class="img-circle"></a>
		</div>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>