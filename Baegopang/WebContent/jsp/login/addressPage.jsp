<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
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
.add{
	background-color: #EAEAEA;
}
</style>
</head>
<body>
	<div class="layer">
		<div class="form-group add">
			<label>우편번호찾기</label>
			<div class="form-inline">
				<input type="text" class="form-contro" placeholder="우편번호">
				<button type="button" class="btn btn-default">
					<span class="glyphicon glyphicon-search" aria-hidden="true"></span>
				</button>
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