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
		MemberDao memberDao = new MemberDao();
		
		if (userId != null && userPw == null) {
			if (memberDao.idCheck(userId)) {
				response.sendRedirect("/Baegopang/jsp/login/signIn.jsp?userId=" + userId);
			} else {
				response.sendRedirect("/Baegopang/jsp/login/signIn.jsp?fail=id");
			}
		}else if(userId!=null&userPw!=null){
			if(memberDao.pwCheck(userId ,userPw)){
				session.setAttribute("member", memberDao.selectMember(userId));
				session.setMaxInactiveInterval(6000);
				response.sendRedirect("/Baegopang/jsp/main/index.jsp");
			}else{
				response.sendRedirect("/Baegopang/jsp/login/signIn.jsp?userId="+userId+"&fail=pw");
			}
		}
	%>
</body>
</html>