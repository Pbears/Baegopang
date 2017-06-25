<%@page import="gopang.dao.ZipCodeDao"%>
<%@page import="java.net.URLDecoder"%>
<%@page import="gopang.dao.MemberDao"%>
<%@page import="java.util.List"%>
<%@page import="gopang.bean.ZipcodeBean"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%request.setCharacterEncoding("EUC-KR");%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%
	request.setCharacterEncoding("EUC-KR");
%>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<link rel="stylesheet" href="/Baegopang/css/bootstrap.css" />
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/smoothness/jquery-ui.css">
<script src="//code.jquery.com/jquery-2.2.4.min.js"></script>
<script src="//code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<title>Insert title here</title>
<script>

</script>
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

.add {
	background-color: #EAEAEA;
}
</style>
<script type="text/javascript">
	function searchAd(){
		var obj = document.addFrm.searchDong;
		location.replace('/Baegopang/jsp/login/addressProcess.jsp?dong='+obj.value);
	}
	function checkDong(obj){
		var ojt = document.getElementById(obj.id).childNodes[0].nodeValue;
		opener.document.getElementById("address1").value=ojt;
		window.close();
	}
</script>
</head>
<body>
<%
	List<ZipcodeBean> list = (List<ZipcodeBean>)request.getAttribute("addList");
%>
	<div class="layer">
		<div class="form-group add">
			<label>우편번호찾기</label>
			<div class="form-inline">
				<form action="" method="post" name="addFrm">
					<input type="text" id="searchDong" name="searchDong" class="form-contro" placeholder="우편번호">
					<button type="button" id="searchAdd" name="searchAdd"
						class="btn btn-default" onclick="searchAd()">
						<span class="glyphicon glyphicon-search" aria-hidden="true"></span>
					</button>
				</form>
			</div>
			<table class="table" name="addT">
				<%
					if(list!=null){
						ZipcodeBean bean = null;
						for(int i=0 ; i<list.size() ; i++){
							bean = list.get(i);
							%>
							<tr>
								<td onclick="checkDong(this)" id="add<%=i%>"><%=bean.getSido()+" "+bean.getGugun()+" "+bean.getDong()+" "+bean.getBunji() %></td>
							</tr>
							<%
						}
					}else{
						%>
						<tr>
							<td>검색하세요</td>
						</tr>
						<%
					}
				%>
			</table>
		</div>
	</div>
</body>
</html>