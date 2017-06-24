<%@page import="gopang.dao.KoreaFoodDao"%>
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
		width: 340px;
		height : 250px;
		margin-left: 40px;
		margin-right : 10px;
		margin-top: 50px;
	}

</style>
</head>
<body>
	<%
		KoreaFoodDao koreaFoodDao = new KoreaFoodDao();
	%>
		
	<jsp:include page="header.jsp"></jsp:include>
	<ul>
	  <li><a href="chickenMain.jsp">치킨</a></li>
	  <li><a href="pizzaMain.jsp">피자</a></li>
	  <li><a href="chinaFoodMain.jsp">중국집</a></li>
	  <li><a class="active" href="koreaFoodMain.jsp">한식</a></li>
	  <li><a href="jockFoodMain.jsp">족발, 보쌈</a></li>
	  <li><a href="japanFoodMain.jsp">일식</a></li>
	  <li><a href="dosirakMain.jsp">도시락</a></li>
	  <li><a href="fastFoodMain.jsp">패스트푸드</a></li>
	</ul>
	
	<div id="storeContiner" align="center">
	<% 
		for(int i=0; i<koreaFoodDao.getKoreaFoodTotalRow(4); i++){
	%>
	<span>
	<div class="row">
	  <div class="col-xm-6 col-sm-4 col-md-3 col-lg-3">
	<a href="#">
	    <div class="thumbnail">
 	      <img src="/Baegopang<%=koreaFoodDao.selectKoreaFood(4).get(i).getPicture()%>" alt="..." width="150px" height="100px"> 
	      <div class="caption">
	        <h3><%=koreaFoodDao.selectKoreaFood(4).get(i).getStorename() %></h3>
	        <p>
	        	<%
					for (int j=0; j < koreaFoodDao.selectKoreaFood(4).get(i).getGpa() ; j++){
				%>
					<span class="glyphicon glyphicon-star" aria-hidden="true"></span>
				<%
						if(j == koreaFoodDao.selectKoreaFood(4).get(i).getGpa() && j <5){
							for(int k=0; k < 5-koreaFoodDao.selectKoreaFood(4).get(i).getGpa(); k++){
				%>
					<span class="glyphicon glyphicon-star-empty" aria-hidden="true"></span>					
				<% 
							}
						}
					}
				%>
	        	<br>
	        	<%=koreaFoodDao.selectKoreaFood(4).get(i).getLocation()%><br>
	        	리뷰 : <strong>(50)</strong>   댓글 : <strong>(50)</strong>
	        
	        </p>
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
		<a href="#">더보기▼</a>
	</div>
	<jsp:include page="footer.jsp"></jsp:include>	
</body>
</html>