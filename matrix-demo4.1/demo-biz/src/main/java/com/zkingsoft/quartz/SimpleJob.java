package com.zkingsoft.quartz;

import java.util.Date;

import org.quartz.JobExecutionContext;
import org.springframework.scheduling.quartz.QuartzJobBean;

import com.matrix.core.tools.LogUtil;

/**
 * 定时任务演示
 */
public class SimpleJob extends QuartzJobBean {
	@Override
	protected void executeInternal(JobExecutionContext context) {
		LogUtil.info("当前时间是：" + new Date().toLocaleString());
	}
}
