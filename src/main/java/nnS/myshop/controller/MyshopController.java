package nnS.myshop.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MyshopController {

	@RequestMapping(value="/myshop")
	public ModelAndView myshopMain() throws Exception{
		ModelAndView mv = new ModelAndView("/myshop/orderList");

		return mv;
	}
	
	@RequestMapping(value="/myshop/orderList")
	public ModelAndView myshopOrderList() throws Exception{
		ModelAndView mv = new ModelAndView("/myshop/orderList");

		return mv;
	}
	
	@RequestMapping(value="/myshop/saleList")
	public ModelAndView myshopSaleList() throws Exception{
		ModelAndView mv = new ModelAndView("/myshop/saleList");

		return mv;
	}

	@RequestMapping(value="/myshop/goodsLikeList")
	public ModelAndView myshopGoodsLikeList() throws Exception{
		ModelAndView mv = new ModelAndView("/myshop/goodsLikeList");

		return mv;
	}

	@RequestMapping(value="/myshop/recentGoodsList")
	public ModelAndView myshopRecentGoodsList() throws Exception{
		ModelAndView mv = new ModelAndView("/myshop/recentGoodsList");

		return mv;
	}

}
