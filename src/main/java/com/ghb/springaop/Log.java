package com.ghb.springaop;


import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@Target({ElementType.PARAMETER,ElementType.METHOD})
@Retention(RetentionPolicy.RUNTIME)
public @interface Log {
    /**要执行的操作 例：增加操作**/
    public  String  operationType() default "";

    /**要执行的具体操作 例：添加用户**/
    public String operationName() default "";
}
