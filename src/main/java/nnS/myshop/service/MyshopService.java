package nnS.myshop.service;

import java.util.Map;
import java.util.List;

public interface MyshopService {
	
	public List<Map<String, Object>> selectMyOrderList(Map<String, Object> map) throws Exception;
	
	public List<Map<String, Object>> selectMyGoodsList(Map<String, Object> map) throws Exception;
	
	public List<Map<String, Object>> selectLikeList(Map<String, Object> map) throws Exception;
	
	public List<Map<String, Object>> selectRecentGoodsList(Map<String, Object> map) throws Exception;

}
