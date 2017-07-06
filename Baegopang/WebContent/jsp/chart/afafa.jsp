<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="https://code.jquery.com/jquery-2.2.4.min.js"></script>
<title>Insert title here</title>
<script>
$(function(){
	var test = $.ajax({
		type:"post",
		url:"data.json",
		dataType:"json",
		success:function(result){
			return (result);
		}
	});
	console.log(eval(test));
});
</script>
</head>
<body>

</body>
</html>