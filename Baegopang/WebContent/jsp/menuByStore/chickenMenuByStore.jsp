<%@page import="gopang.dao.ChickenDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<style>
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
	
	div.panel.panel-default{
		width: 1050px;
		margin: auto;
		margin-top: 50px;
	}
</style>
<body>
	<%
		int brandNo = Integer.parseInt(request.getParameter("brandno"));
		ChickenDao chickenDao = new ChickenDao();
	%>
	<jsp:include page="../main/header.jsp"></jsp:include>
	<ul>
	  <li><a class="active" href="chickenMain.jsp">치킨</a></li>
	  <li><a href="pizzaMain.jsp">피자</a></li>
	  <li><a href="chinaFoodMain.jsp">중국집</a></li>
	  <li><a href="koreaFoodMain.jsp">한식</a></li>
	  <li><a href="jockFoodMain.jsp">족발, 보쌈</a></li>
	  <li><a href="japanFoodMain.jsp">일식</a></li>
	  <li><a href="dosirakMain.jsp">도시락</a></li>
	  <li><a href="fastFoodMain.jsp">패스트푸드</a></li>
	</ul>
	
	<div class="panel panel-default">
	  <div class="panel-body">
	   <%=chickenDao.selectChickenMenu(brandNo).get(0).getStoreName()%>  &nbsp;|&nbsp;
	   <%=chickenDao.selectChickenMenu(brandNo).get(0).getLocation()%>  &nbsp;|&nbsp;
	   <%
			for (int j=0; j < chickenDao.selectChickenMenu(brandNo).get(0).getGpa() ; j++){
		%>
				<span class="glyphicon glyphicon-star" aria-hidden="true"></span>
		<%
				if(j == chickenDao.selectChickenMenu(brandNo).get(0).getGpa() && j <5){
						for(int k=0; k < 5-chickenDao.selectChickenMenu(brandNo).get(0).getGpa(); k++){
		%>
					<span class="glyphicon glyphicon-star-empty" aria-hidden="true"></span>					
		<% 
					}
				}
			}
		%>  &nbsp;|&nbsp;
		<span class="glyphicon glyphicon-heart" aria-hidden="true"></span>
		<span class="glyphicon glyphicon-heart-empty" aria-hidden="true"></span>
		<strong>(50)</strong></span>
	  </div>
	</div>
	<div id="storeContiner" align="center">
	<% 
		for(int i=0; i<chickenDao.getChickenTotalRow(1); i++){
	%>
	<span>
	<div class="row">
	  <div class="col-xm-6 col-sm-4 col-md-3 col-lg-3">
	  <!-- 메뉴 리스트 출력부 -->
	<a href="#" >
	    <div class="thumbnail">
 	      <img src=".." alt="..." width="150px" height="100px"> 
	      <div class="caption">
	        <h3><strong><%=chickenDao.selectChickenMenu(brandNo).get(0)%></strong></h3>
	        <p>
	        	<%
					for (int j=0; j < chickenDao.selectChicken(1).get(i).getGpa() ; j++){
				%>
					<span class="glyphicon glyphicon-star" aria-hidden="true"></span>
				<%
						if(j == chickenDao.selectChicken(1).get(i).getGpa() && j <5){
							for(int k=0; k < 5-chickenDao.selectChicken(1).get(i).getGpa(); k++){
				%>
					<span class="glyphicon glyphicon-star-empty" aria-hidden="true"></span>					
				<% 
							}
						}
					}
				%>
	        	<br>
	        	<%=chickenDao.selectChicken(1).get(i).getLocation()%><br>
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
</body>
</html>