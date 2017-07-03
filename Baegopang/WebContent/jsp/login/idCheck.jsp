<%@page import="gopang.dao.MemberDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="//code.jquery.com/jquery-1.12.4.js"></script>
<title>Insert title here</title>
</head>
<body>
<%
	String id = request.getParameter("id");
	boolean checkId = true;
	if(id==null || id.trim().length()==0){
		checkId = true;
	}else{
		MemberDao dao = new MemberDao();
		checkId = dao.idCheck(id);
	}
%>
<input type="text" id="idc" value="<%=checkId%>">
<script>
$(document).ready(function () {
	if($("input#idc").val()=="true"){
		$(opener.document).find("#divId").attr('class','col-sm-10 has-error');
		$(opener.document).find("#id").val('');
		$(opener.document).find("#id").focus();
		alert('존재하는 아이디입니다.');
	}else if($("input#idc").val()=='false'){
		$(opener.document).find("#divId").attr('class','col-sm-10 has-success');
		$(opener.document).find("#labelId").text('');
		alert('사용가능한 아이디입니다.');
	}
	window.close();
});
</script>
</body>
</html>