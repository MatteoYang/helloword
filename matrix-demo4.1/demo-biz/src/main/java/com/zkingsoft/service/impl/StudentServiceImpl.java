package com.zkingsoft.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.matrix.core.exception.GlobleException;
import com.matrix.core.pojo.PaginationVO;
import com.matrix.core.tools.ModelUtils;
import com.zkingsoft.bean.Student;
import com.zkingsoft.dao.StudentDao;
import com.zkingsoft.service.StudentService;

@Service
public class StudentServiceImpl implements StudentService {

	@Autowired
	StudentDao studentDao;

	@Override
	public int add(Student arg0) {
		// TODO Auto-generated method stub
		return studentDao.insert(arg0);
	}

	@Override
	public Student findById(String arg0) {
		// TODO Auto-generated method stub
		return studentDao.selectById(arg0);
	}

	@Override
	public List<Student> findByModel(Student arg0) {
		// TODO Auto-generated method stub
		return studentDao.selectByModel(arg0);
	}

	@Override
	public List<Student> findInPage(Student arg0, PaginationVO arg1) {
		// TODO Auto-generated method stub
		return studentDao.selectInPage(arg0, arg1);
	}

	@Override
	public int findTotal(Student arg0) {
		// TODO Auto-generated method stub
		return studentDao.selectTotalRecord(arg0);
	}

	@Override
	public int modifyByMap(Student arg0, Student arg1) {
		// TODO Auto-generated method stub
		Map<String, Object> modifyMap = null;
		int updateByMap=0;
		try {
			modifyMap = ModelUtils.comparePojo2Map(arg0, arg1);
		} catch (Exception e) {
			new GlobleException("数据对比失败");
		}
		if (modifyMap.size() > 0) {
			modifyMap.put("stuId", arg0.getStuId());
			 updateByMap = studentDao.updateByMap(modifyMap);
		}
		return updateByMap;
	}

	@Override
	public int remove(List<String> arg0) {
		// TODO Auto-generated method stub
		return studentDao.deleteByIds(arg0);
	}

	@Override
	public int removeById(String arg0) {
		// TODO Auto-generated method stub
		return studentDao.deleteById(arg0);
	}

	
	
	
}