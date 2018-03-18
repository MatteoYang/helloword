package com.zkingsoft.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.matrix.core.pojo.PaginationVO;
import com.zkingsoft.bean.BizGoods;

public interface BizGoodsDao {
	
	public int insert(BizGoods bizGoods);

	public int updateByMap(Map<String, Object> modifyMap);

	public int deleteByIds(@Param("list") List<String> list);

	public List<BizGoods> selectInPage(@Param("record") BizGoods bizGoods, @Param("pageVo") PaginationVO pageVo);

	public int selectTotalRecord(@Param("record") BizGoods bizGoods);

	public BizGoods selectById(String gdId);

}