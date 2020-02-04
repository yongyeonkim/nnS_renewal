<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<%@ include file="/WEB-INF/include/include-header.jspf" %>
<meta charset="UTF-8">
<style type="text/css">

h1 {font-size: 3em; margin: 20px 0; color: #FFF;}
.container {width: 700px; margin: 10px auto;}
ul.goodsTabs {
	margin: 0;
	padding: 0;
	float: left;
	list-style: none;
	height: 32px;
	border-bottom: 1px solid #999;
	border-left: 1px solid #999;
	width: 100%;
}
ul.goodsTabs li {
	
	float: left;
	margin: 0;
	padding: 0;
	height: 31px;
	line-height: 31px;
	border: 1px solid #999;
	border-left: none;
	margin-bottom: -1px;
	background: #F0F0F0;
	overflow: hidden;
	position: relative;
}
ul.goodsTabs li a {
	text-decoration: none;
	color: #000;
	display: block;
	font-size: 1.2em;
	padding: 0 20px;
	border: 1px solid #fff;
	outline: none;
}
ul.goodsTabs li a:hover {
	background: #ccc;
}	
html ul.goodsTabs li.active, html ul.goodsTabs li.active a:hover  {
	background: #fff;
	border-bottom: 1px solid #fff;
}
.goodsTab_container {
	border: 1px solid #999;
	border-top: none;
	clear: both;
	float: left; 
	width: 100%;
	background: #fff;
	-moz-border-radius-bottomright: 5px;
	-khtml-border-radius-bottomright: 5px;
	-webkit-border-bottom-right-radius: 5px;
	-moz-border-radius-bottomleft: 5px;
	-khtml-border-radius-bottomleft: 5px;
	-webkit-border-bottom-left-radius: 5px;
}
.goodsTab_content {
	padding: 20px;
	font-size: 1.2em;
}
.goodsTab_content h2 {
	font-weight: normal;
	padding-bottom: 10px;
	border-bottom: 1px dashed #ddd;
	font-size: 1.8em;
}
.goodsTab_content h3 a{
	color: #254588;
}
.goodsTab_content img {
	float: left;
	margin: 0 20px 20px 0;
	border: 1px solid #ddd;
	padding: 5px;
}
 #content
{
   background-color: #ffffff;
   padding: 20px 10px;
   overflow: auto;
}
#vertical_tab-container
{
   float: left;
   margin: 50px 0 0 0;
   width: 126px;
}
#vertical_tab-container ul
{
   list-style: none;
   text-align: center;
}
#vertical_tab-container ul li
{
   border-top: 1px solid #666;
   border-right: 1px solid #666;
   border-bottom: 1px solid #666;
   border-left: 8px solid #666;
   background-color: #ddd;
   margin: 8px 0;
}
#vertical_tab-container ul li a,
#vertical_tab-container ul li a:visited
{
   text-decoration: none;
   color: #666;
   display: block;
   padding: 15px 5px;
}
#vertical_tab-container ul li:hover
{
   border-left: 8px solid #333;
}
#vertical_tab-container ul li a:hover
{
   color: #000;
}
#vertical_tab-container ul li.selected
{
   border-right: none;
   background-color: #fff;
   border-left: 8px solid #006699;
}
#main-container
{
   min-height: 400px;
   margin: 0 0 0 125px;
   padding: 20px;
   background-color: #fff;
   border: 1px solid #888;
}
</style>
<script type="text/javascript">

$(document).ready(function() { //변경 버튼 클릭시
    $("#delete").on("click", function(e) {
       e.preventDefault();
       fn_delete();
    });
 });
 
 function fn_delete(deleteAccountForm) { //변경 버튼 클릭시(유효성검증, 데이터입력)
	 var MEM_PW = {MEM_PW : $('#MEM_PW').val()};
     $.ajax({
         url:"<c:url value='/myPage/deletePw'/>",
         type:'get',
         data: MEM_PW,
         success:function(data){              
             if($.trim(data)=="1"){
            	 var comSubmit = new ComSubmit("deleteAccountForm");
            	 comSubmit.setUrl("<c:url value='/myPage/deleteAccountCheck'/>");
            	 comSubmit.submit();  
             }else{
                alert("비밀번호가 틀렸습니다.");
             }
         },
         error:function(){
                 alert("에러입니다");
         }
     });
 };
 
 $("#deleteAccountForm").on("submit",function(e){
 });

</script>
</head>
<body>
  <div id="content">
   <div id="vertical_tab-container">
      <ul>
         <li><a href="accountDetail">회원정보 변경</a></li>
         <li><a href="pwModifyForm">비밀번호 변경</a></li>
         <li class="selected"><a href="deleteAccount">회원탈퇴</a></li>
         <li><a href="reportList">신고내역</a></li>
         <li><a href="qnaList">Q&A</a></li>
      </ul>
   </div>
   <div id="main-container">
   <center>
   <form id="deleteAccountForm" method="post">
   		<table border="0" class="deleteAccount">
   		<br/><br/><br/>
		  <h2>회원탈퇴</h2>
		  <br/>
   			<tbody>
   				*비밀번호 <input type="password" id="MEM_PW" name="MEM_PW">
   				<br/><br/>
   				<table border="1px" width="40%">
					<tbody>
						<tr>
							<th>
							<div style="color:black;">
								한 번 탈퇴하시면 회원님의 정보를 복구할 수 없습니다.<br/>
								신중히 선택해 주시길 바랍니다.
							</div>
							</th>
						</tr>
					</tbody>
				</table>
				<br/><br/>
				<button id="delete">회원 탈퇴</button>
				<input type="button" value="취소하기" onclick="document.location.href='/nnS/main'"/>
   			</tbody>
   		</table>
   		</form>
   		</center>
   </div>
  </div>
</body>