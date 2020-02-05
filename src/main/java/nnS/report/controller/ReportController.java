package nnS.report.controller;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import nnS.common.common.CommandMap;
import nnS.report.service.ReportServiceImpl;

@Controller
public class ReportController {
   Logger log = Logger.getLogger(this.getClass());
	
	@Resource(name="reportService")
	private ReportServiceImpl reportService;

	@RequestMapping(value="/community/reportWriteForm")
	public ModelAndView reportWriteForm(CommandMap commandMap) throws Exception{
		ModelAndView mv = new ModelAndView("reportWriteForm");

		return mv;
	}
	
	@RequestMapping(value="/community/reportWrite")
	public ModelAndView reportWrite(CommandMap commandMap,HttpServletRequest request) throws Exception{
		ModelAndView mv = new ModelAndView("redirect:/community/reportList");
		
		HttpSession session = request.getSession();
		commandMap.put("MEM_ID", session.getAttribute("session_MEM_ID"));
		
		reportService.insertReportBoard(commandMap.getMap(),request);
		
		return mv;		
	}
	
	@RequestMapping(value = "/myPage/reportList")
	public ModelAndView myQnaList(CommandMap commandMap, HttpServletRequest request) throws Exception {
		ModelAndView mv = new ModelAndView("reportList");
		
		String url = "";
		HttpSession session = request.getSession();
		commandMap.put("MEM_ID", session.getAttribute("session_MEM_ID"));
		List<Map<String,Object>> list = reportService.selectMyReportList(commandMap.getMap());
		url = "myPage";
		mv.addObject("url",url);
		mv.addObject("list", list);
		return mv;
		}
	
	@RequestMapping(value = "/community/reportList")
	public ModelAndView qnaList(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("reportList");
		
		String url = "";
		List<Map<String,Object>> list = reportService.selectReportList(commandMap.getMap());
		url = "community";
		mv.addObject("url",url);
		mv.addObject("list", list);
		return mv;
	}

	@RequestMapping(value = "/community/reportDetail")
	public ModelAndView qnaDetail(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("reportDetail");
		
		Map<String,Object> map = reportService.selectReportDetail(commandMap.getMap());
		mv.addObject("map", map.get("map"));
		mv.addObject("list",map.get("list"));
		
		return mv;		
	}
	
	
	@RequestMapping(value = "/community/reportDelete")
	public ModelAndView reportDelete(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("redirect:/community/reportList");
		
		reportService.deleteReport(commandMap.getMap());
		return mv;		
	}
	
	@RequestMapping(value = "/community/reportDetail/reportHandle")
	public ModelAndView reportHandle() throws Exception {
		ModelAndView mv = new ModelAndView("redirect:/community/reportDetail");
		
		return mv;		
	}
	
	
}
