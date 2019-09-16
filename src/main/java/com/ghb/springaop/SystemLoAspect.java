package com.ghb.springaop;
import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.Aspect;
import org.springframework.stereotype.Component;

@Aspect
@Component
public class SystemLoAspect {
//   @Pointcut("execution(* com.ghb..*.*(..))")
    public void logPoint(){};

//   @After("logPoint()")
    public void after(JoinPoint joinPoint)
   {
       System.out.println("日志处理");
   }
}
