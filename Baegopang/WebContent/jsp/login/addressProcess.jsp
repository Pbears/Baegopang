<%@page import="gopang.bean.ZipcodeBean"%>
<%@page import="java.util.List"%>
<%@page import="gopang.dao.ZipCodeDao"%>
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
	String dong = request.getParameter("dong");
	ZipCodeDao dao = new ZipCodeDao();
	List<ZipcodeBean> list = dao.searchAddress(dong);
	RequestDispatcher rd = request.getRequestDispatcher("/jsp/login/addressPage.jsp");
	request.setAttribute("addList", list);
	rd.forward(request, response);
%>
</body>
</html>