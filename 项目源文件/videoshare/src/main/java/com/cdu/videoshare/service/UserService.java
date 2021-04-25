package com.cdu.videoshare.service;

import com.cdu.videoshare.entity.User;

import java.util.List;

public interface UserService {

    void reg(User user);

    List<User> getAll();

    User getByAccount(String account);

    User getByAccountAndPassword(String account,String password);

}
