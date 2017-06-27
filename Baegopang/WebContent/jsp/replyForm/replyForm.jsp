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
			if($(this).val().length>300){
				$("span#sw").css("color","red");
				$("span#sw").html(300-($(this).val().length));
			}else{
			$("span#sw").html( ($(this).val().length));
			}
		});
	});

});
</script>
</head>
<body>

	<div class="container">
		<br>
		  <form class="navbar-form navbar-left" role="search">
	        <div class="form-group">
			  <label for="comment">Comment:</label><br>
	          <textarea class="form-control" rows="3" style="width: 836px;"></textarea>
	        <button type="button" class="btn btn-default">등록</button>
	        </div>
	        
			<fieldset class="fld_cmt">		
				<p class="info_append">
					<span class="screen_out">입력된 바이트 수 : </span>
					<span class="txt_byte" id="sw"><strong>0</strong></span><strong> / 300자 </strong><span class="txt_bar">|</span>
					<a href="#none">댓글 운영원칙</a>
				</p>
			</fieldset>
	      </form>			
		<br>
	</div>
</body>
</html>