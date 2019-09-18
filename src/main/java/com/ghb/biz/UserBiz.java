package com.ghb.biz;

import com.ghb.entity.User;

import java.util.List;
public interface UserBiz {
    public User login(String uid,String upass);
    public User logajax(String uid);
    public List<User> libiao(Integer page,Integer limit);
    public Integer count();
    public Integer userdelt(String uid);
}
