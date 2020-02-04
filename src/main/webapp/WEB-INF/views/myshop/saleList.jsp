<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
   width: 1024px;
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
</head>
<body>

  <div id="content">
   <div id="vertical_tab-container">
      <ul>
         <li><a href="orderList">주문내역 조회</a></li>
         <li class="selected"><a href="saleList">판매내역 조회</a></li>
         <li><a href="goodsLikeList">좋아요</a></li>
         <li><a href="recentGoodsList">최근 본 상품</a></li>
      </ul>
   </div>
   <div id="main-container">
		<table border="1" align="center">
		<tbody>
			<tr>
				<td>
					<table  style="filter: alpha(opacity=60);" ffffff="" align="center">
								<tbody>
								<tr align="center">
								<td>주문/결제</td>
								<td></td>
								<td>배송중</td>
								<td></td>
								<td>배송완료</td>
								</tr>
								<tr>
									<td>
										<a href="#goodsTab1">
											<img src="../../resources/images/payment.png" alt="" width="100" height="100" onclick="click()"/>
										</a>
									</td>
									<td>
										<img src="../../resources/images/dots.png" alt="" width="50" height="50"/>
									</td>
									<td>
										<a href="#goodsTab2">
											<img src="../../resources/images/shipping.png" alt="" width="100" height="100"/>
										</a>
									</td>
									<td>
										<img src="../../resources/images/dots.png" alt="" width="50" height="50"/>
									</td>
									<td>
										<a href="#goodsTab3">
											<img src="../../resources/images/product.png" alt="" width="100" height="100"/>
										</a>
									</td>
								</tr>
								</tbody>
							</table>
					<div class="container">
					    <ul class="goodsTabs">
					        <li><a href="#goodsTab1">주문/결제</a></li>
					        <li><a href="#goodsTab2">배송중</a></li>
					        <li><a href="#goodsTab3">배송완료</a></li>
					    </ul>
					    <div class="goodsTab_container">
					        <div id="goodsTab1" class="goodsTab_content">
					        	<!-- 값은 대충  넣어둠 -->
					            <h2>주문/결제</h2>
					      	      <table  style="filter: alpha(opacity=60);" ffffff="" align="center">
					      	      	<tr>
					      	      		<td width="200px" align="center">
					      	      			상품 정보
		                                 <hr size="0px" width="70">
					      	      		</td>
					      	      		<td width="100px" align="center">
					      	      			주문 일자
		                                 <hr size="0px" width="70">
					      	      		</td>
					      	      		<td width="200px" align="center">
					      	      			송장번호
		                                 <hr size="0px" width="70">
					      	      		</td>
					      	      		<td width="100px" align="center">
					      	      			주문금액
		                                 <hr size="0px" width="70">
					      	      		</td>
					      	      		<td width="100px" align="center">
					      	      			주문 상태
		                                 <hr size="0px" width="70">
					      	      		</td>
					      	      	</tr>
					      	      	<!-- c:if 를 통해서 목록을 보여주고 페이징을 함 -->
					      	      	<tr>
					      	      		<td width="200px" align="center">
					      	      			개쩌는 후드티
					      	      		</td>
					      	      		<td width="100px" align="center">
					      	      			2020.01.23
					      	      		</td>
					      	      		<td width="200px" align="center">
					      	      			1234567890
					      	      		</td>
					      	      		<td width="100px" align="center">
					      	      			65,000원
					      	      		</td>
					      	      		<td width="100px" align="center">
					      	      			결제대기
					      	      		</td>
					      	      	</tr>
					      	      	<tr>
					      	      		<td width="200px" align="center">
					      	      			개비싼 후드티
					      	      		</td>
					      	      		<td width="100px" align="center">
					      	      			2020.01.23
					      	      		</td>
					      	      		<td width="200px" align="center">
					      	      			1234567890
					      	      		</td>
					      	      		<td width="100px" align="center">
					      	      			650,000원
					      	      		</td>
					      	      		<td width="100px" align="center">
					      	      			발송대기
					      	      		</td>
					      	      	</tr>
					      	      </table>
					        </div>
					        <div id="goodsTab2" class="goodsTab_content">
					             <h2>상품문의</h2>
					            <table  style="filter: alpha(opacity=60);" ffffff="" align="center">
					      	      	<tr>
					      	      		<td width="200px" align="center">
					      	      			상품 정보
		                                 <hr size="0px" width="70">
					      	      		</td>
					      	      		<td width="100px" align="center">
					      	      			주문 일자
		                                 <hr size="0px" width="70">
					      	      		</td>
					      	      		<td width="200px" align="center">
					      	      			송장번호
		                                 <hr size="0px" width="70">
					      	      		</td>
					      	      		<td width="100px" align="center">
					      	      			주문금액
		                                 <hr size="0px" width="70">
					      	      		</td>
					      	      		<td width="100px" align="center">
					      	      			주문 상태
		                                 <hr size="0px" width="70">
					      	      		</td>
					      	      	</tr>
					      	      	<!-- c:if 를 통해서 목록을 보여주고 페이징을 함 -->
					      	      	<tr>
					      	      		<td width="200px" align="center">
					      	      			개쩌는 후드티
					      	      		</td>
					      	      		<td width="100px" align="center">
					      	      			2020.01.23
					      	      		</td>
					      	      		<td width="200px" align="center">
					      	      			1234567890
					      	      		</td>
					      	      		<td width="100px" align="center">
					      	      			65,000원
					      	      		</td>
					      	      		<td width="100px" align="center">
					      	      			결제대기
					      	      		</td>
					      	      	</tr>
					      	      	<tr>
					      	      		<td width="200px" align="center">
					      	      			개비싼 후드티
					      	      		</td>
					      	      		<td width="100px" align="center">
					      	      			2020.01.23
					      	      		</td>
					      	      		<td width="200px" align="center">
					      	      			1234567890
					      	      		</td>
					      	      		<td width="100px" align="center">
					      	      			650,000원
					      	      		</td>
					      	      		<td width="100px" align="center">
					      	      			발송대기
					      	      		</td>
					      	      	</tr>
					      	      </table>
					        </div>
					        <div id="goodsTab3" class="goodsTab_content">
					             <h2>판매자정보</h2>
					            <table  style="filter: alpha(opacity=60);" ffffff="" align="center">
					      	      	<tr>
					      	      		<td width="200px" align="center">
					      	      			상품 정보
		                                 <hr size="0px" width="70">
					      	      		</td>
					      	      		<td width="100px" align="center">
					      	      			주문 일자
		                                 <hr size="0px" width="70">
					      	      		</td>
					      	      		<td width="200px" align="center">
					      	      			송장번호
		                                 <hr size="0px" width="70">
					      	      		</td>
					      	      		<td width="100px" align="center">
					      	      			주문금액
		                                 <hr size="0px" width="70">
					      	      		</td>
					      	      		<td width="100px" align="center">
					      	      			주문 상태
		                                 <hr size="0px" width="70">
					      	      		</td>
					      	      	</tr>
					      	      	<!-- c:if 를 통해서 목록을 보여주고 페이징을 함 -->
					      	      	<tr>
					      	      		<td width="200px" align="center">
					      	      			개쩌는 후드티
					      	      		</td>
					      	      		<td width="100px" align="center">
					      	      			2020.01.23
					      	      		</td>
					      	      		<td width="200px" align="center">
					      	      			1234567890
					      	      		</td>
					      	      		<td width="100px" align="center">
					      	      			65,000원
					      	      		</td>
					      	      		<td width="100px" align="center">
					      	      			배송완료
					      	      		</td>
					      	      	</tr>
					      	      	<tr>
					      	      		<td width="200px" align="center">
					      	      			개비싼 후드티
					      	      		</td>
					      	      		<td width="100px" align="center">
					      	      			2020.01.23
					      	      		</td>
					      	      		<td width="200px" align="center">
					      	      			1234567890
					      	      		</td>
					      	      		<td width="100px" align="center">
					      	      			650,000원
					      	      		</td>
					      	      		<td width="100px" align="center">
					      	      			구매확정
					      	      		</td>
					      	      	</tr>
					      	      </table>
					        </div>
					    </div>
					</div>
			</tr>
		</tbody>
	</table>
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

});
</script>
</body>
</html>