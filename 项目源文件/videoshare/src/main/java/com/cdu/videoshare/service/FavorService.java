package com.cdu.videoshare.service;

import com.cdu.videoshare.entity.Favor;
import com.cdu.videoshare.entity.Praise;
import com.cdu.videoshare.entity.Video;

import java.util.List;

public interface FavorService {

    void add(Favor favor);

    void addPraise(Praise praise);

    Favor searchByUserId(int id,int id2);

    Praise getByUserId(int id,int id2);

}
