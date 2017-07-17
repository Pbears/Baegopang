<%@page import="gopang.dao.TangFoodDao"%>
<%@page import="java.util.List"%>
<%@page import="gopang.dao.KoreaFoodDao"%>
<%@page import="gopang.bean.BrandBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="/Baegopang/css/bootstrap.min.css" rel="stylesheet">
<title>Insert title here</title>
<script type="text/javascript">
	function onCheck(obj) {
		obj.style.border='1.5px solid #ff8c00'
	}
	function outCheck(obj) {
		obj.style.border='1px solid #ddd'
	}
</script>
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
		TangFoodDao tangFoodDao = new TangFoodDao();
		List<BrandBean>brandList=tangFoodDao.selectTangFood(6);
	%>
		
	<jsp:include page="header.jsp"></jsp:include>
	<ul>
	  <li><a href="chickenMain.jsp">치킨</a></li>
	  <li><a href="pizzaMain.jsp">피자</a></li>
	  <li><a href="chinaFoodMain.jsp">중국집</a></li>
	  <li><a href="koreaFoodMain.jsp">분식</a></li>
	  <li><a class="active" href="tangFoodMain.jsp">찜,탕</a></li>
	  <li><a href="jockFoodMain.jsp">족발, 보쌈</a></li>
	  <li><a href="japanFoodMain.jsp">일식</a></li>
	  <li><a href="dosirakMain.jsp">도시락</a></li>
	  <li><a href="fastFoodMain.jsp">패스트푸드</a></li>
	</ul>
	
	<div id="storeContiner" align="center">
	<% 
		for(BrandBean brand : brandList){
	%>
	<span>
	<div class="row">
	  <div class="col-xm-6 col-sm-4 col-md-3 col-lg-3">
	<a href="/Baegopang/jsp/menuByStore/MenuByStore.jsp?brandno=<%=brand.getBrandNo()%>" style="text-decoration: none;">
	    <div class="thumbnail" onmouseover="onCheck(this)" onmouseout="outCheck(this)">
 	      <img src="/Baegopang<%=brand.getPicture()%>" alt="..." width="150px" height="100px"> 
	      <div class="caption">
	        <h3><strong><%=brand.getStorename()%></strong></h3>
	        <p>
	        	<%
					for (int j=0; j < brand.getGpa() ; j++){
				%>
					<span class="glyphicon glyphicon-star" aria-hidden="true"></span>
				<%
						if(j == brand.getGpa()-1 && j <5){
							for(int k=0; k < 4-j; k++){
				%>
					<span class="glyphicon glyphicon-star-empty" aria-hidden="true"></span>					
				<% 
							}
						}
					}
				%>
	        	<br>
	        	<%=brand.getLocation()%><br>
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