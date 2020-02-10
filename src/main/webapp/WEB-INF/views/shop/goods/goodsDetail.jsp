<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<%@ include file="/WEB-INF/include/include-header.jspf" %>
  	<script>
  		$(document).ready(function(){ 
  			$('.bxslider').bxSlider({ 
  				auto: true, 
  				speed: 500, 
  				pause: 4000, 
  				mode:'fade', 
  				autoControls: true, 
  				pager:true, 
			}); 
		});
	</script>
  	
<meta charset="UTF-8">
<link href="<c:url value="/resources/css/board.css"/>" rel="stylesheet">
</head>
<body>

<div id="content">
	<div id="vertical_tab-container">
	<!--
		<ul>
			 <li <c:if test="${sortType eq 'all'}">class="selected"</c:if>><a href=<c:url value="/shop/allGoodsList"/>>전체상품</a></li>
	         <li <c:if test="${sortType eq 'like'}">class="selected"</c:if>><a href=<c:url value="/shop/likeGoodsList"/>>인기상품</a></li>
	         <li <c:if test="${sortType eq 'new'}">class="selected"</c:if>><a href=<c:url value="/shop/newGoodsList"/>>신규상품</a></li>
	         <li <c:if test="${sortType eq ''}">class="selected"</c:if>><a href=<c:url value="/shop"/>>카테고리</a></li>
		</ul>
		 -->
	</div>
	<div id="main-container">
		<table border="1" align="center" style="min-height:100%">
			<colgroup>
				<col width="45%"/>
				<col width="15%"/>
				<col width="15%"/>
				<col width="15%"/>
			</colgroup>
			<caption>상품 상세</caption>
			<tbody>
				<tr colspan="2">
					<td rowspan="2">
						<c:choose>
							<c:when test="${map.GOODS_THUMBNAIL eq null}">
								<img alt="" style="width:95%; height:300px; padding:10px 10px 10px 10px;" src=<c:url value="/resources/images/no_image.png"/>>
							</c:when>
							<c:otherwise>
								<img alt="" style="width:95%; height:300px; padding:10px 10px 10px 10px;" src="${path}${map.GOODS_THUMBNAIL}">	
							</c:otherwise>
						</c:choose>
					</td>
					<td colspan="3" style="padding:0 0 0 20px; font-size:15px;">
						<br>
						브랜드 : ${map.GOODS_BRAND}<br />
						모델명 : ${map.GOODS_TITLE} <br />	<!-- 테이블에 없음 --> 
						중고상태 : ${map.GOODS_STATUS}<br/>
						<input type="hidden" id="IDX" name="IDX" value="${map.GOODS_NUM}">
						판매가 : ${map.GOODS_PRICE}<br /> 
						배송비: ${map.GOODS_DCOST} <br /><!-- 테이블에 없음 --> 
						합계 : <c:out value="${map.GOODS_PRICE+map.GOODS_DCOST}"/><br/>
						<br>
					</td>
				</tr>
				<tr align="center">
				<td>
					<input type="button" id="buy" name="buy" value="바로구매" />
				</td>
				<td> 
					<a href='javascript: report_func();'><img src=<c:url value="/resources/images/report_btn.png"/> id='report_img' style="width:30px; height:30px"></a>
					신고하기
				</td>
				<td>	
					<c:choose>
						<c:when test="${goodsLikeMap.GOODS_LIKE_YN eq 0}">
					    	<a href='javascript: like_func();'><img src=<c:url value="/resources/images/unlike_btn.png"/> id='unlike_img' style="width:30px; height:30px"></a>
					  	</c:when>
					  	<c:otherwise>
					    	<a href='javascript: unlike_func();'><img src=<c:url value="/resources/images/like_btn.png"/> id='like_img' style="width:30px; height:30px"></a>
					  	</c:otherwise>
					</c:choose>
					찜하기
				</td>	
				</tr>
			</tbody>
		</table>
		<div class="container">
		    <ul class="goodsTabs">
		        <li><a href="#goodsTab1">상품정보</a></li>
		        <li><a href="#goodsTab2">상품문의</a></li>
		        <li><a href="#goodsTab3">판매자정보</a></li>
		    </ul>
		    <div class="goodsTab_container">
		        <div id="goodsTab1" class="goodsTab_content">
		            <h2>상품정보</h2>
					  <ul class="bxslider"> 
					  	<c:forEach var="row" items="${list}" varStatus="var"> 
					  		<li><img alt="" style="width:100%; height:150px;" src="${path}${row.GOODS_IMAGE_STD}"/></li>
						</c:forEach>
					  </ul>
					  
		            <p>${map.GOODS_CONTENT}</p>
		        </div>
		        <div id="goodsTab2" class="goodsTab_content">
		             <h2>상품문의</h2>
		            <p>상품에 대한 문의가 있음</p>
		        </div>
		        <div id="goodsTab3" class="goodsTab_content">
		             <h2>판매자정보</h2>
		             <br>
						판매자 ID : ${memberMap.MEM_ID}<br />
						판매자 이름 : ${memberMap.MEM_NAME} <br /> 
						판매자 성별 : ${memberMap.MEM_GEN}<br/>
						판매자 이메일 : ${memberMap.MEM_EMAIL}<br /> 
						판매자 연락처 : ${memberMap.MEM_PHONE}<br />
						<br>
		        </div>
		    </div>
		    <br>
		<a href="#this" class="btn" id="list">목록으로</a>
		<c:if test="${session_MEM_ID eq map.MEM_ID }">
			<a href="#this" class="btn" id="update">수정하기</a>
			<a href="#this" class="btn" id="delete">삭제하기</a>
		</c:if>
		</div>
   </div>
   
</div>
	

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
	
	<%@ include file="/WEB-INF/include/include-body.jspf" %>
	<script type="text/javascript">
		$(document).ready(function(){
			$("#list").on("click", function(e){ //목록으로 버튼
				e.preventDefault();
				fn_openGoodsList();
			});
			
			$("#update").on("click", function(e){ //수정하기 버튼
				e.preventDefault();
				fn_goodsModify();
			});
			$("#delete").on("click", function(e){ //삭제하기 버튼
				e.preventDefault();
				fn_deleteGoods();
			});
			$("#buy").on("click", function(e) { // 바로구매 버튼
				e.preventDefault();
				fn_orderWriteForm($(this));
			});
		});
		
		function fn_openGoodsList(){
			var comSubmit = new ComSubmit();
			comSubmit.setUrl("<c:url value='/shop' />");
			comSubmit.submit();
		}
		
		function fn_goodsModify(){
			var comSubmit = new ComSubmit();
			comSubmit.setUrl("<c:url value='/shop/goodsModifyForm' />");
			comSubmit.addParam("GOODS_NUM", "${map.GOODS_NUM}");
			comSubmit.submit();
		}
	
		function fn_deleteGoods(){
			var comSubmit = new ComSubmit();
			comSubmit.setUrl("<c:url value='/shop/goodsDelete' />");
			comSubmit.addParam("GOODS_NUM", $("#IDX").val());
			comSubmit.submit();
			
		}
		
		/* 좋아요 */
		function like_func(){
			if(session_chk()){
				var comSubmit = new ComSubmit();
				comSubmit.setUrl("<c:url value='/shop/goodsDetail/goodsLike'/>");
				comSubmit.addParam("LIKE_GOODS_NUM", "${map.GOODS_NUM}");
				comSubmit.addParam("LIKE_MEM_ID", "${session_MEM_ID}");
				comSubmit.submit();	
			}
		}
		
		function unlike_func(){
			if(session_chk()){
				var comSubmit = new ComSubmit();
				comSubmit.setUrl("<c:url value='/shop/goodsDetail/goodsUnlike'/>");
				comSubmit.addParam("LIKE_GOODS_NUM", "${map.GOODS_NUM}");
				comSubmit.addParam("LIKE_MEM_ID", "${session_MEM_ID}");
				comSubmit.submit();	
			}
		}
		
		function session_chk(){
			if("${session_MEM_ID}" == null || "${session_MEM_ID}" == "" ){
				alert("로그인이 필요합니다.");
				var comSubmit = new ComSubmit();
				comSubmit.setUrl("<c:url value='/loginForm'/>");
				comSubmit.submit();
				return false;
			}else{
				return true;
			}
		}
		
		/* 신고하기 */
		function report_func(){
			if(session_chk()){
				var comSubmit = new ComSubmit();
				comSubmit.setUrl("<c:url value='/community/reportWriteForm'/>");
				comSubmit.addParam("GOODS_NUM", "${map.GOODS_NUM}");
				comSubmit.addParam("MEM_ID", "${session_MEM_ID}");
				comSubmit.submit();	
			}
		}
		
		/* 상품 구매 */
		
		function fn_orderWriteForm(obj) {
			if(session_chk()){
				var comSubmit = new ComSubmit();
				var GOODS_NUM = "${map.GOODS_NUM}";
				var MEM_ID = "${session_MEM_ID}";
				comSubmit.setUrl("<c:url value='/shop/order/orderWriteForm' />");
				comSubmit.addParam("GOODS_NUM", GOODS_NUM);
				comSubmit.addParam("MEM_ID", MEM_ID);
				comSubmit.submit();
			}
		}

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

	</script>

</body>
</html>