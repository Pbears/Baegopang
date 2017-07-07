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
	MemberBean modbean = new MemberBean();
	MemberDao dao = new MemberDao();
	
	//내정보
	
	String pw = request.getParameter("pw");
	String address = request.getParameter("address1")+" "+request.getParameter("address2");
	String tel = request.getParameter("tel1")+"-"+request.getParameter("tel2")+"-"+request.getParameter("tel3");
	modbean.setAddress(address);
	modbean.setBirth(bean.getBirth());
	modbean.setGender(bean.getGender());
	modbean.setId(bean.getId());
	modbean.setName(bean.getName());
	modbean.setPw(pw);
	modbean.setTel(tel);
	
	dao.updateMember(modbean); 
	
	response.sendRedirect("/Baegopang/jsp/main/myPage.jsp?state=success");
	session.setAttribute("member", modbean);
	
%>


</body>
</html>