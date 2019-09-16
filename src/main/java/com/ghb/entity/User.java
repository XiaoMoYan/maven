package com.ghb.entity;

import java.util.ArrayList;
import java.util.List;

public class User {
    private Integer rid;
    private String uid;
    private  String upass;
    private Integer ustate;
    private  String uname;
    private  String usex;
    private String uxl;
    private  String  uzy;
    private String uphone;
    private  String uemail;
    private  Role role;
    private String sname;


    public String getSname() {
        return sname;
    }

    public void setSname(String sname) {
        this.sname = sname;
    }

    public Integer getRid() {
        return rid;
    }

    public void setRid(Integer rid) {
        this.rid = rid;
    }

    public Integer getUstate() {
        return ustate;
    }

    public void setUstate(Integer ustate) {
        this.ustate = ustate;
    }

    public Role getRole() {
        return role;
    }

    public void setRole(Role role) {
        this.role = role;
    }

    public String getUzy() {
        return uzy;
    }

    public void setUzy(String uzy) {
        this.uzy = uzy;
    }


    public String getUname() {
        return uname;
    }

    public void setUname(String uname) {
        this.uname = uname;
    }

    public String getUsex() {
        return usex;
    }

    public void setUsex(String usex) {
        this.usex = usex;
    }

    public String getUxl() {
        return uxl;
    }

    public void setUxl(String uxl) {
        this.uxl = uxl;
    }

    public String getUphone() {
        return uphone;
    }

    public void setUphone(String uphone) {
        this.uphone = uphone;
    }

    public String getUemail() {
        return uemail;
    }

    public void setUemail(String uemail) {
        this.uemail = uemail;
    }

    private List<String> li=new ArrayList<String>();

    public List<String> getLi() {
        return li;
    }

    public void setLi(List<String> li) {
        this.li = li;
    }

    public String getUid() {
        return uid;
    }

    public void setUid(String uid) {
        this.uid = uid;
    }

    public String getUpass() {
        return upass;
    }

    public void setUpass(String upass) {
        this.upass = upass;
    }

    public User(String uid, String upass) {
        this.uid = uid;
        this.upass = upass;
    }

    public User() {

    }
}
