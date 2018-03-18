package com.zkingsoft.action;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.matrix.core.pojo.AjaxResult;
import com.matrix.core.pojo.PaginationVO;
import com.matrix.core.tools.LogUtil;
import com.matrix.core.web.BaseAction;
import com.zkingsoft.bean.WebArticle;
import com.zkingsoft.service.WebArticleService;

@Controller
@RequestMapping(value = "admin/webArticle")
public class WebArticleController extends BaseAction {

	@Resource
	private WebArticleService webArticleService;

	Logger log = Logger.getLogger(WebArticleController.class);

	/**
	 * 列表显示
	 */
	@RequestMapping(value = "/showList")
	public @ResponseBody AjaxResult showList(WebArticle webArticle, PaginationVO pageVo) {
		LogUtil.debug("debug{}，{}", 1, 2);
		LogUtil.info("info");
		LogUtil.warn("warn");
		LogUtil.error("error", new NullPointerException("参数不能为空"));
		LogUtil.error("error");
		return showList(webArticleService, webArticle, pageVo);
	}

}