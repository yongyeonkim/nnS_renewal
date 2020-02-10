<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="/WEB-INF/include/include-header.jspf" %>

<!-- header_area -->
<div class="header_area" align="center">
	<h1><a href="/nnS/main" title="nnS"><img src="/nnS/resources/images/SkinImg/mainlogo.png" alt="nnS" style="width:200px;" align="center"/></a></h1>		

	<div class="top_menu">
		<ul>
			<c:if test="${session_MEM_ID == null }">
			<li><a style="color:#666;" href="${contextPath}/nnS/loginForm" class="log">로그인</a></li> 
			<li><a style="color:#666;" href="${contextPath}/nnS/joinForm">회원가입</a> </li>
			<li><a style="color:#666;" href="${contextPath}/nnS/findId">ID/PW찾기</a> </li>
			</c:if>
			<c:if test="${session_MEM_ID != null }">
			<li><p style="font-color:#666; font-size:12px;">${session_MEM_ID}&nbsp;님</p></li>	
				<c:if test="${session_MEM_ID == 'admin' }">
					<li><a style="color:#666;" href="/nnS/main">관리자페이지</a></li> 	
				</c:if>
			<li><a style="color:#666;" href="${contextPath}/nnS/logout" class="log">로그아웃</a></li> 
			<li><a style="color:#666;" href="${contextPath}/nnS/myPage">마이페이지</a></li>
			<li><a style="color:#666;" href="${contextPath}/nnS/myshop">내상점</a></li> 
			</c:if>
		</ul>
	</div>

	
</div><!-- // header_area -->

