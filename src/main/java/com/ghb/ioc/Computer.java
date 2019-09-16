package com.ghb.ioc;

import org.springframework.stereotype.Component;

import javax.annotation.Resource;
import java.util.List;
import java.util.Map;
@Component

public class Computer {
    private String cpu="1222";
    private String dname="1111";
    private List<String> list;
    private Map<String,String> map;


    public List<String> getList() {
        return list;
    }

    public void setList(List<String> list) {
        this.list = list;
    }

    public Map<String, String> getMap() {
        return map;
    }

    public void setMap(Map<String, String> map) {
        this.map = map;
    }

    public String getCpu() {
        return cpu;
    }

    public void setCpu(String cpu) {
        this.cpu = cpu;
    }

    public String getDname() {
        return dname;
    }

    public void setDname(String dname) {
        this.dname = dname;
    }


    public Computer(String cpu, String dname, List<String> list, Map<String, String> map) {
        this.cpu = cpu;
        this.dname = dname;
        this.list = list;
        this.map = map;
    }


    public Computer() {
    }
}
