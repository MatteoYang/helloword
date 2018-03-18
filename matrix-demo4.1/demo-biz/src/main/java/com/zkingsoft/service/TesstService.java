package com.zkingsoft.service;

import java.util.List;

import com.matrix.core.pojo.PaginationVO;
import com.matrix.core.web.BaseServices;
import com.zkingsoft.bean.Tesst;

/**
 * @description  service接口类 (用户管理)
 * @author jyy
 * @date 2017-12-29 10:33
 */
public interface TesstService  extends BaseServices<Tesst>{
	
	/**
	 * 新增
	 */
	public int add(Tesst tesst);
   	
   	/**
	 * 批量新增
	 */
	public int batchAdd(List<Tesst>  tesstList);
   	
   	/**
	 * 根据map键值对 更新
	 */
	public int modifyByMap(Tesst oldTesst ,Tesst newTesst);
	
	/**
	 * 根据对象 更新
	 */
	public int modifyByModel(Tesst tesst);
	
	/**
	 * 批量删除
	 */
	public int remove(List<String> list);

	/**
	 * 根据id删除
	 */
	public int removeById(String id);
	
	/**
	 * 根据对象删除
	 */
	public int removeByModel(Tesst tesst);
	
	/**
	 * 分页查询
	 */
	public List<Tesst> findInPage(Tesst tesst, PaginationVO pageVo);

	/**
	 * 根据对象查询
	 */
	public List<Tesst> findByModel(Tesst tesst);
	
	/**
	 * 统计记录数
	 */
	public int  findTotal(Tesst tesst);
	
	/**
	 * 根据id查询
	 */
	public Tesst  findById(String id);

   	

  
}