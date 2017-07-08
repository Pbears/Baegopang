<%@page import="java.net.URLDecoder"%>
<%@page import="java.net.URLEncoder"%>
<%@page import="gopang.dao.ReplyDao"%>
<%@page import="gopang.bean.ReplyBean"%>
<%@page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<head>
<title>Bootstrap Example</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style type="text/css">
  
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
<script type="text/javascript">
$(document).ready(function() {
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
</script>
</head>
<body>
	<%
		ReplyBean replyBean = new ReplyBean();
		ReplyDao replyDao = new ReplyDao();
		
		int brandno = Integer.parseInt(request.getParameter("brandno"));
		String storeName = request.getParameter("storeName");
		String orderNumber = request.getParameter("orderNumber");
		String id = request.getParameter("id");
		String contents = request.getParameter("contents");
		String reply = request.getParameter("reply");
		
		
		if(reply != null){
		try{
			replyBean.setNo(replyDao.selectRepSeq());
			replyBean.setStoreName(storeName);
			replyBean.setOrderNumber(orderNumber);
			replyBean.setId(id);
			//replyBean.setNo(1);
			replyBean.setContents(contents);
			
			if(reply.equals("new")){
				replyBean.setPnum(replyBean.getNo());
				replyBean.setRef(replyBean.getNo());
			} 
			
			else if(reply != null && reply.equals("reply")){
				replyBean.setRef(Integer.parseInt(request.getParameter("ref")));
				replyBean.setPnum(Integer.parseInt(request.getParameter("pnum")));
			} 
				
			System.out.println(replyBean);
			replyDao.insertReply(replyBean);
			}catch (Exception e){
				e.printStackTrace();
			} 
		}
	%>
	<br><br><br><br>
	<div class="container">
		<br>
		  <form id="frmnew" action="" class="navbar-form navbar-left" role="search" method="get">
	        <div class="form-group">
			  <label for="comment">Comment:</label><br>
	          <textarea id="contents" name="contents" class="form-control" rows="3" style="width: 836px;"></textarea>
	          <input id="brandno" name="brandno" type="hidden" value="<%=brandno%>">
	          <input id="storeName" name="storeName" type="hidden" value="<%=storeName%>">
	          <input id="reply" name="reply" type="hidden" value="new">
	        <button id="new" name="new" type="button" class="btn btn-default">등록</button>
	        </div>
	        
			<fieldset class="fld_cmt">		
				<p class="info_append">
					<span class="screen_out">입력된 바이트 수 : </span>
					<span class="txt_byte" id="sw"><strong>0</strong></span><strong> / 100자 </strong><span class="txt_bar">|</span>
					<a href="#none">댓글 운영원칙</a>
				</p>
			</fieldset>
	      </form>			
		<br>
	</div>
	<%
		if(contents != null){
	%>
	&nbsp;&nbsp;&nbsp;
		<ul class="media-list" style="padding: 5px; width: 800px; height: 85px; margin-left: 180px; background-color: #f5f5f5;">
		  <li class="media" style="background-color: ">
		    <div class="media-left">
		      <a href="#">
		        <img class="media-object" src="/Baegopang/img/comment/img_avatar3.png" alt="..." width="50px;" height="50px;">
		      </a>
		    </div>
		    <div class="media-body">
		      <h5 class="media-heading"><strong>ID : <%=id %></strong> <small>님</small> | 2017-06-28 17:01</h5>
				<%=contents%>
		    </div>
		  </li>
		 </ul>
	<%
		}
	%>
	<!-- 	  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		 <ul class="media-list" style="padding: 5px; width: 800px; height: 85px; margin-left: 220px; background-color: #f9b39c">
		  <li class="media">
		    <div class="media-left">
		      <a href="#">
		        <img class="media-object" src="/Baegopang/img/comment/img_avatar4.png" alt="..." width="50px;" height="50px;">
		      </a>
		    </div>
		    <div class="media-body">
		      <h5 class="media-heading">사장님 | 2017-06-28 17:01</h5>
		       주문 할인 1000원 기간 입니다 많은 주문 부탁드립니다.
		    </div>
		  </li>
		</ul> -->
</body>
</html>