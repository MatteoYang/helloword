package com.zkingsoft.bean;

import com.matrix.core.anotations.Extend;
import com.matrix.core.pojo.EntityDTO;

/**
 * @description (用户管理)
 * @author jyy
 * @date 2017-12-29 10:33
 */
public class Tesst  extends EntityDTO{
	@Extend
	private static final long serialVersionUID = 1L; 

	
	/**
	 * 创建人
	 */
	private String  createBy;
			
	
	/**
	 * 项目
	 */
	private String  name;
			
	
	/**
	 * 主键
	 */
	private String  id;
			
	

	public String getCreateBy() {
		return createBy;
	}
   	
   	public void setCreateBy(String createBy) {
		this.createBy=createBy;
	}
   	

	public String getName() {
		return name;
	}
   	
   	public void setName(String name) {
		this.name=name;
	}
   	

	public String getId() {
		return id;
	}
   	
   	public void setId(String id) {
		this.id=id;
	}
   	


  
}