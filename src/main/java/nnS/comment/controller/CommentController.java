package nnS.comment.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class CommentController {

	@RequestMapping(value="/shop/goodsDetail/commentWrite")
	public ModelAndView shopCommentWrite() throws Exception{
		ModelAndView mv = new ModelAndView("redirect:/shop/goodsDetail");

		return mv;
	}
	
	@RequestMapping(value="/shop/goodsDetail/commentDelete")
	public ModelAndView shopCommentDelete() throws Exception{
		ModelAndView mv = new ModelAndView("redirect:/shop/goodsDetail");

		return mv;
	}

	@RequestMapping(value="/community/boardDetail/commentWrite")
	public ModelAndView boardCommentWrite() throws Exception{
		ModelAndView mv = new ModelAndView("redirect:/shop/goodsDetail");

		return mv;
	}
	
	@RequestMapping(value="/community/boardDetail/commentDelete")
	public ModelAndView boardCommentDelete() throws Exception{
		ModelAndView mv = new ModelAndView("redirect:/shop/goodsDetail");

		return mv;
	}
	
}
