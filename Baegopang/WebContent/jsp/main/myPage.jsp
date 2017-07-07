<%@page import="java.util.List"%>
<%@page import="gopang.bean.FoodOrderBean"%>
<%@page import="java.io.PrintWriter"%>
<%@page import="gopang.bean.MemberBean"%>
<%@page import="gopang.dao.MemberDao"%>
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
<title>내정보수정</title>
<style>
ul {
    list-style-type: none;
    margin: 0 auto;
    padding: 0;
    overflow: hidden;
    background-color: #ff8d00;
    width: 350px;
    margin-left: 150px;
}

li {
    float: left; 
}

li a {
    display: block;
    color: white;
    text-align: center;
    padding: 14px 16px;
    text-decoration: none;
    
}

li a:hover:not(.active) {
    background-color: #4CAF50;
}

.active {
    background-color: #4CAF50;
}
</style>
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
	background: white;
	/* background: #ccc; */
}
.mainDiv{
	background-color: #ff8d00;
	margin: 0 auto;
	width:600px;
}

.layer .content {
	padding: 50px;
}

.layer .inputLog {
	padding: 50px;
    margin: 0 auto;
}

.inputLog, .orderLog, .pointLog, .reviewLog {
	background-color: #ff8d00;
	width: 30%;
	height: 60%;
}
.orderLog, .pointLog, .reviewLog{
	width: 500px;
    height: 623px; 
}
.inner{
	width: 80%;
	text-align: center;
	vertical-align: middle;
	margin: 0 auto;
	color: white;
}
input{
	color: black;
}
#datepicker{
	margin: 0 auto;
}
</style>
<style>
table {
    border-collapse: collapse;
    padding: 100px;
    margin-left: 50px;
    margin-top: 30px;
    width: 500px;
}

th, td {
    text-align: left;
    padding: 8px;
}

tr:nth-child(even){background-color: #f2f2f2}

th {
    background-color: #4CAF50;
    color: white;
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
	
	function checkGender() {
		var genderCheck = document.getElementById('genderCheck').value;
		var gender = document.getElementById('gender');
		var gendermale = document.getElementById('gendermale');
		var genderfemale = document.getElementById('genderfemale');
		if(genderCheck=='남'){
			gendermale.checked=true;
		}else{
			genderfemale.checked=true;	
		}
		
		/*  var obj = document.getElementById("stateM");
		if(obj.value=='success'){
			alert('수정성공하셧어여헿');
		}  */
	}
	
	function ajaxProcess(url,ty,dataType,data){

		  $.ajax({
				 url:url,
				 type:ty,
				 dataType:dataType,
				 data:data,
				 cache:false,
				 success:function(vv){
					 if(data=='inputLog'){
						 $('a#info').attr('class','active');
						 $('#inputLog').css("display", "block");
						 $('#orderLog, #pointLog, #reviewLog').css("display", "none");
						 $('a#order, a#point, a#review').attr('class','');
					 }else if(data=='orderLog'){
						 $('a#order').attr('class','active');
						 $('#orderLog').css("display", "block");
						 $('a#info, a#point, a#review').attr('class','');
						 $('#inputLog, #pointLog, #reviewLog').css("display", "none");
					 }
					 else if(data=='pointLog'){
						 $('a#point').attr('class','active');
						 $('#pointLog').css("display", "block");
						 $('a#info, a#order, a#review').attr('class','');
						 $('#inputLog, #orderLog, #reviewLog').css("display", "none");
					 }else if(data=='reviewLog'){
						 $('a#review').attr('class','active');
						 $('#reviewLog').css("display", "block");
						 $('a#info, a#order, a#point').attr('class','');
						 $('#inputLog, #orderLog, #pointLog').css("display", "none");
					 }
				 },
				 error:function(){
					 alert('error');
				 }
			  });
	}
	$(function(){
	  $("a#info").click(function(){
		  ajaxProcess('/Baegopang/jsp/main/myPage.jsp','POST','html','inputLog');
	  });
	  $("a#order").click(function(){
		  ajaxProcess('/Baegopang/jsp/main/myPage.jsp','POST','html','orderLog');
	  });
	  $("a#point").click(function(){
		  ajaxProcess('/Baegopang/jsp/main/myPage.jsp','POST','html','pointLog');
	  });
	  $("a#review").click(function(){
		  ajaxProcess('/Baegopang/jsp/main/myPage.jsp','POST','html','reviewLog');
	  }); 
	});
	
</script>
</head>
<body onload="checkGender()">
<%
	MemberBean bean = (MemberBean)session.getAttribute("member");
 	List<FoodOrderBean> list = (List<FoodOrderBean>)session.getAttribute("foodOrderList"); 
	String tel = bean.getTel();
	String[] telArr = tel.split("-");
	String state = request.getParameter("state");
	
%>
	<input type="hidden" id="stateM" value="<%=state%>"/>
	<div class="layer">
	<div class="mainDiv">
		<a href="/Baegopang/jsp/main/index.jsp"><img src="/Baegopang/img/beagopangTitle.png" style=" margin-left: 50px; width: 500px;"></a>
		<ul>
		  <li><a href="#" id="info" class="active">내정보</a></li>
		  <li><a href="#" id="order">주문내역</a></li>
		  <li><a href="#" id="point">포인트</a></li>
		  <li><a href="#" id="review">리뷰관리</a></li>
		</ul>
		<!--내정보  -->
		<div class="inputLog" id="inputLog" style="width: 500px;">
			<div class="inner">
				<form class="form-horizontal" method="post" action="/Baegopang/jsp/main/myPageModProcess.jsp" name="modifyFrm">
					<div class="form-group">
						<label for="inputId" class="col-sm-2 control-label">ID</label>
						<div class="col-sm-10" id="divId">
							<input type="text" class="form-control" id="id" name="id" placeholder="ID" value="<%=bean.getId()%>" readonly="readonly">
							<label id="labelId"></label>
						</div>
					</div>
					<div class="form-group">
						<label for="inputPw" class="col-sm-2 control-label">PW</label>
						<div class="col-sm-10" id="divPw">
							<input type="password" class="form-control" id="pw" name="pw" placeholder="Password">
							<label id="labelPw"></label>
						</div>
					</div>
					<div class="form-group">
						<label for="inputPw" class="col-sm-2 control-label">Confirm</label>
						<div class="col-sm-10" id="divPwConfirm">
							<input type="password" class="form-control" id="pwConfirm" name="pwConfirm" placeholder="Password Confirm">
							<label id="labelPwConfirm"></label>
						</div>
					</div>
					<div class="form-group">
						<label for="inputName" class="col-sm-2 control-label">Name</label>
						<div class="col-sm-10" id="divName">
							<input type="text" class="form-control" id="name" name="name" placeholder="Name" value="<%=bean.getName()%>" readonly="readonly">
							<label id="labelName"></label>
						</div>
					</div>
					<div class="form-group">
						<label for="inputAddress" class="col-sm-2 control-label">Address</label>
						<div class="col-sm-10" id="divAddress">
							<button type="button" class="btn btn-default" style="width: 100%" id="address" name="address">
								<span class="glyphicon glyphicon-search" aria-hidden="true" ></span>
							</button>
							<input type="text" class="form-control" id="address1" name="address1" value="<%=bean.getAddress()%>" >
							<input type="text" class="form-control" id="address2" name="address2" placeholder="Detail Address">
							<label id="labelAddress"></label>
						</div>
					</div>
					<div class="form-group">
						<label for="inputTel" class="col-sm-2 control-label">Tel</label>
						<div class="col-sm-10">
							<div class="controls controls-row" id="divTel">
								<input style="width: 30%;" type="text" id="tel1" name="tel1" value="010" readonly>
								- <input style="width: 30%;" type="text" id="tel2" name="tel2" value="<%=telArr[1]%>">
								- <input style="width: 30%;" type="text" id="tel3" name="tel3" value="<%=telArr[2]%>">
							</div>
						</div>
					</div>
					<div class="form-group">
						<label for="inputGender" class="col-sm-2 control-label">Gender</label>
						<div class="col-sm-10" id="divGender">
							<label class="radio-inline"> 
								<input type="radio" name="gender" id="gendermale" value="male" checked="" disabled="disabled"> 남
							</label> 
							<label class="radio-inline"> 
								<input type="radio" name="gender" id="genderfemale" value="female" checked="" disabled="disabled" > 여
								<input type="hidden" name="genderCheck" id="genderCheck" value="<%=bean.getGender()%>">
							</label>
						</div>
					</div>
					<div class="form-group">
						<label for="inputBirth" class="col-sm-2 control-label">Birth</label>
						<div class="col-sm-10" id="divBirth">
								<input id="datepicker" class="form-control" name="birth" value="<%=bean.getBirth()%>" disabled="disabled">
						</div>
					</div>
					<div class="form-group">
						<div class="col-sm-offset-2 col-sm-10">
							<input type="submit" class="btn btn-success" value="Modify">
						</div>
					</div>
				</form>
			</div>
		</div>
				<!--주문내역  -->
			<div class="orderLog" id="orderLog" style="width: 500px; display: none;" >
			 	<table>
				
					  <tr>
					    <th>주문일자</th>
					    <th>주문번호</th>
					    <th>음식점명</th>
					    <th>주문금액</th>
					    <th>진행상태</th>
					  </tr>
					 <%
						for(int i =0;i<list.size();i++){
							FoodOrderBean foodOrderBean = list.get(i);
							
					%>
					  <tr>
					    <td><%=foodOrderBean.getOrdertime()%></td>
					    <td><%=foodOrderBean.getOrdernumber() %></td>
					    <td><%=foodOrderBean.getStorename() %></td>
					    <td><%=foodOrderBean.getPrice()%></td>
					    <td><%=foodOrderBean.getState() %></td>
					  </tr>
				<%
					}
				%>
				</table>
			</div>
			<!--포인트  -->
			<div class="pointLog" id="pointLog" style="width: 500px; display: none;" >
				<table>
					  <tr>
					    <th>포인트적립일자</th>
					    <th>음식점명</th>
					    <th>적립포인트</th>
					    <th>누적포인트</th>
					  </tr>
					  <tr>
					    <td>20170707</td>
					    <td>미소야-구로점</td>
					    <td>10</td>
					    <td>10</td>
					  </tr>
				</table>
			</div>
			<!--리뷰관리  -->
			<div class="reviewLog" id="reviewLog" style="width: 500px; display: none;" >
				<table>
					  <tr>
					    <th>리뷰작성일자</th>
					    <th>음식점명</th>
					    <th>리뷰내용</th>
					  </tr>
					  <!-- <tr>
					    <td>Peter</td>
					    <td>Griffin</td>
					    <td>$100</td>
					  </tr> -->
				</table>
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
	
	$("input#pw").blur(function(){
		if($("input#pw").val().trim().length==0 || !$("input#pw").val()){
			$("div#divPw").attr('class','col-sm-10 has-error');
			$("input#pw").val('');
			$("input#pw").focus();
			$("label#labelPw").text('비밀번호를 정확히 입력하세요.');
		}else{
			$("div#divPw").attr('class','col-sm-10 has-success');
			$("label#labelPw").text('');
		}
	});
	$("input#pwConfirm").blur(function(){
		if($("input#pw").val()==$(this).val()){
			$("div#divPwConfirm").attr('class','col-sm-10 has-success');
			$("label#labelPwConfirm").text('');
		}else if($("input#pw").val()!=$(this).val()){
			$("div#divPwConfirm").attr('class','col-sm-10 has-error');
			$("input#pwConfirm").focus();
			$("input#pwConfirm").val('');
			$("label#labelPwConfirm").text('비밀번호와 일치하지않습니다.');
		}
	});

</script>
</html>