<%@page import="gopang.bean.AddToCartBean"%>
<%@page import="gopang.bean.MenuBean"%>
<%@page import="java.util.List"%>
<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-2.2.4.min.js"></script>
<script type="text/javascript">
	$(function() {
		
	});
</script>
<style type="text/css">
	#mainPanel{
		margin : auto;
		width: 1450px;
		text-align: center;
		
	}
	
	#mainImage{
		width: 350px;
		height: 350px;
	}
</style>
</head>
<body>
	
	<%
		request.setCharacterEncoding("UTF-8");
	
		List<AddToCartBean>menuList = (List<AddToCartBean>)session.getAttribute("cartList") ;
		
	%>
	<jsp:include page="../main/header.jsp"/>
	<div class="panel panel-default" id="mainPanel">
	  <div class="panel-body">
	  	<img id="mainImage" src="/Baegopang/img//Baegopang.jpg">
	    <h3><strong>주문이 완료 되었습니다</strong></h3>
	    <table class="table">
	    <%
	    	for(AddToCartBean bean : menuList){
	    %>
  			<tr>
  				<td><%=bean.getMenuName() %><%=bean.getPrice() %></td>
  			</tr>
	    <%
	    	}
	    %>
	    	<tr>
	    		<td>총 결제 금액 <strong><%=request.getParameter("realTotalPrice") %></strong> 입니다.</td>
	    	</tr>
	    	<tr>
	    		<td> <고객 요청 사항> </td>
	    	</tr>
	    	<tr>
	    		<td><strong><%=request.getParameter("comment") %></strong></td>
	    	</tr>
		</table>
	  </div>
	</div>
	<jsp:include page="../main/footer.jsp" />
</body>
</html>