<%@page import="java.net.URLDecoder"%>
<%@page import="gopang.bean.MenuBean"%>
<%@page import="gopang.bean.StoreBean"%>
<%@page import="java.util.List"%>
<%@page import="java.net.URLEncoder"%>
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
	
	#storeInfoContainer {
		width: 1600px;
		margin: auto;
		margin-top: 50px;
	}
	
	#menuContiner{
		margin: auto;
		margin-left: 0px;
		width: 1250px;
		height : auto;
		display: inline-block;
	}
	
	.row{
		display: inline-block;
		margin: auto;
	}
	
	.thumbnail{
		width: 270px;
		height : 270px;
		padding : 5px;
		margin-left: 40px;
		margin-right : 10px;
		margin-top: 50px;
	}
	
	#selectMenuContainer{
		top : 545px;
		left : 1340px;
		bottom : 870px;
	 	width: 400px;
	 	height : 800px;
	 	display : inline-block;
	 	position: absolute;
	}
</style>
<body>
	<%
		request.setCharacterEncoding("UTF-8");
		int brandNo = Integer.parseInt(request.getParameter("brandno"));
		ChickenDao chickenDao = new ChickenDao();
		List<StoreBean>storeList=chickenDao.selectChickenStore(brandNo);
		List<MenuBean>menuList=chickenDao.selectChickenMenu(brandNo);
	%>
	
	<jsp:include page="../main/header.jsp"></jsp:include>
	<ul>
	  <li><a class="active" href="/Baegopang/jsp/main/chickenMain.jsp">치킨</a></li>
	  <li><a href="/Baegopang/jsp/main/pizzaMain.jsp">피자</a></li>
	  <li><a href="/Baegopang/jsp/main/chinaFoodMain.jsp">중국집</a></li>
	  <li><a href="/Baegopang/jsp/main/koreaFoodMain.jsp">한식</a></li>
	  <li><a href="/Baegopang/jsp/main/jockFoodMain.jsp">족발, 보쌈</a></li>
	  <li><a href="/Baegopang/jsp/main/japanFoodMain.jsp">일식</a></li>
	  <li><a href="/Baegopang/jsp/main/dosirakMain.jsp">도시락</a></li>
	  <li><a href="/Baegopang/jsp/main/fastFoodMain.jsp">패스트푸드</a></li>
	</ul>
	
	<div id="storeInfoContainer">
	<div class="panel panel-default">
	  <div class="panel-body">
	  	
	   <strong>매장명 : <%=storeList.get(0).getStoreName()%></strong>  &nbsp;|&nbsp;
	   <strong>매장 주소 : <%=storeList.get(0).getLocation()%></strong>  &nbsp;|&nbsp;
	   별점 : 
	   <%
			for (int j=0; j < storeList.get(0).getGpa() ; j++){
		%>
				<span class="glyphicon glyphicon-star" aria-hidden="true"></span>
		<%
				if(j == storeList.get(0).getGpa() -1 && j <5){
						for(int k=0; k < 4-j; k++){
		%>
					<span class="glyphicon glyphicon-star-empty" aria-hidden="true"></span>					
		<% 
					}
				}
			}
		%>  &nbsp;|&nbsp;
		좋아요
		<span class="glyphicon glyphicon-heart" aria-hidden="true"></span>
		<span class="glyphicon glyphicon-heart-empty" aria-hidden="true"></span>
		<strong>(50)</strong></span>
	  </div>
	</div>
	</div>
	
	<span>
	<div id="menuContiner" align="center">
	<span>
		<%
			for(MenuBean menu : menuList){
		%>
	<div class="row">
	  <div class="col-xm-6 col-sm-4 col-md-3 col-lg-3">
	<a href="#" style="text-decoration: none;">
	    <div class="thumbnail">
 	      <img src="/Baegopang<%=menu.getPicture() %>" width="150px" height="100px" style="text-decoration: none;"/> 
	      <div class="caption">
	        <h4><strong><%=menu.getMenuName() %></strong></h4>
	        <p>
	        	<%=menu.getInfo() %>
	        </p>
	        	<h5><%=menu.getPrice() %></h5>
	      </div>
	    </div>
	</a>
	  </div>
	</div>
	<%
			}	
	%>
	</span>
	</div> 
	</span>
	
	<span>
		<div id="selectMenuContainer">
		<div class="panel panel-default">
		  <div class="panel-heading">매장 정보</div>
		  <div class="panel-body">
		    <%=storeList.get(0).getInfo()%>
		  </div>
		</div>
		<div class="panel panel-default">
		  <div class="panel-heading">최소 주문 금액</div>
		  <div class="panel-body">
		    <%=storeList.get(0).getMinprice()%>
		  </div>
		</div>
		
		<div class="panel panel-default">
		  <div class="panel-heading">
		    <h3 class="panel-title">주문 목록</h3>
		  </div>
		  <div class="panel-body">
		    고추 바사삭 치킨 1 18000
		   
		  </div>
		</div>
		</div>
	 </span>
	
</body>
</html>