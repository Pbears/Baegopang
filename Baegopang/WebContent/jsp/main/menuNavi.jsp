<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
   	int brandNo = Integer.parseInt(request.getParameter("brandno"));
%>
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
	    background-color: orange;
	    text-decoration: none;
	}
	
	li a.active{
		text-decoration: none;
	}
	
	.active {
	    background-color: #ff5722;
	}
</style>
<ul>
   	<%
   		switch(brandNo/100){
   			case 1:
   	%>
     			<li><a class="active" href="/Baegopang/jsp/main/storeByBrandMain.jsp?brandno=100">치킨</a></li>
			    <li><a href="/Baegopang/jsp/main/storeByBrandMain.jsp?brandno=200">중식</a></li>
			    <li><a href="/Baegopang/jsp/main/storeByBrandMain.jsp?brandno=300">피자</a></li>
			    <li><a href="/Baegopang/jsp/main/storeByBrandMain.jsp?brandno=400">한식</a></li>
			    <li><a href="/Baegopang/jsp/main/storeByBrandMain.jsp?brandno=500">족발, 보쌈</a></li>
			    <li><a href="/Baegopang/jsp/main/storeByBrandMain.jsp?brandno=600">찜/탕</a></li>
			    <li><a href="/Baegopang/jsp/main/storeByBrandMain.jsp?brandno=700">일식</a></li>
			    <li><a href="/Baegopang/jsp/main/storeByBrandMain.jsp?brandno=800">도시락</a></li>
			    <li><a href="/Baegopang/jsp/main/storeByBrandMain.jsp?brandno=900">패스트푸드</a></li>
    <%
    		break;
   			case 2:
   	%>
   			    <li><a href="/Baegopang/jsp/main/storeByBrandMain.jsp?brandno=100">치킨</a></li>
   	 		    <li><a class="active" href="/Baegopang/jsp/main/storeByBrandMain.jsp?brandno=200">중식</a></li>
			    <li><a href="/Baegopang/jsp/main/storeByBrandMain.jsp?brandno=300">피자</a></li>
			    <li><a href="/Baegopang/jsp/main/storeByBrandMain.jsp?brandno=400">한식</a></li>
			    <li><a href="/Baegopang/jsp/main/storeByBrandMain.jsp?brandno=500">족발, 보쌈</a></li>
			    <li><a href="/Baegopang/jsp/main/storeByBrandMain.jsp?brandno=600">찜/탕</a></li>
			    <li><a href="/Baegopang/jsp/main/storeByBrandMain.jsp?brandno=700">일식</a></li>
			    <li><a href="/Baegopang/jsp/main/storeByBrandMain.jsp?brandno=800">도시락</a></li>
			    <li><a href="/Baegopang/jsp/main/storeByBrandMain.jsp?brandno=900">패스트푸드</a></li>
   	<%
   			break;
   			case 3:
   	%> 		
	   			 <li><a href="/Baegopang/jsp/main/storeByBrandMain.jsp?brandno=100">치킨</a></li>
			     <li><a href="/Baegopang/jsp/main/storeByBrandMain.jsp?brandno=200">중식</a></li>
			     <li><a class="active" href="/Baegopang/jsp/main/storeByBrandMain.jsp?brandno=300">피자</a></li>
			     <li><a href="/Baegopang/jsp/main/storeByBrandMain.jsp?brandno=400">한식</a></li>
			     <li><a href="/Baegopang/jsp/main/storeByBrandMain.jsp?brandno=500">족발, 보쌈</a></li>
			     <li><a href="/Baegopang/jsp/main/storeByBrandMain.jsp?brandno=600">찜/탕</a></li>
			     <li><a href="/Baegopang/jsp/main/storeByBrandMain.jsp?brandno=700">일식</a></li>
			     <li><a href="/Baegopang/jsp/main/storeByBrandMain.jsp?brandno=800">도시락</a></li>
			     <li><a href="/Baegopang/jsp/main/storeByBrandMain.jsp?brandno=900">패스트푸드</a></li>
	   	<%
  		 	break;
   			case 4:
   	%> 		
	   			 <li><a href="/Baegopang/jsp/main/storeByBrandMain.jsp?brandno=100">치킨</a></li>
			     <li><a href="/Baegopang/jsp/main/storeByBrandMain.jsp?brandno=200">중식</a></li>
			     <li><a href="/Baegopang/jsp/main/storeByBrandMain.jsp?brandno=300">피자</a></li>
			     <li><a class="active" href="/Baegopang/jsp/main/storeByBrandMain.jsp?brandno=400">한식</a></li>
			     <li><a href="/Baegopang/jsp/main/storeByBrandMain.jsp?brandno=500">족발, 보쌈</a></li>
			     <li><a href="/Baegopang/jsp/main/storeByBrandMain.jsp?brandno=600">찜/탕</a></li>
			     <li><a href="/Baegopang/jsp/main/storeByBrandMain.jsp?brandno=700">일식</a></li>
			     <li><a href="/Baegopang/jsp/main/storeByBrandMain.jsp?brandno=800">도시락</a></li>
			     <li><a href="/Baegopang/jsp/main/storeByBrandMain.jsp?brandno=900">패스트푸드</a></li>
   	<%
   			break;
   			case 5:
   	%> 		
	   			 <li><a href="/Baegopang/jsp/main/storeByBrandMain.jsp?brandno=100">치킨</a></li>
			     <li><a href="/Baegopang/jsp/main/storeByBrandMain.jsp?brandno=200">중식</a></li>
			     <li><a href="/Baegopang/jsp/main/storeByBrandMain.jsp?brandno=300">피자</a></li>
			     <li><a href="/Baegopang/jsp/main/storeByBrandMain.jsp?brandno=400">한식</a></li>
			     <li><a class="active" href="/Baegopang/jsp/main/storeByBrandMain.jsp?brandno=500">족발, 보쌈</a></li>
			     <li><a href="/Baegopang/jsp/main/storeByBrandMain.jsp?brandno=600">찜/탕</a></li>
			     <li><a href="/Baegopang/jsp/main/storeByBrandMain.jsp?brandno=700">일식</a></li>
			     <li><a href="/Baegopang/jsp/main/storeByBrandMain.jsp?brandno=800">도시락</a></li>
			     <li><a href="/Baegopang/jsp/main/storeByBrandMain.jsp?brandno=900">패스트푸드</a></li>
   	<%
   			break;
   			case 6:
   	%> 		
	   			 <li><a href="/Baegopang/jsp/main/storeByBrandMain.jsp?brandno=100">치킨</a></li>
			     <li><a href="/Baegopang/jsp/main/storeByBrandMain.jsp?brandno=200">중식</a></li>
			     <li><a href="/Baegopang/jsp/main/storeByBrandMain.jsp?brandno=300">피자</a></li>
			     <li><a href="/Baegopang/jsp/main/storeByBrandMain.jsp?brandno=400">한식</a></li>
			     <li><a href="/Baegopang/jsp/main/storeByBrandMain.jsp?brandno=500">족발, 보쌈</a></li>
			     <li><a class="active" href="/Baegopang/jsp/main/storeByBrandMain.jsp?brandno=600">찜/탕</a></li>
			     <li><a href="/Baegopang/jsp/main/storeByBrandMain.jsp?brandno=700">일식</a></li>
			     <li><a href="/Baegopang/jsp/main/storeByBrandMain.jsp?brandno=800">도시락</a></li>
			     <li><a href="/Baegopang/jsp/main/storeByBrandMain.jsp?brandno=900">패스트푸드</a></li>
   	<%
  		 	break;
   			case 7:
   	%>
	   			 <li><a href="/Baegopang/jsp/main/storeByBrandMain.jsp?brandno=100">치킨</a></li>
			     <li><a href="/Baegopang/jsp/main/storeByBrandMain.jsp?brandno=200">중식</a></li>
			     <li><a href="/Baegopang/jsp/main/storeByBrandMain.jsp?brandno=300">피자</a></li>
			     <li><a href="/Baegopang/jsp/main/storeByBrandMain.jsp?brandno=400">한식</a></li>
			     <li><a href="/Baegopang/jsp/main/storeByBrandMain.jsp?brandno=500">족발, 보쌈</a></li>
			     <li><a href="/Baegopang/jsp/main/storeByBrandMain.jsp?brandno=600">찜/탕</a></li>
			     <li><a class="active" href="/Baegopang/jsp/main/storeByBrandMain.jsp?brandno=700">일식</a></li>
			     <li><a href="/Baegopang/jsp/main/storeByBrandMain.jsp?brandno=800">도시락</a></li>
			     <li><a href="/Baegopang/jsp/main/storeByBrandMain.jsp?brandno=900">패스트푸드</a></li>
   	<%
   			break;
   			case 8:
   	%> 		
	   	 		 <li><a href="/Baegopang/jsp/main/storeByBrandMain.jsp?brandno=100">치킨</a></li>
			     <li><a href="/Baegopang/jsp/main/storeByBrandMain.jsp?brandno=200">중식</a></li>
			     <li><a href="/Baegopang/jsp/main/storeByBrandMain.jsp?brandno=300">피자</a></li>
			     <li><a href="/Baegopang/jsp/main/storeByBrandMain.jsp?brandno=400">한식</a></li>
			     <li><a href="/Baegopang/jsp/main/storeByBrandMain.jsp?brandno=500">족발, 보쌈</a></li>
			     <li><a href="/Baegopang/jsp/main/storeByBrandMain.jsp?brandno=600">찜/탕</a></li>
			     <li><a href="/Baegopang/jsp/main/storeByBrandMain.jsp?brandno=700">일식</a></li>
			     <li><a class="active" href="/Baegopang/jsp/main/storeByBrandMain.jsp?brandno=800">도시락</a></li>
			     <li><a href="/Baegopang/jsp/main/storeByBrandMain.jsp?brandno=900">패스트푸드</a></li>
   	 		
   	<%
   			break;
   			default: 
   	%>			
			     <li><a href="/Baegopang/jsp/main/storeByBrandMain.jsp?brandno=100">치킨</a></li>
			     <li><a href="/Baegopang/jsp/main/storeByBrandMain.jsp?brandno=200">중식</a></li>
			     <li><a href="/Baegopang/jsp/main/storeByBrandMain.jsp?brandno=300">피자</a></li>
			     <li><a href="/Baegopang/jsp/main/storeByBrandMain.jsp?brandno=400">한식</a></li>
			     <li><a href="/Baegopang/jsp/main/storeByBrandMain.jsp?brandno=500">족발, 보쌈</a></li>
			     <li><a href="/Baegopang/jsp/main/storeByBrandMain.jsp?brandno=600">찜/탕</a></li>
			     <li><a href="/Baegopang/jsp/main/storeByBrandMain.jsp?brandno=700">일식</a></li>
			     <li><a href="/Baegopang/jsp/main/storeByBrandMain.jsp?brandno=800">도시락</a></li>
			     <li><a class="active" href="/Baegopang/jsp/main/storeByBrandMain.jsp?brandno=900">패스트푸드</a></li>
   	<% 
   		}
    %>
   </ul>
