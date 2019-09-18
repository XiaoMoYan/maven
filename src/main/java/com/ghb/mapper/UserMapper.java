package com.ghb.mapper;

import com.ghb.entity.User;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface UserMapper {
    public User finduser(@Param("uid") String uid, @Param("upass") String upass);

    public List<User> findUserAll(@Param("page") Integer page, @Param("limit") Integer limit);

    public User logajax(@Param("uid")String uid);
    
    public User findByid(@Param("rid")Integer rid);

    public Integer count();

    public Integer userdelt(@Param("uid")String uid);
}
