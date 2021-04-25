package com.cdu.videoshare.mapper;

import com.cdu.videoshare.entity.Admin;

import java.util.List;

public interface AdminMapper {

    Admin getByAccountAndPwd(String account);

    void updatePwd(int id,String password);

}
