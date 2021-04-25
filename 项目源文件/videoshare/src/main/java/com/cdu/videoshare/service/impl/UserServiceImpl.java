package com.cdu.videoshare.service.impl;

import com.cdu.videoshare.entity.User;
import com.cdu.videoshare.mapper.UserMapper;
import com.cdu.videoshare.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private UserMapper userMapper;

    @Override
    public void reg(User user) {
        //先判断注册的账号是否存在

        //如果存在，告知Controller该账号已存在
        //如果不存在，直接注册成功
        userMapper.add(user);
    }

    @Override
    public User getByAccount(String account) {
        return userMapper.getByAccount(account);
    }

    @Override
    public User getByAccountAndPassword(String account, String password) {
        return userMapper.getByAccountAndPwd(account,password);
    }

    @Override
    public List<User> getAll() {
        return userMapper.getAll();
    }


}
