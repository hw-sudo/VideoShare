package com.cdu.videoshare.service.impl;

import com.cdu.videoshare.entity.Admin;
import com.cdu.videoshare.mapper.AdminMapper;
import com.cdu.videoshare.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class AdminServiceImpl implements AdminService {

    @Autowired
    private AdminMapper adminMapper;

    @Override
    public Admin login(String account) {
        return adminMapper.getByAccountAndPwd(account);
    }

    @Override
    public void updatePwd(int id, String password) {
        adminMapper.updatePwd(id, password);
    }
}
