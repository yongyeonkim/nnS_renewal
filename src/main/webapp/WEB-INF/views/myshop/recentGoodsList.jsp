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
         <li><a href="saleList">판매내역 조회</a></li>
         <li><a href="goodsLikeList">좋아요</a></li>
         <li class="selected"><a href="recentGoodsList">최근 본 상품</a></li>
      </ul>
   </div>
   <div id="main-container">
	<table border="1" align="center">
		<li>
			최근 본 상품
      	</li>
		<table border="0" align="center">
          <tr>
            <td>
               <img src="https://m.sandboxstore.net/web/product/big/201812/fc5894526dadbe5e309f0eb69df14097.jpg"
		                           width="250" height="250" alt="" />
             	<br>걔쩌는 후드티
				<br>65,000원
            </td>
            <td>
               <img src="https://m.sandboxstore.net/web/product/big/201812/fc5894526dadbe5e309f0eb69df14097.jpg"
		                           width="250" height="250" alt="" />
             	<br>걔쩌는 후드티
				<br>65,000원
            </td>
            <td>
               <img src="https://m.sandboxstore.net/web/product/big/201812/fc5894526dadbe5e309f0eb69df14097.jpg"
		                           width="250" height="250" alt="" />
             	<br>걔쩌는 후드티
				<br>65,000원
            </td>
          </tr>
          <tr>
            <td>
               <img src="https://m.sandboxstore.net/web/product/big/201812/fc5894526dadbe5e309f0eb69df14097.jpg"
		                           width="250" height="250" alt="" />
             	<br>걔쩌는 후드티
				<br>65,000원
            </td>
            <td>
               <img src="https://m.sandboxstore.net/web/product/big/201812/fc5894526dadbe5e309f0eb69df14097.jpg"
		                           width="250" height="250" alt="" />
             	<br>걔쩌는 후드티
				<br>65,000원
            </td>
            <td>
               <img src="https://m.sandboxstore.net/web/product/big/201812/fc5894526dadbe5e309f0eb69df14097.jpg"
		                           width="250" height="250" alt="" />
             	<br>걔쩌는 후드티
				<br>65,000원
            </td>
          </tr>
      </table>
	</table>
   </div>
</div>

</body>
</html>