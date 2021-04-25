package com.cdu.videoshare.service.impl;

import com.cdu.videoshare.entity.Favor;
import com.cdu.videoshare.entity.Praise;
import com.cdu.videoshare.entity.Video;
import com.cdu.videoshare.mapper.FavorMapper;
import com.cdu.videoshare.service.FavorService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class FavorServiceImpl implements FavorService {

    @Autowired
    private FavorMapper favorMapper;

    @Override
    public void add(Favor favor) {
        favorMapper.add(favor);
    }

    @Override
    public Favor searchByUserId(int id,int id2) {
        return favorMapper.searchByUserId(id,id2);
    }

    @Override
    public void addPraise(Praise praise) {
        favorMapper.addPraise(praise);
    }

    @Override
    public Praise getByUserId(int id, int id2) {
        return favorMapper.getByUserId(id,id2);
    }
}
