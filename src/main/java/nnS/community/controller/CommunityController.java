package nnS.community.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class CommunityController {

	@RequestMapping(value = "/community")
	public ModelAndView communityMain() throws Exception {
		ModelAndView mv = new ModelAndView("/community/notice/noticeList");
		
		return mv;		
	}
}
