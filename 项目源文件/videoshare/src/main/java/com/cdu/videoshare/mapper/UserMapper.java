package com.cdu.videoshare.mapper;

import com.cdu.videoshare.entity.User;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface UserMapper {

    void add(User user);


    User getByAccount(String account);

    User getByAccountAndPwd(@Param("account") String account, @Param("password")String password);

    List<User> getAll();

    void updateVideoNum(int id,int num);

}
