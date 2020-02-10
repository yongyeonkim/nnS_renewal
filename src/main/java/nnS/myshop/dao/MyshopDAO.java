package nnS.myshop.dao;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import nnS.common.dao.AbstractDAO;

@Repository("myshopDAO")
public class MyshopDAO extends AbstractDAO {
	
	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> selectMyOrderList(Map<String, Object> map) throws Exception{
		// TODO Auto-generated method stub
		return (List<Map<String, Object>>)selectList("myshop.selectMyOrderList", map);
	}
	
	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> selectMyGoodsList(Map<String, Object> map) throws Exception{
		// TODO Auto-generated method stub
		return (List<Map<String, Object>>)selectList("myshop.selectMyGoodsList", map);
	}
	
	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> selectLikeList(Map<String, Object> map) throws Exception{
		// TODO Auto-generated method stub
		return (List<Map<String, Object>>)selectList("myshop.selectLikeList", map);
	}
	
	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> selectRecentGoodsList(Map<String, Object> map) throws Exception{
		// TODO Auto-generated method stub
		return (List<Map<String, Object>>)selectList("myshop.selectRecentGoodsList", map);
	}
	
	
}
