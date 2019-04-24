package com.bj.service;

import com.bj.mapper.UserMapper;
import com.bj.pojo.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Random;

@Service("userService")
public class UserServiceImpl implements UserService{

    @Autowired
    private UserMapper userMapper;

    @Override
    public void regist(User user) {
        user.setId(new Random().nextInt());
        userMapper.regist(user);
    }

    @Override
    public User select(User user) {
        return userMapper.selectuser(user);
    }

    @Override
    public User login(User user) {
        return userMapper.login(user);
    }
}
