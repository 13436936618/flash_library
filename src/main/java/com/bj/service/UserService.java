package com.bj.service;

import com.bj.pojo.User;
import org.springframework.stereotype.Service;

@Service
public interface UserService {
    void regist(User user);

    User select(User user);

    User login(User user);
}
