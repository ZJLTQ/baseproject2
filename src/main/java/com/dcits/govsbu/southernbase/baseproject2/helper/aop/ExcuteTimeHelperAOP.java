package com.dcits.govsbu.southernbase.baseproject2.helper.aop;

import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Pointcut;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;

/**
 * 具体方法执行时间统计AOP
 * @author dc_zjl
 *
 */
@Aspect
@Component
public class ExcuteTimeHelperAOP {
	
	private static Logger logger = LoggerFactory.getLogger(ExcuteTimeHelperAOP.class);

	@Pointcut("execution(* com.dcits.govsbu.southernbase.baseproject2.controller..*(..)) ")
	private void actionMethod(){
	}
	
	//声明环绕通知
	@Around("actionMethod()")
	private Object excuteTimeOfMethod(ProceedingJoinPoint jointPoint) throws Throwable {
		long begin = System.nanoTime();
		Object o = jointPoint.proceed();
		long end = System.nanoTime();
		logger.info(jointPoint.getTarget().getClass().getName() + "." + jointPoint.getSignature().getName() + "()方法执行消耗时间：" + (end-begin)/1000000 + "ms");
		return o;
	}
	
}
