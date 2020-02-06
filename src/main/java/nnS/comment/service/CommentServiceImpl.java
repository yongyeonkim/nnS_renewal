package nnS.comment.service;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Service;

import nnS.comment.dao.CommentDAO;

@Service("commentService")
public class CommentServiceImpl implements CommentService{
	Logger log = Logger.getLogger(this.getClass());
	
	@Resource(name="commentDAO")
	private CommentDAO commentDAO;

	@Override
	public List<Map<String, Object>> selectBoardCommentList(Map<String, Object> map) throws Exception {
		return commentDAO.selectBoardCommentList(map);
	}

	@Override
	public void insertBoardComment(Map<String, Object> map) throws Exception {
		commentDAO.insertBoardComment(map);
	}

	@Override
	public void deleteBoardComment(Map<String, Object> map) throws Exception {
		commentDAO.deleteBoardComment(map);
	}
}
