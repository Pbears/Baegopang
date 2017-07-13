<%@page import="gopang.dao.OrderDao"%>
<%@page import="gopang.bean.StoreBean"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="gopang.bean.MemberBean"%>
<%@page import="gopang.bean.FoodOrderBean"%>
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
	
		MemberBean memberBean =  (MemberBean)session.getAttribute("member");
		List<StoreBean>storeList = (List<StoreBean>)session.getAttribute("storeList");
		List<AddToCartBean>menuList = (List<AddToCartBean>)session.getAttribute("cartList") ;
		FoodOrderBean foodOrderBean = new FoodOrderBean();
		OrderDao dao = new OrderDao();
		
		long time = System.currentTimeMillis(); 

		SimpleDateFormat dayTime = new SimpleDateFormat("yyyyMMddhhmmss");

		String currentTime = dayTime.format(new Date(time));
		
		if(menuList.size() != 1){
			for(int i = 0; i < menuList.size(); i++){
				foodOrderBean.setOrdernumber(currentTime+memberBean.getId()+"-"+(i+1));
				foodOrderBean.setMemberid(memberBean.getId());
				foodOrderBean.setMembername(memberBean.getName());
				foodOrderBean.setMembertel(request.getParameter("tel"));
				foodOrderBean.setMemberaddress(request.getParameter("address"));
				foodOrderBean.setPrice(menuList.get(i).getPrice());
				foodOrderBean.setOrderinfo(request.getParameter("comment"));
				foodOrderBean.setMenuname(menuList.get(i).getMenuName());
				foodOrderBean.setAmount(menuList.get(i).getCnt());
				foodOrderBean.setStorename(storeList.get(0).getStoreName());
				foodOrderBean.setStoreaddress(storeList.get(0).getLocation());
				foodOrderBean.setStoretel(storeList.get(0).getTel());
				foodOrderBean.setOrdertime(currentTime);
				foodOrderBean.setState("���δ��");
				dao.orderInsert(foodOrderBean);
				
			}			
		}else{
				foodOrderBean.setOrdernumber(currentTime+memberBean.getId());
				foodOrderBean.setMemberid(memberBean.getId());
				foodOrderBean.setMembername(memberBean.getName());
				foodOrderBean.setMembertel(request.getParameter("tel"));
				foodOrderBean.setMemberaddress(request.getParameter("address"));
				foodOrderBean.setPrice(menuList.get(0).getPrice());
				foodOrderBean.setOrderinfo(request.getParameter("comment"));
				foodOrderBean.setMenuname(menuList.get(0).getMenuName());
				foodOrderBean.setAmount(menuList.get(0).getCnt());
				foodOrderBean.setStorename(storeList.get(0).getStoreName());
				foodOrderBean.setStoreaddress(storeList.get(0).getLocation());
				foodOrderBean.setStoretel(storeList.get(0).getTel());
				foodOrderBean.setOrdertime(currentTime);
				foodOrderBean.setState("���δ��");
				dao.orderInsert(foodOrderBean);
		}
						
		
	%>
	

	<jsp:include page="../main/header.jsp"/>
	<div class="panel panel-default" id="mainPanel">
	  <div class="panel-body">
	  	<img id="mainImage" src="/Baegopang/img//Baegopang.jpg">
	    <br><h3><strong>�ֹ��� �Ϸ� �Ǿ����ϴ�</strong></h3><br>
	    <div class="panel panel-default" style="margin: auto; width: 650px;">
		  <div class="panel-heading">�ֹ� ����</div>
		  <div class="panel-body">
			    <%
			    	for(AddToCartBean bean : menuList){
			    %>
		  			<h5><%=bean.getMenuName() %> x <%=bean.getCnt()%> - <%=bean.getPrice() %>��</h5><br>
		  			
			    <%
			    	}
			    %>
	    	<br><h4><<�� ���� �ݾ� <strong><%=request.getParameter("realTotalPrice") %>��</strong> �Դϴ�.>></h4><br><br>
	    	
	    		<h4><�� ��û ����></h4><br>
	    	<h5><strong><%=request.getParameter("comment") %></strong></h5>
	    	
		  </div>
		</div>
	  </div>
	</div>
	<jsp:include page="../main/footer.jsp" />
</body>
</html>