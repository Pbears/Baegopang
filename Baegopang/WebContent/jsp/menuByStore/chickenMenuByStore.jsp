<%@page import="gopang.bean.MemberBean"%>
<%@page import="gopang.dao.ReplyDao"%>
<%@page import="gopang.bean.ReplyBean"%>
<%@page import="java.net.URLDecoder"%>
<%@page import="gopang.bean.MenuBean"%>
<%@page import="gopang.bean.StoreBean"%>
<%@page import="java.util.List"%>
<%@page import="java.net.URLEncoder"%>
<%@page import="gopang.dao.ChickenDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link href="/Baegopang/css/bootstrap.min.css" rel="stylesheet">
<script src="https://code.jquery.com/jquery-2.2.4.min.js"></script>
<script type="text/javascript">
	function onCheck(obj) {
		obj.style.border='1.5px solid #ff8c00'
	}
	
	function outCheck(obj) {
		obj.style.border='1px solid #ddd'
	}
</script>
<script>
	$(function(){
		var totalprice=0;
		$("div#panel-body-ordertotalPrice").hide();
		$("a#innerA").click(function(){
			$("div#panel-body-ordertotalPrice").show();
			var menu = $(this).find("input#menuName").val();
			var price = $(this).find("input#menuPrice").val();
			var tag = "<div class='order-div'><label class='menu'>"+menu+"</label><input type='number' id='cnt' value='1' step='1' min='1' max='10'><label class='price'>"+price+"</label><div><button class='cancelBtn'>취소</button><div> <input type='hidden' class='totalPrice'>";
			$(tag).appendTo("label#menuLabel");
			totalprice=eval(totalprice)+eval(price);
   		    $("label.ordertotalPrice").text(totalprice);
		});
		
		$(".cnt").click(function(){
			alert('ok');			
		});
		
		 $('.disabled').click(function(e){
		     e.preventDefault();
		  })
		  $('#cancelBtn').click(function() {
				alert('test');
		});
		 
		 $("a[href='#none']").click(function(){
				$("form#"+this.id).toggle();
				
			});
			
			$("button").click(function(){
				//alert(this.type);
				$("form[id='frm"+$(this).attr("id")+"']").submit();
				//alert($(this).attr("id"));
			});
			$("textarea").click(function(){
				$(this).html('');
				$(this).keyup(function(e){
					$("span#sw").css("color","blue");
					if($(this).val().length>100){
						$("span#sw").css("color","red");
						$("span#sw").html(100-($(this).val().length));
					}else{
					$("span#sw").html( ($(this).val().length));
					}
				});
			});

	});
	
	/* $(function () {
		$(".cnt").on('keyup keydown change', function (event) {
			alert(event);
		});		
	}) */
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
	
	li a:hover:not(.active) {
	    background-color: gray;
	}
	
	.active {
	    background-color: #ff5722;
	}
	
	#storeInfoContainer {
		width: 1600px;
		margin: auto;
		margin-top: 50px;
	}
	
	#menuContiner{
		margin: auto;
		margin-left: 0px;
		width: 1250px;
		height : auto;
		display: inline-block;
	}
	
	.row{
		display: inline-block;
		margin: auto;
	}
	
	.thumbnail{
		width: 270px;
		height : 270px;
		padding : 5px;
		margin-left: 40px;
		margin-right : 10px;
		margin-top: 50px;
	}
	
	#selectMenuContainer{
		top : 545px;
		left : 1340px;
		bottom : 870px;
	 	width: 400px;
	 	height : 800px;
	 	display : inline-block;
	 	position: absolute;
	}
	#cnt{
		width: 40px;
		text-align: right;
		margin-left: 5px;
		margin-right: 20px;
	}
	label{
		padding: 5px;
	}
	
	  div.container{
  	 width: 980px;
  	 margin-left: 150px;
  	 margin-right: 500px;
  }
  
  button.btn.btn-default {
	height: 74px;
	width: 76px;
  }
  .fld_cmt{
  	text-align: right;
  }
  
</style>
</head>
<body>

	<%
		request.setCharacterEncoding("UTF-8");
		int brandNo = Integer.parseInt(request.getParameter("brandno"));
		
		ChickenDao chickenDao = new ChickenDao();
		
		List<StoreBean>storeList=chickenDao.selectChickenStore(brandNo);
		List<MenuBean>menuList=chickenDao.selectChickenMenu(brandNo);
		
		String storeName = storeList.get(0).getStoreName();
		MemberBean memberBean = (MemberBean)session.getAttribute("member");
		String id = memberBean.getId();
		
	%>
	
	<jsp:include page="../main/header.jsp"></jsp:include>
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
	
	<div id="storeInfoContainer">
	<div class="panel panel-default">
	  <div class="panel-body">
	  	
	   <strong>매장명 : <%=storeList.get(0).getStoreName()%></strong>  &nbsp;|&nbsp;
	   <strong>매장 주소 : <%=storeList.get(0).getLocation()%></strong>  &nbsp;|&nbsp;
	   별점 : 
	   <%
			for (int j=0; j < storeList.get(0).getGpa() ; j++){
		%>
				<span class="glyphicon glyphicon-star" aria-hidden="true"></span>
		<%
				if(j == storeList.get(0).getGpa() -1 && j <5){
						for(int k=0; k < 4-j; k++){
		%>
					<span class="glyphicon glyphicon-star-empty" aria-hidden="true"></span>					
		<% 
					}
				}
			}
		%>  &nbsp;|&nbsp;
		좋아요
		<span class="glyphicon glyphicon-heart" aria-hidden="true"></span>
		<span class="glyphicon glyphicon-heart-empty" aria-hidden="true"></span>
		<strong>(50)</strong></span>
	  </div>
	</div>
	</div>
	
	<span>
	<div id="menuContiner" align="center">
	<span>
		<%
			/* for(MenuBean menu : menuList){ */
				for(int i=0; i<menuList.size(); i++){
		%>
	<div class="row" >
	  <div class="col-xm-6 col-sm-4 col-md-3 col-lg-3">
	    <div class="thumbnail" onmouseover="onCheck(this)" onmouseout="outCheck(this)">
	<a href="#" id="innerA" style="text-decoration: none;" class="disabled">
 	      <img src="/Baegopang<%=menuList.get(i).getPicture() %>" width="150px" height="100px" style="text-decoration: none;"/> 
	      <div class="caption">
	        <h4><strong><%=menuList.get(i).getMenuName() %></strong></h4>
	        <input id="menuName" type="hidden" value="<%=menuList.get(i).getMenuName()%>">
	        <p>
	        	<%=menuList.get(i).getInfo() %>
	        </p>
	        <h5><%=menuList.get(i).getPrice() %></h5>
	        <input id="menuPrice" type="hidden" value="<%=menuList.get(i).getPrice() %>">
	      </div>
	</a>
	    </div>
	  </div>
	</div>
	<%
			}	
	%>
	</span>
	</div> 
	</span>
	
	<span>
		<div id="selectMenuContainer">
		
		<div class="panel panel-default">
		  <div class="panel-heading">매장 정보</div>
		  <div class="panel-body">
		    <%=storeList.get(0).getInfo()%>
		  </div>
		</div>
		
		<div class="panel panel-default">
		  <div class="panel-heading">최소 주문 금액</div>
		  <div class="panel-body">
		    <%=storeList.get(0).getMinprice()%>
		  </div>
		</div>
		
		<div class="panel panel-default">
		  <div class="panel-heading">
		    <h3 class="panel-title">주문 목록</h3>
		  </div>
		  <div class="panel-body" id="panel-body-order">
		     <label for="addMenu" id="menuLabel" ></label> 


		  <!--   <div class="order-div">
				< <label class="menu"></label>
		    	<input type='number' class='cnt' value='1' step='1' min='1' max='10'>
		    	<label class="price"></label>
		    	<button class='cancelBtn'>취소</button> 
		    </div>
 -->



		  </div>
		</div>
		
		<div class="panel panel-default">
		  <div class="panel-heading">
		    <h3 class="panel-title">주문 금액 합계</h3>
		  </div>
		  <div class="panel-body" id="panel-body-ordertotalPrice">
		    <label class="ordertotalPrice" style="font-size: 30px;"></label>원
		  </div>
		</div>
		
		</div>
	 </span>
	 <jsp:include page="../replyForm/replyForm.jsp">
	 	<jsp:param value="<%=brandNo %>" name="brandNo"/>
	 	<jsp:param value="<%=storeName %>" name="storeName"/>
	 	<jsp:param value="orderNumber" name="orderNumber"/>
	 	<jsp:param value="<%=id %>" name="id"/>
	 </jsp:include>
</body>
</html>