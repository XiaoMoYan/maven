package com.ghb.blocker;


import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.Interceptor;

public class fist implements Interceptor {
    @Override
    public void destroy() {
        System.out.println("destroy-------");
    }

    @Override
    public void init() {
        System.out.println("init++++++++");
    }
    @Override
    public String intercept(ActionInvocation actionInvocation) throws Exception {
        System.out.println("拦截前----");
        Object ob=actionInvocation.getInvocationContext().getSession().get("uid");
        if(null!=ob){
            actionInvocation.invoke();
        }
        return "error";
    }
}
