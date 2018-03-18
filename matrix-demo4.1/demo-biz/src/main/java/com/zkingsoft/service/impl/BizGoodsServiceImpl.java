package com.zkingsoft.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.matrix.core.pojo.PaginationVO;
import com.zkingsoft.bean.BizGoods;
import com.zkingsoft.dao.BizGoodsDao;
import com.zkingsoft.service.BizGoodsService;

@Service
public class BizGoodsServiceImpl implements BizGoodsService {

	@Autowired
	BizGoodsDao goodsDao;

	
	@Override
	public int add(BizGoods obje) {
		return goodsDao.insert(obje);
	}
	

	@Override
	public int remove(List<String> list) {
		 
		return goodsDao.deleteByIds(list);
	}

	@Override
	public List<BizGoods> findInPage(BizGoods obje, PaginationVO pageVo) {
		return goodsDao.selectInPage(obje, pageVo);
	}


	@Override
	public int findTotal(BizGoods obje) {
		return goodsDao.selectTotalRecord(obje);
	}

	@Override
	public BizGoods findById(String id) {
		return goodsDao.selectById(id);
	}
	
	@Override
	public List<BizGoods> findByModel(BizGoods obje) {
		return null;
	} 
 

	@Override
	public int removeById(String id) {
		 
		return 0;
	}
	
	@Override
	public int modifyByMap(BizGoods oldValue, BizGoods newValue) {
		 
		return 0;
	}
}