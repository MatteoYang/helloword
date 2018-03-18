package com.zkingsoft.bean;

import com.matrix.core.anotations.Extend;
import com.matrix.core.pojo.EntityDTO;

public class Student extends EntityDTO{
	/**
	 * 
	 */
	@Extend
	private static final long serialVersionUID = 1L;
	private String stuId;
	private Integer stuSex;
	private String stuName;
	private String stuClass;
	private Integer stuAge;
	
	public Integer getStuAge() {
		return stuAge;
	}
	public void setStuAge(Integer stuAge) {
		this.stuAge = stuAge;
	}
	public String getStuId() {
		return stuId;
	}
	public void setStuId(String stuId) {
		this.stuId = stuId;
	}
	
	public Integer getStuSex() {
		return stuSex;
	}
	public void setStuSex(Integer stuSex) {
		this.stuSex = stuSex;
	}
	public String getStuName() {
		return stuName;
	}
	public void setStuName(String stuName) {
		this.stuName = stuName;
	}
	public String getStuClass() {
		return stuClass;
	}
	public void setStuClass(String stuClass) {
		this.stuClass = stuClass;
	}
	
	public Student() {
		// TODO Auto-generated constructor stub
	}
	

}
