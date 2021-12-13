package com.utils;

import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.springframework.stereotype.Component;
import org.springframework.util.StopWatch;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Aspect
@Component
public class LogAop {
	
	//@Around("execution(* com.controller..**(..))") //aop로 시작하는 메소드만
	@Around("execution(* com.controller..*.aop*(..))") //aop로 시작하는 메소드만
    public Object logging(ProceedingJoinPoint pjp) throws Throwable {
		StopWatch stopWatch = new StopWatch();
		stopWatch.start();
		 
		log.info(">>>>>>>>>>>>>>>>> start - " + pjp.getSignature().getDeclaringTypeName() + " / " + pjp.getSignature().getName());
        Object result = pjp.proceed();
        log.info(">>>>>>>>>>>>>>>>> finished - " + pjp.getSignature().getDeclaringTypeName() + " / " + pjp.getSignature().getName());
        
        stopWatch.stop();
        System.out.println("총 걸린 시간: " + stopWatch.getTotalTimeSeconds());
        return result;
    }
}
