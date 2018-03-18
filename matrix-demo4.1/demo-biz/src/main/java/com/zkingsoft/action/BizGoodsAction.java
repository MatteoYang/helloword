package com.zkingsoft.action;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.matrix.core.pojo.AjaxResult;
import com.matrix.core.pojo.PaginationVO;
import com.matrix.core.web.BaseAction;
import com.zkingsoft.bean.BizGoods;
import com.zkingsoft.service.BizGoodsService;


@Controller
@RequestMapping(value = "goods")
public class BizGoodsAction extends BaseAction {

	@Autowired
	private BizGoodsService bizGoodsService;


	/**
	 * 列表显示
	 */
	@RequestMapping(value = "/showList",method=RequestMethod.POST)
	public @ResponseBody AjaxResult showList(BizGoods bizGoods, PaginationVO pageVo) {
		return showList(bizGoodsService, bizGoods, pageVo);
	}
 
  
	/**
	 * 删除功能
	 */
	@GetMapping(value = "/del")
	public @ResponseBody AjaxResult del(String fnId) {
		return remove(bizGoodsService, fnId);
	}

}