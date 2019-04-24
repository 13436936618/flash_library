package com.bj.mapper;

import com.bj.pojo.User;

public interface UserMapper {
    void regist(User user);

    User selectuser(User user);

    User login(User user);
}
