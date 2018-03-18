package com.zkingsoft.action;

import java.util.Arrays;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.matrix.core.pojo.AjaxResult;
import com.matrix.core.pojo.PaginationVO;
import com.matrix.core.web.BaseAction;
import com.zkingsoft.bean.Student;
import com.zkingsoft.service.StudentService;

/**
 * 
 *学生管理
 *
 * @author 杨亮
 * @date 2018年3月14日
 */
@Controller
@RequestMapping(value ="student")
public class StudentAction extends BaseAction {

	@Autowired
	private StudentService studentService;

	/**
	 * 显示列表
	 * 
	 * @author 杨亮
	 * @email 2209102452@qq.com
	 * @date 2018年3月15日
	 * @param student
	 * @param pageVo
	 * @return
	 */
	@RequestMapping(value = "/showList",method=RequestMethod.POST)
	public @ResponseBody AjaxResult showList(@RequestParam(required=false) Student student,@RequestParam(required=false) PaginationVO pageVo) {
		return showList(studentService, student, pageVo);
	}
 
  
	/**
	 * 根据ID删除学生
	 * 
	 * @author 杨亮
	 * @email 2209102452@qq.com
	 * @date 2018年3月15日
	 * @param fnId
	 * @return
	 */
	@PostMapping(value = "/del")
	public @ResponseBody AjaxResult del(String stuId) {
		return remove(studentService, stuId);
	}
	/**
	 * 添加一个学生
	 * 
	 * @author 杨亮
	 * @email 2209102452@qq.com
	 * @date 2018年3月15日
	 * @param student
	 * @return
	 */
	@PostMapping(value="/add")
	public @ResponseBody AjaxResult add(Student student)
	{
		
		return add(studentService, student, "添加成功");
		
	}
	/**
	 * 根据ID查找一个学生
	 * 
	 * @author 杨亮
	 * @email 2209102452@qq.com
	 * @date 2018年3月15日
	 * @param stuId
	 * @return
	 */
	@GetMapping(value="/findById")
	public @ResponseBody AjaxResult findById(String stuId)
	{
		Student findById = studentService.findById(stuId);
		return new AjaxResult(AjaxResult.STATUS_SUCCESS, Arrays.asList(findById));
	
		
	}
	/**
	 * 模糊查找
	 * 
	 * @author 杨亮
	 * @email 2209102452@qq.com
	 * @date 2018年3月15日
	 * @param student
	 * @return
	 */
	@PostMapping(value="/findByModel")
	public @ResponseBody AjaxResult findByModel(Student student)
	{
		return findByModel(studentService, student);
	}
	/**
	 * 分页查询
	 * 
	 * @author 杨亮
	 * @email 2209102452@qq.com
	 * @date 2018年3月15日
	 * @param student
	 * @param pageVo
	 * @return
	 */
	@PostMapping(value="/findInPage")
	public @ResponseBody AjaxResult findInPage(Student student,PaginationVO pageVo)
	{
		List<Student> findInPage = studentService.findInPage(student, pageVo);
		return new AjaxResult(AjaxResult.STATUS_SUCCESS, findInPage);
	}
	/**
	 * 查找符合条件的学生记录
	 * 
	 * @author 杨亮
	 * @email 2209102452@qq.com
	 * @date 2018年3月15日
	 * @param student
	 * @return
	 */
	@PostMapping(value="/findTotal")
	public @ResponseBody AjaxResult findTotal(Student student)
	{
		int findTotal = studentService.findTotal(student);
		return new AjaxResult(AjaxResult.STATUS_SUCCESS, null,findTotal);
	}
	
	

}