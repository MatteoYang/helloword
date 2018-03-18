package com.zkingsoft.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.matrix.core.pojo.PaginationVO;
import com.zkingsoft.bean.Student;

public interface StudentDao {
	public int insert(Student student);

	public int updateByMap(Map<String, Object> modifyMap);

	public int deleteByIds(@Param("list") List<String> list);

	public List<Student> selectInPage(@Param("record") Student student, @Param("pageVo") PaginationVO pageVo);

	public int selectTotalRecord(@Param("record") Student student);

	public Student selectById(String stuId);
	
	public List<Student> selectByModel(@Param("record") Student student);
	
	public int deleteById(String stuId);

}
