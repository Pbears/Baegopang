<%@page import="gopang.bean.BrandBean"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.List"%>
<%@page import="gopang.bean.StoreBean"%>
<%@page import="gopang.dao.StoreDao"%>
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
		margin-left: 0px;	
	}
	
	.searchContainer{
		margin: o auto;
	}
	#searchWindow{
		width: 300px;
		
	}
	#addressWindow{
		margin-left: 200px;
		width: 150px;
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
	
	document.location.href='/Baegopang/jsp/main/myPageProcess.jsp';
}
 
 function searchMenu(){
	 var obj = document.searchFrm;
	 if(!obj.data.value){
		 alert('검색어를 입력하세요!');
	 }else{
		obj.submit();
	 }
	 
 }
</script>
<header>
<%
	request.setCharacterEncoding("UTF-8");
	MemberBean bean = (MemberBean)session.getAttribute("member");
	String MemberAddr = bean.getAddress();
	String address = MemberAddr.substring(MemberAddr.indexOf("시")+2,MemberAddr.indexOf("구")+1);
	
	//회원주소와 동일한 구의 음식점list 가져오기
	String data = request.getParameter("data");
	//String searchAddress =request.getParameter("searchAddress");
	if(data!=null){
		HashMap<String, String> map = new HashMap<String,String>();
		map.put("address",address);
		map.put("data",data);
		StoreDao dao = new StoreDao();
		List<BrandBean> storeList = dao.selectSearchStore(map);
		session.setAttribute("searchStoreList",storeList);
	}
%>
		<div id="headerContainer">
			<div id="mainTitle" align="center">
				<a href="/Baegopang/jsp/main/index.jsp">
					<img alt="" src="/Baegopang/img/beagopangTitle.png">
				</a>
			</div>
			<form action="searchMain.jsp" name="searchFrm" method="post">
				<div id="searchContainer">
					<table align="center">
						<tr>
							<td>
								<input type="text" name="searchAddress" id="addressWindow" class="form-control" readonly="readonly" placeholder="<%=MemberAddr.substring(0,MemberAddr.indexOf("구")+1)%>">
							</td>
							<td>
								<input type="button" id="locationBtn" value="location" class="btn btn-default">
							</td> 
							<td>
								<input type="text" name="data" id="searchWindow" class="form-control" placeholder="Search">
							</td>
							<td>
								<input type="button" id="searchBtn" value="Search" class="btn btn-default" onclick="searchMenu()">
							</td>
							<td>
								<div class="buttonDiv">
								<label><%=bean.getName() %>님 반갑습니다.</label>
								<button type="button" class="btn btn-default btn-lg" id="loginBtn" onclick="myPage()">
								 <span class="glyphicon glyphicon-user" aria-hidden="true"></span>
								</button>
								</div>
							</td>
						</tr>
					</table>
				</div>
			</form>
		</div>
	</header>
	