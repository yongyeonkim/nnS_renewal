package nnS.comment.service;

import java.util.List;
import java.util.Map;

public interface CommentService {

	List<Map<String, Object>> selectBoardCommentList(Map<String, Object> map) throws Exception;

	void insertBoardComment(Map<String, Object> map) throws Exception;

	void deleteBoardComment(Map<String, Object> map) throws Exception;

}
