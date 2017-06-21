<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="/Baegopang/css/bootstrap.css" />
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/smoothness/jquery-ui.css">
<script src="//code.jquery.com/jquery-1.12.4.js"></script>
<script src="//code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<title>Insert title here</title>
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
</style>
<script>
	function sendId() {
		var obj = document.log;
		if (!obj.userId.value || !obj.userId.value.trim()) {
			alert('ID CHECK!');
			obj.userId.value = '';
			obj.userId.focus();
		} else {
			obj.submit();
		}
	}
	function sendPw() {
		var obj = document.log;
		if (!obj.userPw.value || !obj.userPw.value.trim()) {
			alert('Password CHECK!');
			obj.userPw.value = '';
			obj.userPw.focus();
		} else {
			obj.submit();
		}
	}
	
	$(document).ready(function() {
		$(".inputError").effect("shake");
	});
</script>
</head>
<body>
	<%
		String fail = request.getParameter("fail");
		String userId = request.getParameter("userId");
	%>
	<form action="/Baegopang/jsp/login/signInProcess.jsp" method="post" name="log">
		<div class="layer">
			<span class="content"><img src="/Baegopang/img/noimg.png"></span>
			<div class="inputLog">
				<div class="form-group">
					<h1>배고팡</h1>
				</div>
				<%
					if (userId != null) {
				%>
				<div class="form-group">
					<label>' <%=userId%> '님 안녕하세요 헿
					</label>
				</div>
				<input type="hidden" name="userId" value="<%=userId%>">
				<%
					if (fail == null) {
				%>
				<div class="form-group">
					<input type="Password" name="userPw" id="userPw"
						class="form-control" placeholder="Enter Password">
				</div>
				<%
					} else if (fail.equals("pw")) {
				%>
				<div class="form-group has-error">
					<input type="Password" name="userPw" id="userPw"
						class="form-control inputError" placeholder="Password가 틀렸습니다.">
				</div>
				<%
					}
				%>
				<div class="form-group">
					<input type="button" class="btn btn-primary" value="Password check"
						onclick="sendPw()">
				</div>
				<%
					} else if (userId == null) {
						if (fail == null) {
				%>
				<div class="form-group">
					<input type="text" name="userId" id="userId" class="form-control"
						placeholder="Enter ID">
				</div>
				<%
					} else if (fail.equals("id")) {
				%>
				<div class="form-group has-error">
					<input type="text" name="userId" id="userId"
						class="form-control inputError" placeholder="ID가 존재하지않습니다">
				</div>
				<%
					}
				%>
				<div class="form-group">
					<input type="button" class="btn btn-primary" value="ID check"
						onclick="sendId()">
				</div>
				<div class="form-group">
					<a href="#">배고프시죠? 어서들어오세요 ㅎㅎ</a>
				</div>
				<%
					}
				%>
			</div>
		</div>
	</form>
</body>
</html>