package nnS.comment.dao;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import nnS.common.dao.AbstractDAO;

@Repository("commentDAO")
public class CommentDAO extends AbstractDAO{

	// 상점 댓글
	
	
	// 자유게시판 
	// 댓글 리스트
	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> selectBoardCommentList(Map<String, Object> map) throws Exception{
		return (List<Map<String,Object>>)selectPagingList("comments.selectBoardCommentList", map);
	}
	
	// 댓글 작성
	public void insertBoardComment(Map<String, Object> map) throws Exception{
		insert("comments.insertBoardComment", map);
	}
		
	// 댓글 삭제
	public void deleteBoardComment(Map<String, Object> map) throws Exception{
		insert("comments.deleteBoardComment", map);
	}
}
