<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
		"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>URL경로 정리</title>
</head>
<body>


<ul>

	<!-- MainController -->
	<li><a href="/nnS/main">메인</a></li>
	
	<!-- JoinController -->
	<li><a href="/nnS/joinForm">회원가입폼</a></li>
	<li><a href="/nnS/join/idCheck">아이디중복확인</a></li>
	<li><a href="/nnS/join/emailAuth">이메일인증확인</a></li>
	<li><a href="/nnS/memberVerify">회원가입성공</a></li>
	
	<!-- LoginController -->
	<li><a href="/nnS/loginForm">로그인폼</a></li>
	<li><a href="/nnS/login">로그인</a></li>
	<li><a href="/nnS/logout">로그아웃</a></li>
	<li><a href="/nnS/findId">아이디찾기폼</a></li>
	<li><a href="/nnS/findIdResult">아이디찾기</a></li>
	<li><a href="/nnS/findPw">비밀번호찾기폼</a></li>
	<li><a href="findPwConfirm">비밀번호찾기</a></li>
	
	<!-- MyPageController -->
	<li><a href="/nnS/myPage">마이페이지</a></li>
	<li><a href="/nnS/myPage/accountModifyForm">정보수정폼</a></li>
	<li><a href="/nnS/myPage/emailAuth">이메일인증확인</a></li>
	<li><a href="/nnS/myPage/pwModifyForm">비밀번호수정폼</a></li>
	<li><a href="/nnS/myPage/modify">내정보수정성공</a></li>
	<li><a href="/nnS/myPage/myInfoDelete">회원탈퇴</a></li>
	
	<!-- CommunityController -->
	<li><a href="/nnS/community">커뮤니티</a></li>
	
	<!-- NoticeController -->
	<li><a href="/nnS/community/noticeList">공지사항리스트</a></li>
	<li><a href="/nnS/community/noticeDetail">공지사항상세보기</a></li>
	<li><a href="/nnS/community/noticeWriteForm">공지사항작성폼</a></li>
	<li><a href="/nnS/community/noticeWrite">공지사항작성</a></li>
	<li><a href="/nnS/community/noticeModifyForm">공지사항수정폼</a></li>
	<li><a href="/nnS/community/noticeModify">공지사항수정</a></li>
	<li><a href="/nnS/community/noticeDelete">공지사항삭제</a></li>
	
	<!-- BoardController -->
	<li><a href="/nnS/community/boardList">자유게시판리스트</a></li>
	<li><a href="/nnS/community/boardDetail">자유게시판상세보기</a></li>
	<li><a href="/nnS/community/boardWriteForm">자유게시판작성폼</a></li>
	<li><a href="/nnS/community/boardWrite">자유게시판작성</a></li>
	<li><a href="/nnS/community/boardModifyForm">자유게시판수정폼</a></li>
	<li><a href="/nnS/community/boardModify">자유게시판수정</a></li>
	<li><a href="/nnS/community/boardDelete">자유게시판삭제</a></li>
	
	<!-- CommentController -->
	<li><a href="/nnS/community/boardDetail/commentWrite">자유게시판댓글작성</a></li>
	<li><a href="/nnS/community/boardDetail/commentDelete">자유게시판댓글삭제</a></li>
	<li><a href="/nnS/shop/goodsDetail/commentWrite">상품댓글작성</a></li>
	<li><a href="/nnS/shop/goodsDetail/commentDelete">상품댓글삭제</a></li>
	
	<!-- QnaController -->
	<li><a href="/nnS/myPage/qnaList">본인문의내역리스트</a></li>
	<li><a href="/nnS/community/qnaList">QNA리스트</a></li>
	<li><a href="/nnS/community/qnaDetail">QNA상세보기</a></li>
	<li><a href="/nnS/community/qnaWriteForm">QNA작성폼</a></li>
	<li><a href="/nnS/community/qnaWrite">QNA작성</a></li>
	<li><a href="/nnS/community/qnaModifyForm">QNA수정폼</a></li>
	<li><a href="/nnS/community/qnaModify">QNA수정</a></li>
	<li><a href="/nnS/community/qnaDelete">QNA삭제</a></li>
	<li><a href="/nnS/community/qnaDetail/answerWrite">답글달기</a></li>
	<li><a href="/nnS/community/qnaDetail/answerDelete">답글삭제</a></li>
	
	<!-- ReportController -->
	<li><a href="/nnS/myPage/reportList">본인신고내역리스트</a></li>
	<li><a href="/nnS/community/reportList">신고리스트</a></li>
	<li><a href="/nnS/community/reportDetail">신고상세보기</a></li>
	<li><a href="/nnS/community/reportDelete">신고삭제</a></li>
	<li><a href="/nnS/community/reportDetail/reportHandle">신고처리</a></li>
	<li><a href="/nnS/shop/goodsDetail/reportWriteForm">신고하기폼</a></li>
	<li><a href="/nnS/shop/goodsDetail/reportWrite">신고하기</a></li>
	
	<!-- ShopController -->
	<li><a href="/nnS/shop">샾메인</a></li>
	<li><a href="/nnS/shop/allGoodsList">전체상품리스트</a></li>
	<li><a href="/nnS/shop/likeGoodsList">인기상품리스트</a></li>
	<li><a href="/nnS/shop/newGoodsList">신규상품리스트</a></li>
	<li><a href="/nnS/shop/goodsWriteForm">상품등록폼</a></li>
	<li><a href="/nnS/shop/goodsWrite">상품등록</a></li>
	<li><a href="/nnS/shop/goodsModifyForm">상품수정폼</a></li>
	<li><a href="/nnS/shop/goodsModify">상품수정</a></li>
	<li><a href="/nnS/shop/goodsDelete">상품삭제</a></li>
	<li><a href="/nnS/shop/goodsDetail">상품상세보기</a></li>
	<li><a href="/nnS/shop/goodsLike">상품찜</a></li>
	<li><a href="/nnS/shop/goodsUnlike">찜취소</a></li>
	
	<!-- OrderController -->
	<li><a href="/nnS/shop/order/orderWriteForm">구매하기폼</a></li>
	<li><a href="/nnS/shop/order/orderWrite">구매하기</a></li>
	<li><a href="/nnS/shop/order/orderDetail">구매상세보기</a></li>
	<li><a href="/nnS/shop/order/orderModifyForm">구매수정폼</a></li>
	<li><a href="/nnS/shop/order/orderModify">구매수정</a></li>
	<li><a href="/nnS/shop/order/orderDelete">구매취소</a></li>
	
	<!--  MyshopController -->
	<li><a href="/nnS/myshop">마이샵메인</a></li>
	<li><a href="/nnS/myshop/orderList">주문내역</a></li>
	<li><a href="/nnS/myshop/saleList">판매내역</a></li>
	<li><a href="/nnS/myshop/goodsLikeList">찜목록</a></li>
	<li><a href="/nnS/myshop/recentGoodsList">최근본상품</a></li>
	
</ul>

</body>
</html>