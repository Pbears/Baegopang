<%@page import="gopang.dao.ChinaFoodDao"%>
<%@page import="gopang.bean.BrandBean"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<link href="/Baegopang/css/bootstrap.min.css" rel="stylesheet">
<title>Insert title here</title>
<style type="text/css">
	ul {
	    list-style-type: none;
	    margin: auto;
	    padding: 0;
	    overflow: hidden;
	    background-color: #ff8c00;
	    width: 1600px;
	    border-radius: 10px;
	}
	
	li {
	    float: left;    
	}
	
	li a {
	    display: block;
	    color: white;
	    text-align: center;
	    padding: 14px 16px;
	    text-decoration: none;
	    border-radius: 10px;
	    font-weight: bold;
	}
	
	li a:hover:not(.active) {
	    background-color: gray;
	}
	
	.active {
	    background-color: #ff5722;
	}
	#storeContiner{
		margin: auto;
	}
	.row{
		display: inline-block;
		margin: auto;
	}
	.thumbnail{
		width: 320px;
		height : 200px;
		margin-left: 40px;
		margin-right : 10px;
		margin-top: 50px;
	}

</style>
</head>
<body>
	<%
		ChinaFoodDao chinaFoodDao = new ChinaFoodDao();	
	%>
		
	<jsp:include page="header.jsp"></jsp:include>
	<ul>
	  <li><a href="chickenMain.jsp">ġŲ</a></li>
	  <li><a href="pizzaMain.jsp">����</a></li>
	  <li><a class="active" href="chinaFoodMain.jsp">�߱���</a></li>
	  <li><a href="koreaFoodMain.jsp">�ѽ�</a></li>
	  <li><a href="jockFoodMain.jsp">����, ����</a></li>
	  <li><a href="japanFoodMain.jsp">�Ͻ�</a></li>
	  <li><a href="dosirakMain.jsp">���ö�</a></li>
	  <li><a href="fastFoodMain.jsp">�н�ƮǪ��</a></li>
	</ul>
	
	<div id="storeContiner" align="center">
	<% 
		for(int i=0; i<chinaFoodDao.getChinaFoodtotalRow(2); i++){
	%>
	<span>
	<div class="row">
	  <div class="col-xm-6 col-sm-4 col-md-3 col-lg-3">
	<a href="#">
	    <div class="thumbnail">
 	      <img src="/Baegopang<%=chinaFoodDao.selectChinaFood(2).get(i).getPicture()%>" alt="..." width="150px" height="100px"> 
	      <div class="caption">
	        <h3><%=chinaFoodDao.selectChinaFood(2).get(i).getBrandName() %></h3>
	        <p>���� �ּ� ��� �� ���..</p>
	      </div>
	    </div>
	</a>
	  </div>
	</div>
	</span>
	<%
		} 
	%>
	</div>
	<div id="moreView" align="center">
		<a href="#">�������</a>
	</div>
	<jsp:include page="footer.jsp"></jsp:include>	
</body>
</html>