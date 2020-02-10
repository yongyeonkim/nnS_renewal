package nnS.myshop.service;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import org.apache.log4j.Logger;
import org.springframework.stereotype.Service;

import nnS.myshop.dao.MyshopDAO;
import nnS.report.dao.ReportDAO;

@Service("myshopService")
public class MyshopServiceImpl implements MyshopService{
	
	@Resource(name="myshopDAO")
	private MyshopDAO myshopDAO;
	
	@Override
	public List<Map<String, Object>> selectMyOrderList(Map<String, Object> map) throws Exception {
		// TODO Auto-generated method stub
		return myshopDAO.selectMyOrderList(map);
	}
	
	@Override
	public List<Map<String, Object>> selectMyGoodsList(Map<String, Object> map) throws Exception {
		// TODO Auto-generated method stub
		return myshopDAO.selectMyGoodsList(map);
	}
	
	@Override
	public List<Map<String, Object>> selectLikeList(Map<String, Object> map) throws Exception {
		// TODO Auto-generated method stub
		return myshopDAO.selectLikeList(map);
	}
	
	@Override
	public List<Map<String, Object>> selectRecentGoodsList(Map<String, Object> map) throws Exception {
		// TODO Auto-generated method stub
		return myshopDAO.selectRecentGoodsList(map);
	}
}
