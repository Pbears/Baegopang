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

	#storeContiner{
		margin: auto;
	}
	.row{
		display: inline-block;
		margin: auto;
	}
	.thumbnail{
		width: 350px;
		height : 260px;
		margin-left: 40px;
		margin-right : 10px;
		margin-top: 50px;
	}

</style>
</head>
<body>
	<%
		KoreaFoodDao koreaFoodDao = new KoreaFoodDao();
		List<BrandBean>brandList=koreaFoodDao.selectKoreaFood(4);
	%>
		
	<jsp:include page="header.jsp"></jsp:include>
	<jsp:include page="menuNavi.jsp"></jsp:include>
	
	<div id="storeContiner" align="center">
	<% 
		for(BrandBean brand : brandList){
	%>
	<span>
	<div class="row">
	  <div class="col-xm-6 col-sm-4 col-md-3 col-lg-3">
	<a href="/Baegopang/jsp/menuByStore/MenuByStore.jsp?brandno=<%=brand.getBrandNo()%>&storeName=<%=brand.getStorename()%>" style="text-decoration: none;">
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