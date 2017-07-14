<%@page import="gopang.bean.MemberBean"%>
<%@page import="java.util.Stack"%>
<%@page import="java.util.ArrayList"%>
<%@page import="gopang.bean.AddToCartBean"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Map"%>
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
	$(document).ready(function() {
		$('#checkPang').click(function() {
			var pangText = eval($('#pangText').val());
			var pang = eval($('#myPang').val());

			if(pangText>pang || pangText<1000 || pangText%100!=0){
				alert('팡은 1000팡 이상 ,100팡 단위로 내 팡범위 안에서 사용가능합니다!');
				$("#pangText").val('');
			}else{
				var price = eval($('label#orderPrice').text()) - pangText;
				var calPang = pang-pangText;
				
				$('#pangPrice').text("-"+pangText);
				$('#realTotalPrice').text(price);
				$('#pangAble').text(calPang);
				$('#finalPrice').val(price);
			}			
		});
	});
	
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
li a :hover :not(.active){
	background-color : gray ;
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
.mainDiv {
	width: 84%;
	margin: 0 auto;
}
.rowmainDiv{
	width: 1580px;	
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
	width: 100%;
}
.finalDiv{
	width: 80%;
	margin: 0 auto;
}
.finalButton{
	width: 100%;
}
.majorDiv{
	margin: 20px;
}
.leftDivs, .rightDivs{
	margin: 10px;
	padding: 10px;
}
.rightDivs{
	margin: 0 auto;
	width: 80%;
}
</style>
</head>
<body>
	<%
	
		request.setCharacterEncoding("UTF-8");
		MemberBean memberBean = (MemberBean)session.getAttribute("member");
		ArrayList<AddToCartBean>cartList = new ArrayList<>();
		
		
		String [] menuName = request.getParameterValues("menuName");
		String [] cnt = request.getParameterValues("count");
		String [] price = request.getParameterValues("price");
		
		int count = 0;
		int totalPrice = 0;
		
		for(int i=0 ; i < menuName.length ; i++){
			System.out.println(menuName[i]);
		}
		
		int [] cntArr = new int [cnt.length];
		
		if(cnt != null){
			for(int i=0; i<cnt.length; i++){
				cntArr[i] = Integer.parseInt(cnt[i]);
				count+=cntArr[i];
			}			
		}
		
		int [] priceArr = new int [price.length];
		
		if(price != null){
			for(int i=0; i<price.length; i++){
				priceArr[i] = Integer.parseInt(price[i]);
				totalPrice+=priceArr[i] ;
			}
			
		}
		
		for(int i=0; i < menuName.length ; i++){
			AddToCartBean addToCartBean = new AddToCartBean();
			addToCartBean.setMenuName(menuName[i]);
			addToCartBean.setCnt(cntArr[i]);
			addToCartBean.setPrice(priceArr[i]);
			cartList.add(addToCartBean);
	
		}
		
		session.setAttribute("cartList", cartList);
	%>
	<!-- 주석풀기 -->
	<jsp:include page="../main/header.jsp"/>

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

		<form action="final.jsp" method="post">
	<!-- 중앙 div 태그 -->
	<div class="rowmainDiv">

		<!-- 머릿말 -->
		<h3>배달 / 결제정보</h3>

		<!-- 수평선 -->
		<hr>
		<!-- 왼쪽 div 태그 -->
		<div class="col-md-8">

			<!-- 01. 배달정보 div -->
			<div class="panel panel-default majorDiv">
			
				<!-- panel head -->
				<div class="panel-heading">
					<h4>01. 배달정보</h4>
				</div>
				
				<!-- panel body -->
				<div class="panel-body">
				
					<!-- 휴대전화 form -->
					<div class="form-group sendInfoDiv leftDivs">
						<label for="inputEmail3" class="col-sm-2 control-label">휴대전화</label>
						<div class="col-sm-10">
							<input type="tel" class="form-control" placeholder="전화번호" name="tel" value="<%=memberBean.getTel()%>">
						</div>
						<br>
					</div>
					
					<!-- 주소 form -->
					<div class="form-group sendInfoDiv leftDivs">
						<label for="inputPassword3" class="col-sm-2 control-label">주소</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" placeholder="주소" name="address" value="<%=memberBean.getAddress()%>">
						</div>
						<br>
					</div>
					
					<!-- 요청사항 form -->
					<div class="form-group sendInfoDiv leftDivs">
						<label for="inputPassword3" class="col-sm-2 control-label">요청사항</label>
						<div class="col-sm-10">
							<textarea class="form-control" name="comment" rows="5"  placeholder="요청사항"></textarea>
						</div>
						<br>
					</div>
				</div>
			</div>

			<br>

			<!-- 02. 할인적용 div -->
			<div class="panel panel-default majorDiv">
			
				<!-- panel head -->
				<div class="panel-heading">
					<h4>02. 할인적용</h4>
				</div>
				
				<!-- panel body -->
				<div class="panel-body">
				
					<!-- 주문금액 form -->
					<div class="form-group sendInfoDiv leftDivs">
						<label for="inputPassword3" class="col-sm-2 control-label">주문금액</label>
						<div class="col-sm-10 orderPrice">
							<label id="orderPrice"><%=totalPrice %></label><label>원</label>
						</div>
					</div>
					
					<br>
					<hr>
					
					<!-- 팡 결제 form -->
					<div class="jumbotron leftDivs">
						<div class="row">
							<div class="form-group">
								<div class="col-md-6">
									<div class="col-md-6">
										<label>내 팡</label>
									</div>
									<div class="col-md-6">
										<label id="pangAble"><%=memberBean.getPang() %></label><label>팡</label>
										<input type="hidden" id="myPang" value="<%=memberBean.getPang()%>">
									</div>
									<div class="centerDiv"><label><h6>1000팡 이상 , 100팡 단위로 사용가능</h6></label></div>
								</div>
								<div class="col-md-6">
									<div class="row">
										<div class="col-md-8">
											<input type="text" id="pangText" class="form-control" placeholder="0">
										</div>
										<div class="col-md-4">
											<button type="button" class="btn btn-success" id="checkPang" >사용하기</button>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="centerDiv">
							<label><h5>'팡'이란?<br></h5><h6>누적 결제 금액에 대한 포인트로써, 결제시 금액으로 환전하여 사용할 수 있는 포인트</h6></label>
						</div>
					</div>
				</div>
			</div>
		</div>

		<!-- 오른쪽 div 태그 -->
		<div class="col-md-4">

			<!-- 03. 결제 방법 선택 div -->
			<div class="panel panel-default majorDiv">
				<div class="panel-heading">
					<h4>03. 결제 방법 선택</h4>
				</div>
				<div class="panel-body">
				
					<!-- 메뉴 추가 header div -->
					<div class="form-group centerDiv rightDivs">
						<h4><label class="col-xs-4 col-md-4">메뉴이름</label></h4>
						<h4><label class="col-xs-4 col-md-4" style="margin-left: 60px; width: 70px;">금액</label></h4>
						<h4><label class="col-xs-4 col-md-4" style="width: 70px; margin-left: 10px;">수량</label></h4>
						<br>
						<hr>
					</div>
					
					<!-- 메뉴 추가 body div -->
					<div class="form-group centerDiv rightDivs">
					<%
						for(AddToCartBean bean : cartList){
					%>
						<div class="row">
							<label class="col-xs-4 col-md-4" style="width: 180px;"><%=bean.getMenuName() %></label>
							<div class="col-xs-4 col-md-4" style="width: 95px;">
								<label id="eachPrice"><%=bean.getPrice() %>원</label>
							</div>
							<div class="col-xs-4 col-md-4" style="width: 60px;">
								<label id="eachAmount"><%=bean.getCnt() %>개</label>
							</div>
						</div>
						<%
						}
						%>
						<div>
							<br><br>
							<hr class="dashedHr">
						</div>
					</div>
					
					
					
					<!-- 최종결제정보 -->
					<div class="form-group centerDiv rightDivs">
						<hr>
						<label class="col-sm-4">수량</label>
						<div class="col-sm-6 orderPrice">
							<label id="totalAmount"><%=count %></label><label>개</label>
						</div>
						<label class="col-sm-4">상품금액</label>
						<div class="col-sm-6 orderPrice">
							<label id="totalPrice"><%=totalPrice %></label><label>원</label>
						</div>
						<label class="col-sm-4">팡 결제</label>
						<div class="col-sm-6 orderPrice redText">
							<label></label><label id="pangPrice">0</label><label>팡</label>
						</div>
						<br><br><br><br><br>
						<hr>
						
						<div class="rightText">
								<h6><label>최종결제금액</label></h6>
								<div>
									<h1><label id="realTotalPrice"><%=totalPrice %></label><label>원</label></h1>
									<input type="text" id="finalPrice" name="realTotalPrice" value="<%=totalPrice%>">
								</div>
						</div>
					</div>
					<div class="finalDiv rightDivs">
						<hr>
						<button type="submit" class="btn btn-success" id = "finalButton" >결제하기</button>
					</div>
				</div>
			</div>
		</div>
	</div>
	</form>
	
		


	<!-- footer -->
	<jsp:include page="../main/footer.jsp" />
</body>
</html>