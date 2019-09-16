package com.ghb.mapper;

import com.ghb.entity.Role;
import com.ghb.entity.User;

public interface RoleMapper {
    public User findByrid(Integer rid);
}
