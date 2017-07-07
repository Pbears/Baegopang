<%@page import="gopang.bean.MemberBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<link href="/Baegopang/css/bootstrap.min.css" rel="stylesheet">
<style>
	html{
		margin: 50px;
	}
	header{
	    padding: 1em;
	    border : 1px;
	    border-color : black;
	    color: black;
	    background-color: #FF8C00;
	    clear: left;
	    text-align: center;
	  	margin: auto;
	    margin-bottom : 50px;
	    width: 1600px;
	}
	
	#mainTitle{
		margin-bottom: 50px;
	}
	
	#mainTitle img{
		width: 350px;
		height: 95px;
	}
	
	#loginBtn{
		width: 50px;
		height: 50px;
		margin-left: 0px;
	}
	
	#headerContainer{
		margin: auto;
	}
	
	#locationBtn{
		margin-left: 250px;	
	}
	
	.searchContainer{
		margin: o auto;
	}
	#searchWindow{
		width: 500px;
		
	}
	.buttonDiv{
		padding-left: 100px;
	}
	button#loginBtn.btn btn-default btn-lg{
		width: 35px;
		height: 35px;
	}
	
</style>
<script>
 function myPage() {
	
	document.location.href='myPageProcess.jsp';
}
</script>
<header>
<%
	MemberBean bean = (MemberBean)session.getAttribute("member");
%>
		<div id="headerContainer">
			<div id="mainTitle" align="center">
				<a href="/Baegopang/jsp/main/index.jsp">
					<img alt="" src="/Baegopang/img/beagopangTitle.png">
				</a>
			</div>
			<div id="searchContainer">
				<table align="center">
					<tr>
						<td>
							<input type="button" id="locationBtn" value="location" class="btn btn-default">
						</td>
						<td>
							<input type="text" id="searchWindow" class="form-control" placeholder="Search">
						</td>
						<td>
							<input type="button" id="searchBtn" value="Search" class="btn btn-default">
						</td>
						<td>
							<div class="buttonDiv">
							<label><%=bean.getName() %>님 안녕하세여헿</label>
							<button type="button" class="btn btn-default btn-lg" id="loginBtn" onclick="myPage()">
							 <span class="glyphicon glyphicon-user" aria-hidden="true"></span>
							</button>
							</div>
						</td>
					</tr>
				</table>
			</div>
		</div>
	</header>
	