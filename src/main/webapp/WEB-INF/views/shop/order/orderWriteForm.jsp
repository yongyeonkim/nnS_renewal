<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@ include file="/WEB-INF/include/include-header.jspf" %>
<meta charset="UTF-8">
<style type="text/css">
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
<%@ include file="/WEB-INF/include/include-body.jspf" %>
<div id="content">
	<form  method="post" id="frm" name="frm" enctype="multipart/form-data" onsubmit="return formCheck();">
	<h1 align="center">주문서 작성</h1>
	<div id="main-container">
		상품정보
			<table border="1" height="100" style="width: 100%;">
				<tbody>
					<tr>
						<td style="width: 875px;">
							<table border="1" style="border-collapse: collapse; width: 100%;">
								<tbody>
									<tr>
										<td style="width: 16.6667%;">상품 정보</td>
										<td style="width: 16.6667%;">상품브랜드</td>
										<td style="width: 16.6667%;">주문 일자</td>
										<td style="width: 16.6667%;">주문 번호</td>
										<td style="width: 16.6667%;">주문금액(수량)</td>
										<td style="width: 16.6667%;">배송비</td>
										<td style="width: 16.6667%;">최종 결제금액</td>
									</tr>
									<tr>
										<td style="width: 16.6667%;">${orderG.GOODS_TITLE}</td>
										<td style="width: 16.6667%;">${orderG.GOODS_BRAND}</td>
										<td style="width: 16.6667%;">${orderG.ORDER_TIME}</td>
										<td style="width: 16.6667%;">${orderG.GOODS_NUM}</td>
										<td style="width: 16.6667%;">${orderG.GOODS_PRICE}</td>
										<td style="width: 16.6667%;">${orderG.GOODS_DCOST}</td>
										<td style="width: 16.6667%;">${orderG.GOODS_PRICE}+${orderG.GOODS_DCOST}</td>
									</tr>
								</tbody>
							</table>
						</td>
					</tr>
				</tbody>
			</table>
			수령자 정보
		<table border="1" height="100" style="width: 100%;">
			<tbody>
				<tr>
					<td style="width: 875px;">
						<input type="radio" id="N_ADD1" name="N_ADD1" value="used" checked="checked">기존 배송지
						<input type="radio" id="N_ADD2" name="N_ADD2" value="new">신규 배송지
					<li>
						이름 <input type="text" id="MEM_ID" name="MEM_ID" style="margin-left:32px" value="${orderM.MEM_NAME}">
					</li>
					<li>
						휴대전화 <input type="text" id="MEM_PHONE" name="MEM_PHONE" value="${orderM.MEM_PHONE}">
					</li>
					<li>
						배송주소 <input type="text" id="MEM_ZIP" name="MEM_ZIP" value="${orderM.MEM_ZIP}">&nbsp;
						<input type="button" id="searchAddr" name="searchAddr" value="검색">
						<br/>
						<input type="text" id="ADD1" name="ADD1" size="50" style="margin-left:93px" value="${orderM.MEM_ADD1}">
						<br/>
						<input type="text" id="ADD2" name="ADD2" size="50" style="margin-left:93px" value="${orderM.MEM_ADD2}">
					</li>
					<li>
						배송 메모 <br/>
						<textarea cols="50" rows="10" id="DMEMO" name="DMEMO" style="margin-left:93px"></textarea>
					</li>
						<input type="hidden" id="GOODS_NUM" name="GOODS_NUM" value="${orderG.GOODS_NUM}"/>
						<input type="hidden" id="GOODS_PRICE" name="GOODS_PRICE" value="${orderG.GOODS_PRICE}"/>
						<input type="hidden" id="GOODS_DCOST" name="GOODS_DCOST" value="${orderG.GOODS_DCOST}"/>
						<input type="hidden" id="orderNumber" name="orderNumber" value="2020012312345" />
						<input type="hidden" id="GOODS_TCOST" name="GOODS_TCOST" value="99999" />
					</td>
				</tr>
			</tbody>
		</table>
		결제 정보
		<table border="1" height="100" style="width: 100%;">
			<tbody>
				<tr>
					<td style="width: 875px;">
						<li>
							결제수단 <input type="radio" id="ORDER_PAY" name="ORDER_PAY" value="kakaopay"> 카카오페이
						</li>
						<li>
							결제안내 <input type="text" id="payinto" name="payinto">
						</li>
						<li>
							주문자 동의 <input type="checkbox" id="terms" name="terms" value="checked">
							개인정보 제 3자 제공 동의(필수)
							<br/>
							<textarea cols="50" rows="20" name="termsContent" readonly style="margin-left:93px" >
							약관에 대한 내용이 들어감
							${order.ORDERS_NUM}
							</textarea>
						</li>
					</td>
				</tr>
			</tbody>
		</table>
		<p align="center">
			<input type="button" id="submitPay" name="submitPay" value="결제하기" align="center">
		</p>
	</div>
	</form>
</div>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script type="text/javascript">

$(document).ready(function() {
	$("#submitPay").on("click", function(e) { // 결제하기 버튼
		e.preventDefault();
			fn_orderPay($(this));	
	});
	
	function fn_orderPay() {
		var comSubmit = new ComSubmit("frm");
		var ORDERS_NUM = "${order.ORDERS_NUM}";
		comSubmit.setUrl("<c:url value='/shop/order/orderWrite' />");
		comSubmit.addParam("ORDERS_NUM", ORDERS_NUM);
		comSubmit.submit();
	}
});
</script>


</body>
</html>