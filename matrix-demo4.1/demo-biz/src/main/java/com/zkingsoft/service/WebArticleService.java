package com.zkingsoft.service;

import java.util.List;

import com.matrix.core.pojo.PaginationVO;
import com.matrix.core.web.BaseServices;
import com.zkingsoft.bean.WebArticle;

/**
 * This field was generated by Zking.software.Codegen.
 * @date 2016-12-01 10:36
 */
public interface WebArticleService  extends BaseServices<WebArticle>{
	
	/**
	 * 新增WebArticle
	 * 
	 */
	public int add(WebArticle webArticle);
   	
   	/**
	 * 批量新增WebArticle
	 * 
	 */
	public int batchAdd(List<WebArticle>  webArticleList);
   	
   	/**
	 * 根据map键值对 更新WebArticle
	 * 
	 */
	public int modifyByMap(WebArticle oldWebArticle ,WebArticle newWebArticle);
	
	/**
	 * 根据对象 更新WebArticle
	 * 
	 */
	public int modifyByModel(WebArticle webArticle);
	
	/**
	 * 批量删除WebArticle
	 * 
	 */
	public int remove(List<String> list);

	/**
	 * 根据id删除WebArticle
	 * 
	 */
	public int removeById(String artId);
	
	/**
	 * 根据对象删除WebArticle
	 * 
	 */
	public int removeByModel(WebArticle webArticle);
	
	/**
	 * 分页查询WebArticle
	 * 
	 */
	public List<WebArticle> findInPage(WebArticle webArticle, PaginationVO pageVo);

	/**
	 * 根据对象查询WebArticle
	 * 
	 */
	public List<WebArticle> findByModel(WebArticle webArticle);
	
	/**
	 * 统计记录数WebArticle
	 * 
	 */
	public int  findTotal(WebArticle webArticle);
	
	/**
	 * 根据id查询WebArticle
	 * 
	 */
	public WebArticle  findById(String artId);

	public List<WebArticle> findByTypeName(String string);

	public WebArticle findByTitle(String string);

	/**
	 * 查询上一篇或者下一篇
	 * i大于0则查询下一篇
	 * i小于0则查询上一篇
	 * @param artId
	 * @param i
	 * @return
	 */
	public WebArticle findAround(String artId, int i);

	public List<WebArticle> findNewArticle(String artBlog, PaginationVO pageVo );

	public List<WebArticle> findByWord(String searchWord);

   	

  
}