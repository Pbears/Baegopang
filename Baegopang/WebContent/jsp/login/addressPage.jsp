<%@page import="gopang.dao.MemberDao"%>
<%@page import="java.util.List"%>
<%@page import="gopang.bean.ZipcodeBean"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%request.setCharacterEncoding("EUC-KR");%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<link rel="stylesheet" href="/Baegopang/css/bootstrap.css" />
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/smoothness/jquery-ui.css">
<script src="//code.jquery.com/jquery-2.2.4.min.js"></script>
<script src="//code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<title>Insert title here</title>
<script>

</script>
<style type="text/css">
body {
	background: #ccc
}

.layer {
	position: absolute;
	top: 0;
	right: 0;
	bottom: 0;
	left: 0;
	display: flex;
	align-items: center;
	justify-content: center;
	display: -webkit-flex;
	-webkit-align-items: center;
	-webkit-justify-content: center;
	background: #ccc;
}

.layer .content {
	padding: 50px;
}

.layer .inputLog {
	padding: 50px;
}

.add {
	background-color: #EAEAEA;
}
</style>
</head>
<body>
<%
	MemberDao dao = new MemberDao();
	String dong = request.getParameter("dong")==null?"":request.getParameter("dong");
	List<ZipcodeBean> list = dao.searchAddress("fff"); 
%>
<%=list %>
	<div class="layer">
		<div class="form-group add">
			<label>�����ȣã��</label>
			<div class="form-inline">
			<form action="" method="post">
				<input type="text" id="dong" value="<%=dong %>" class="form-contro" placeholder="�����ȣ">
				<button type="submit" id="searchAdd" name="searchAdd"
					class="btn btn-default">
					<span class="glyphicon glyphicon-search" aria-hidden="true"></span>
				</button>
				</form>
			</div>
			<table class="table">
				<tr>
					<td>1</td>
				</tr>
				<tr>
					<td>1</td>
				</tr>
				<tr>
					<td>1</td>
				</tr>
			</table>
		</div>
	</div>
</body>
</html>