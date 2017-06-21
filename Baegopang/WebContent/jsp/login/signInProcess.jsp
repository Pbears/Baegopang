<%@page import="java.io.Console"%>
<%@page import="gopang.dao.MemberDao"%>
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
		String userId = request.getParameter("userId");
		String userPw = request.getParameter("userPw");
		if (userId != null && userPw == null) {
			if (MemberDao.idCheck(userId)) {
				session.setAttribute("id", userId);
				session.setMaxInactiveInterval(60);
				response.sendRedirect("/Baegopang/jsp/login/signIn.jsp?userId=" + userId);
			} else {
				response.sendRedirect("/Baegopang/jsp/login/signIn.jsp?fail=id");
			}
		}else if(userId!=null&userId!=null){
			if(MemberDao.passwordCheck((String)session.getAttribute("id"),userPw)){
				response.sendRedirect("/Baegopang/jsp/main.jsp");
			}else{
				response.sendRedirect("/Baegopang/jsp/signIn.jsp?userId="+userId+"&fail=pw");
			}
		}
	%>
</body>
</html>