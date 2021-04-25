package com.cdu.videoshare.service;

import com.cdu.videoshare.entity.Admin;

import java.util.List;

public interface AdminService {

    Admin login(String account);

    void updatePwd(int id,String password);

}
