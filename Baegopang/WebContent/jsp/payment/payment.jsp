<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link href="/Baegopang/css/bootstrap.min.css" rel="stylesheet">
<script src="https://code.jquery.com/jquery-2.2.4.min.js"></script>
<script>
	
</script>
<style>
ul {
	list-style-type: none;
	margin: auto;
	padding: 0;
	overflow: hidden;
	background-color: #ff8c00;
	width: 1600px;
	border-radius: 10px;
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
	border-radius: 10px;
	font-weight: bold;
}

li

 

a


:hover


:not

 

(
.active

 

)
{
background-color


:

 

gray


;
}
.leftDiv {
	background-color: gray;
}

.rightDiv {
	background-color: olive;
}

.leftLeftDiv {
	background-color: buttonshadow;
}

.leftRightDiv {
	background-color: teal;
}

.mainDiv {
	width: 90%;
	margin: 0 auto;
}
.sendInfoDiv{
	padding: 10px;
}
.orderPrice{
	text-align: right;
}
.centerDiv{
	margin: 0 auto;
	width: 80%;
}
.redText{
	color: red;
}
.rightText{
	width:80%;
	text-align: right;
}
.dashedHr{
	border: dashed 1px gray;
	width: 80%;
}
.finalDiv{
	width: 80%;
	margin: 0 auto;
}
.finalButton{
	width: 100%;
}
hr{
	border: solid 1px gray;
}
label{
	vertical-align: middle;
	padding-top: 7px;
}
textarea{
	resize: none;
}
</style>
</head>
<body>
	<!-- 주석풀기 -->
	<%-- <jsp:include page="../main/header.jsp"/> --%>

	<ul>
		<li><a class="active" href="/Baegopang/jsp/main/chickenMain.jsp">치킨</a></li>
		<li><a href="/Baegopang/jsp/main/pizzaMain.jsp">피자</a></li>
		<li><a href="/Baegopang/jsp/main/chinaFoodMain.jsp">중국집</a></li>
		<li><a href="/Baegopang/jsp/main/koreaFoodMain.jsp">한식</a></li>
		<li><a href="/Baegopang/jsp/main/jockFoodMain.jsp">족발, 보쌈</a></li>
		<li><a href="/Baegopang/jsp/main/japanFoodMain.jsp">일식</a></li>
		<li><a href="/Baegopang/jsp/main/dosirakMain.jsp">도시락</a></li>
		<li><a href="/Baegopang/jsp/main/fastFoodMain.jsp">패스트푸드</a></li>
	</ul>

	<!-- 중앙 div 태그 -->
	<div class="row mainDiv">

		<!-- 머릿말 -->
		<h3>배달 / 결제정보</h3>

		<!-- 수평선 -->
		<hr>

		<!-- 왼쪽 div 태그 -->
		<div class="col-md-8 leftDiv">

			<!-- 01. 배달정보 div -->
			<div class="panel panel-default">
			
				<!-- panel head -->
				<div class="panel-heading">
					<h4>01. 배달정보</h4>
				</div>
				
				<!-- panel body -->
				<div class="panel-body">
				
					<!-- 휴대전화 form -->
					<div class="form-group sendInfoDiv">
						<label for="inputEmail3" class="col-sm-2 control-label">휴대전화</label>
						<div class="col-sm-10">
							<input type="tel" class="form-control" placeholder="전화번호">
						</div>
					</div>
					
					<!-- 주소 form -->
					<div class="form-group sendInfoDiv">
						<label for="inputPassword3" class="col-sm-2 control-label">주소</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" placeholder="주소">
						</div>
					</div>
					
					<!-- 요청사항 form -->
					<div class="form-group sendInfoDiv">
						<label for="inputPassword3" class="col-sm-2 control-label">요청사항</label>
						<div class="col-sm-10">
							<textarea class="form-control" rows="5"  placeholder="요청사항"></textarea>
						</div>
					</div>
					
				</div>
				
			</div>

			<!-- 02. 할인적용 div -->
			<div class="panel panel-default">
			
				<!-- panel head -->
				<div class="panel-heading">
					<h4>02. 할인적용</h4>
				</div>
				
				<!-- panel body -->
				<div class="panel-body">
				
					<!-- 주문금액 form -->
					<div class="form-group sendInfoDiv">
						<label for="inputPassword3" class="col-sm-2 control-label">주문금액</label>
						<div class="col-sm-10 orderPrice">
							<label id="orderPrice">100</label><label>원</label>
						</div>
					</div>
					
					<br>
					<hr>
					
					<!-- 팡 결제 form -->
					<div class="jumbotron">
						<div class="row">
							<div class="form-group">
								<div class="col-md-6">
									<div class="col-md-6">
										<label>가용포인트</label>
									</div>
									<div class="col-md-6">
										<label id="pangAble">1000</label><label>팡</label>
									</div>
									<div class="centerDiv"><label><h6>1000팡 이상 , 100팡 단위로 사용가능</h6></label></div>
								</div>
								
								<div class="col-md-6">
									<div class="row">
										<div class="col-md-8">
											<input type="text" class="form-control" value="0">
										</div>
										<div class="col-md-4">
											<button type="button" class="btn btn-success">사용하기</button>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="centerDiv"><label><h5>'팡'이란?<br></h5><h6>누적 결제 금액에 대한 포인트로써, 결제시 금액으로 환전하여 사용할 수 있는 포인트</h6></label></div>
					</div>
				</div>
			</div>
		</div>

		<!-- 오른쪽 div 태그 -->
		<div class="col-md-4 rightDiv">

			<!-- 03. 결제 방법 선택 div -->
			<div class="panel panel-default ">
				<div class="panel-heading">
					<h4>03. 결제 방법 선택</h4>
				</div>
				<div class="panel-body">
				
					<!-- 메뉴 추가 div -->
					<div class="form-group centerDiv">
						<label for="inputPassword3" class="col-md-4 control-label">메뉴이름</label>
						<label class="col-md-4">금액</label>
						<label class="col-md-4">수량</label>
						<hr>
					</div>
					
					<div class="form-group centerDiv">
						<label for="inputPassword3" class="col-md-4 control-label">메뉴이름</label>
						<div class="col-md-4">
							<label id="eachPrice">1000</label><label>원</label>
						</div>
						<div class="col-md-4">
							<label id="eachAmount">2</label><label>개</label>
						</div>
					</div>
					
					<hr class="dashedHr">
					
					<!-- 최종결제정보 -->
					<div class="form-group centerDiv">
						<hr>
						<label for="inputPassword3" class="col-sm-4 control-label">수량</label>
						<div class="col-sm-6 orderPrice">
							<label id="totalAmount">2</label><label>개</label>
						</div>
						<label for="inputPassword3" class="col-sm-4 control-label">상품금액</label>
						<div class="col-sm-6 orderPrice">
							<label id="totalPrice">2000</label><label>원</label>
						</div>
						<label for="inputPassword3" class="col-sm-4 control-label">팡 결제</label>
						<div class="col-sm-6 orderPrice redText">
							<label>-</label><label id="pangPrice">1000</label><label>팡</label>
						</div>
						<br><br><br><br><br>
						<hr>
						
						<div class="rightText">
								<h6><label>최종결제금액</label></h6>
								<div>
									<h1><label id="realTotalPrice">1000</label><label>원</label></h1>
								</div>
						</div>
						
					</div>
					<div class="finalDiv">
						<hr>
						<button type="button" class="btn btn-success finalButton">결제하기</button>
					</div>
					
				</div>
				
				
				
			</div>
		</div>
	</div>


	<!-- footer -->
	<jsp:include page="../main/footer.jsp" />
</body>
</html>