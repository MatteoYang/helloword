package com.zkingsoft.bean;

import com.matrix.core.anotations.Extend;
import com.matrix.core.pojo.EntityDTO;


public class BizGoods extends EntityDTO {
	@Extend
	private static final long serialVersionUID = 1L;
	/**
	 * 商品表主键
	 */
	private String gdId;
	/**
	 * 商品名称
	 */
	private String gdName;

	/**
	 * 商品的照片
	 */
	private String gdImg;

	/**
	 * 商品描述
	 */
	private String gdRemark;

	public String getGdId() {
		return gdId;
	}

	public void setGdId(String gdId) {
		this.gdId = gdId;
	}

	public String getGdName() {
		return gdName;
	}

	public void setGdName(String gdName) {
		this.gdName = gdName;
	}

	public String getGdImg() {
		return gdImg;
	}

	public void setGdImg(String gdImg) {
		this.gdImg = gdImg;
	}

	public String getGdRemark() {
		return gdRemark;
	}

	public void setGdRemark(String gdRemark) {
		this.gdRemark = gdRemark;
	}
	
}
