<%@page import="gopang.bean.FoodOrderBean"%>
<%@page import="java.util.List"%>
<%@page import="gopang.dao.MyPageDao"%>
<%@page import="gopang.dao.MemberDao"%>
<%@page import="gopang.bean.MemberBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8");
	MemberBean bean = (MemberBean)session.getAttribute("member");
	MyPageDao myDao = new MyPageDao();
	String id = bean.getId();

	//주문내역
	session.setAttribute("foodOrderList",myDao.selectMemberFoodOrder(id));
	
	//포인트
	session.setAttribute("pangList", myDao.selectMemberPoint(id));
	
	//리뷰관리
	session.setAttribute("replyList", myDao.selectMemberReply(id));
	
	response.sendRedirect("/Baegopang/jsp/main/myPage.jsp?state=success");
	
%>


</body>
</html>