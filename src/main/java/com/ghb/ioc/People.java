package com.ghb.ioc;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import javax.annotation.Resource;

@Component

public class People {
    private String name;
    //注入 get/set
    @Resource
    //注入构造
//    @Autowired

    private Computer computer;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Computer getComputer() {
        return computer;
    }

    public void setComputer(Computer computer) {
        this.computer = computer;
    }

    public People(String name, Computer computer) {
        this.name = name;
        this.computer = computer;
    }

    public People() {
    }
}
