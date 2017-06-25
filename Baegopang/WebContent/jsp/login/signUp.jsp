<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/smoothness/jquery-ui.css">
<link rel="stylesheet" href="/Baegopang/css/bootstrap.css" />
<script src="//code.jquery.com/jquery-1.12.4.js"></script>
<script src="//code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<title>회원가입</title>
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

.inputLog {
	background-color: #EAEAEA;
	width: 30%;
	height: 60%;
}

.inner{
	width: 80%;
	text-align: center;
	vertical-align: middle;
	margin: 0 auto;
}
#datepicker{
	margin: 0 auto;
}
</style>
<script type="text/javascript">
	$.datepicker.setDefaults({
		showOn : "both",
		buttonImageOnly : true,
		dateFormat: "yy-mm-dd",
		buttonImage : "/Baegopang/img/calendar.png",
		buttonText : "Calendar"
	});
</script>

</head>
<body>
	<div class="layer">
		<div class="inputLog">
			<div class="inner">
				<form class="form-horizontal" method="post" action="/Baegopang/jsp/login/signUpProcess.jsp" name="signupFrm">
					<div class="form-group">
						<label for="inputId" class="col-sm-2 control-label">ID</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="id" name="id" placeholder="ID">
						</div>
					</div>
					<div class="form-group">
						<label for="inputPw" class="col-sm-2 control-label">Password</label>
						<div class="col-sm-10">
							<input type="password" class="form-control" id="pw" name="pw" placeholder="Password">
						</div>
					</div>
					<div class="form-group">
						<label for="inputPw" class="col-sm-2 control-label">Confirm</label>
						<div class="col-sm-10">
							<input type="password" class="form-control" id="pwConfirm" name="pwConfirm" placeholder="Password Confirm">
						</div>
					</div>
					<div class="form-group">
						<label for="inputName" class="col-sm-2 control-label">Name</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="name" name="name" placeholder="Name">
						</div>
					</div>
					<div class="form-group">
						<label for="inputAddress" class="col-sm-2 control-label">Address</label>
						<div class="col-sm-10">
							<button type="button" class="btn btn-default" style="width: 100%" id="address" name="address">
								<span class="glyphicon glyphicon-search" aria-hidden="true" ></span>
							</button>
							<input type="text" class="form-control" id="address1" name="address1" >
							<input type="text" class="form-control" id="address2" name="address2" placeholder="Detail Address">
						</div>
					</div>
					<div class="form-group">
						<label for="inputTel" class="col-sm-2 control-label">Tel</label>
						<div class="col-sm-10">
							<div class="controls controls-row">
								<input style="width: 30%;" type="text" id="tel1" name="tel1">
								- <input style="width: 30%;" type="text" id="tel2" name="tel2">
								- <input style="width: 30%;" type="text" id="tel3" name="tel3">
							</div>
						</div>
					</div>
					<div class="form-group">
						<label for="inputGender" class="col-sm-2 control-label">Gender</label>
						<div class="col-sm-10">
							<label class="radio-inline"> <input type="radio" controls
								name="gender" id="male" value="male" checked="checked"> 남
							</label> <label class="radio-inline"> <input type="radio"
								name="gender" id="female" value="female"> 여
							</label>
						</div>
					</div>
					<div class="form-group">
						<label for="inputBirth" class="col-sm-2 control-label">Birth</label>
						<div class="col-sm-10">
								<input id="datepicker" class="form-control" name="birth" >
						</div>
					</div>
					<div class="form-group">
						<div class="col-sm-offset-2 col-sm-10">
							<input type="submit" class="btn btn-primary" value="Sign in">
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
</body>
<script>
	$("#datepicker").datepicker();
	
	$( "input[type='radio']" ).checkboxradio();
	
	$("button[name='address']").click(function(){
		window.open("/Baegopang/jsp/login/addressPage.jsp","address input" ,"width=500, height=500");
	});

</script>
</html>