package com.ghb.biz;

import com.ghb.entity.User;
import com.ghb.mapper.UserMapper;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service("biz")
public class UBiz implements UserBiz {
   @Resource
    private UserMapper userMapper;

    @Override
    public User login(String uid, String upass) {
        return userMapper.finduser(uid,upass);
    }

    public User logajax(String uid){
        return userMapper.logajax(uid);
    }

    @Override
    public List<User> libiao(Integer page, Integer limit) {
        return userMapper.findUserAll(page,limit);
    }

    @Override
    public Integer count() {
        return userMapper.count();
    }

    @Override
    public Integer userdelt(String uid) {
        return userMapper.userdelt(uid);
    }
}
