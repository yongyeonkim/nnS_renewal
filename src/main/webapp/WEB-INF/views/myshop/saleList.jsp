<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@ include file="/WEB-INF/include/include-header.jspf" %>
<meta charset="UTF-8">
<link href="<c:url value="/resources/css/board.css"/>" rel="stylesheet">
<style type="text/css">

   @import url("http://fonts.googleapis.com/earlyaccess/nanumgothic.css");
   
   html {
      height: 100%;
   }
   
   body {
        background:linear-gradient(to bottom right, #f0e199, #f0e199);
   }
   body,table,input,select,textarea,button,h1,h2,h3,h4,h5,h6,a{font-family:'맑은 고딕',Malgun Gothic,sans-serif;font-size:12px;color:#666;font-weight:400;}
   
    .card {
        margin: 0 auto; /* Added */
        float: none; /* Added */
        margin-bottom: 10px; /* Added */
        box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
   }
   
   .form-signin .form-control {
        position: relative;
        height: auto;
        -webkit-box-sizing: border-box;
        -moz-box-sizing: border-box;
        box-sizing: border-box;
        padding: 10px;
        font-size: 16px;
   }
</style>

</head>
<body>
<div class="card align-middle" style="border-radius:20px; background-color:#fff; margin-top:50px;">
  <div id="content">
   <div id="vertical_tab-container">
      <ul>
         <li><a href="/nnS/myshop"><img src="/nnS/resources/images/myshop_tab1.png" width="100" height="30"></a></li>
         <li class="selected"><a href="/nnS/myshop/saleList"><img src="/nnS/resources/images/myshop_tab2.png" width="100" height="30"></a></li>
         <li><a href="/nnS/myshop/goodsLikeList"><img src="/nnS/resources/images/myshop_tab3.png" width="100" height="30"></a></li>
      </ul>
   </div>
   
   <div id="main-container">
		<table border="0" align="center">
		<tbody>
			<tr>
				<td>
					<table  style="filter: alpha(opacity=60);" ffffff="" align="center">
								<tbody>
								<tr align="center">
								
								<td></td>
								
								<td></td>
								
								</tr>
								<tr>
									<td>
										<a href="#goodsTab1">
											<img src="./../resources/images/d_money.png" alt="" width="100" height="100"/>
										</a>
									</td>
									<td>
										<img src="./../resources/images/d_dot.png" alt="" width="50" height="50"/>
									</td>
									<td>
										<a href="#goodsTab2">
											<img src="./../resources/images/d_truck.png" alt="" width="100" height="100"/>
										</a>
									</td>
									<td>
										<img src="./../resources/images/d_dot.png" alt="" width="50" height="50"/>
									</td>
									<td>
										<a href="#goodsTab3">
											<img src="./../resources/images/d_hand.png" alt="" width="100" height="100"/>
										</a>
									</td>
								</tr>
								</tbody>
							</table>
					<div class="container">
					    <ul class="goodsTabs">
					        <li><a href="#goodsTab1">판매상품</a></li>
					        <li><a href="#goodsTab2">판매중</a></li>
					        <li><a href="#goodsTab3">판매완료</a></li>
					    </ul>
					    <div class="goodsTab_container">
					        <div id="goodsTab1" class="goodsTab_content">
					            <h2>판매상품</h2>
					      	      <table  style="filter: alpha(opacity=60);" ffffff="" align="center">
					      	      	<tr>
					      	      		<td width="200px" align="center">
					      	      			<img src=<c:url value="/resources/images/mysale_list1.png"/>>
					      	      		</td>
					      	      		<td width="100px" align="center">
					      	      			<img src=<c:url value="/resources/images/mysale_list2.png"/>>
					      	      		</td>
					      	      		<td width="200px" align="center">
					      	      			<img src=<c:url value="/resources/images/mysale_list3.png"/>>
					      	      		</td>
					      	      		<td width="100px" align="center">
					      	      			<img src=<c:url value="/resources/images/mysale_list4.png"/>>
					      	      		</td>
					      	      		<td width="100px" align="center">
					      	      			<img src=<c:url value="/resources/images/mysale_list5.png"/>>
					      	      		</td>
					      	      	</tr>
			<c:choose>
				<c:when test="${fn:length(list) > 0}">
					<c:forEach items="${list }" var="low">
						<c:if test="${low.GOODS_STATUS eq '1'}">
					      	      	<tr>
					      	      		<td width="200px" align="center">
					      	      			${low.GOODS_NUM }
					      	      		</td>
					      	      		<td width="100px" align="center">
					      	      			<a href="#this" id="title" name="title">${low.GOODS_TITLE }</a>		
					      	      			<input type="hidden" id="GOODS_NUM" name="GOODS_NUM" value="${low.GOODS_NUM }">
					      	      		</td>
					      	      		<td width="200px" align="center">
					      	      		<img alt='' width='50' height='50' src="/nnS/file/${low.GOODS_THUMBNAIL}">
					      	      		</td>
					      	      		<td width="100px" align="center">
					      	      			${low.GOODS_DATE }
					      	      		</td>
					      	      		<td width="100px" align="center">
					      	      			${low.GOODS_STATUS }
					      	      		</td>
					      	      	</tr>
					      	      	</c:if>
					      	      	</c:forEach>
					      	      	</c:when>
					      	      	<c:otherwise>
					<tr>
						<td colspan="4">조회된 결과가 없습니다.</td>
					</tr>
				</c:otherwise>
					      	      	</c:choose>
					      	      </table>
					        </div>
					        <div id="goodsTab2" class="goodsTab_content">
					            <h2>판매중</h2>
					      	      <table  style="filter: alpha(opacity=60);" ffffff="" align="center">
					      	      	<tr>
					      	      		<td width="200px" align="center">
					      	      			상품 번호
					      	      		</td>
					      	      		<td width="100px" align="center">
					      	      			상품 이름
					      	      		</td>
					      	      		<td width="200px" align="center">
					      	      			상품이미지
					      	      		</td>
					      	      		<td width="100px" align="center">
					      	      			등록 일자
					      	      		</td>
					      	      		<td width="100px" align="center">
					      	      			상품 상태
					      	      		</td>
					      	      	</tr>
			<c:choose>
				<c:when test="${fn:length(list) > 0}">
					<c:forEach items="${list }" var="low">
						<c:if test="${low.GOODS_STATUS eq '2'}">
					      	      	<tr>
					      	      		<td width="200px" align="center">
					      	      			${low.GOODS_NUM }
					      	      		</td>
					      	      		<td width="100px" align="center">
					      	      			<a href="#this" id="title" name="title">${low.GOODS_TITLE }</a>		
					      	      			<input type="hidden" id="GOODS_NUM" name="GOODS_NUM" value="${low.GOODS_NUM }">
					      	      		</td>
					      	      		<td width="200px" align="center">
					      	      			<img alt='' width='50' height='50' src="/nnS/file/${low.GOODS_THUMBNAIL}">
					      	      		</td>
					      	      		<td width="100px" align="center">
					      	      			${low.GOODS_DATE }
					      	      		</td>
					      	      		<td width="100px" align="center">
					      	      			${low.GOODS_STATUS }
					      	      		</td>
					      	      	</tr>
					      	      	</c:if>
					      	      	</c:forEach>
					      	      	</c:when>
					      	      	<c:otherwise>
					<tr>
						<td colspan="4">조회된 결과가 없습니다.</td>
					</tr>
				</c:otherwise>
					      	      	</c:choose>
					      	      </table>
					        </div>
					        <div id="goodsTab3" class="goodsTab_content">
					             <h2>판매완료</h2>
					      	      <table  style="filter: alpha(opacity=60);" ffffff="" align="center">
					      	      	<tr>
					      	      		<td width="200px" align="center">
					      	      			상품 번호
					      	      		</td>
					      	      		<td width="100px" align="center">
					      	      			상품 이름
					      	      		</td>
					      	      		<td width="200px" align="center">
					      	      			상품이미지
					      	      		</td>
					      	      		<td width="100px" align="center">
					      	      			등록 일자
					      	      		</td>
					      	      		<td width="100px" align="center">
					      	      			상품 상태
					      	      		</td>
					      	      	</tr>
			<c:choose>
				<c:when test="${fn:length(list) > 0}">
					<c:forEach items="${list }" var="low">
						<c:if test="${low.GOODS_STATUS eq '3'}">
					      	      	<tr>
					      	      		<td width="200px" align="center">
					      	      			${low.GOODS_NUM }
					      	      		</td>
					      	      		<td width="100px" align="center">
					      	      			<a href="#this" id="title" name="title">${low.GOODS_TITLE }</a>		
					      	      			<input type="hidden" id="GOODS_NUM" name="GOODS_NUM" value="${low.GOODS_NUM }">
					      	      		</td>
					      	      		<td width="200px" align="center">
					      	      			<img alt='' width='50' height='50' src="/nnS/file/${low.GOODS_THUMBNAIL}">
					      	      		</td>
					      	      		<td width="100px" align="center">
					      	      			${low.GOODS_DATE }
					      	      		</td>
					      	      		<td width="100px" align="center">
					      	      			${low.GOODS_STATUS }
					      	      		</td>
					      	      	</tr>
					      	      	</c:if>
					      	      	</c:forEach>
					      	      	</c:when>
					      	      	<c:otherwise>
					<tr>
						<td colspan="4">조회된 결과가 없습니다.</td>
					</tr>
				</c:otherwise>
					      	      	</c:choose>
					      	      </table>
					        </div>
					    </div>
					</div>
			</tr>
		</tbody>
	</table>
   </div>
</div>
</div>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script type="text/javascript">

$(document).ready(function() {
	
	
	
	//Default Action
	$(".goodsTab_content").hide(); //Hide all content
	$("ul.goodsTabs li:first").addClass("active").show(); //Activate first goodsTab
	$(".goodsTab_content:first").show(); //Show first goodsTab content
	
	//On Click Event
	$("ul.goodsTabs li").click(function() {
		$("ul.goodsTabs li").removeClass("active"); //Remove any "active" class
		$(this).addClass("active"); //Add "active" class to selected goodsTab
		$(".goodsTab_content").hide(); //Hide all goodsTab content
		var activegoodsTab = $(this).find("a").attr("href"); //Find the rel attribute value to identify the active goodsTab + content
		$(activegoodsTab).fadeIn(); //Fade in the active content
		return false;
	});
	
	
	$("a[name='title']").on("click", function(e) { //제목 
		e.preventDefault();
		fn_openBoardDetail($(this));
	});
});
function fn_openBoardDetail(obj) {
	var comSubmit = new ComSubmit();
	comSubmit.setUrl("<c:url value='/shop/goodsDetail' />");
	comSubmit.addParam("GOODS_NUM", $("#GOODS_NUM").val());
	comSubmit.submit();
}


</script>
</body>
</html>