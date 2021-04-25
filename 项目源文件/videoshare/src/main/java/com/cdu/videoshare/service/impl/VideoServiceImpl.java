package com.cdu.videoshare.service.impl;

import com.cdu.videoshare.entity.Video;
import com.cdu.videoshare.entity.VideoQueryCondition;
import com.cdu.videoshare.entity.View;
import com.cdu.videoshare.mapper.UserMapper;
import com.cdu.videoshare.mapper.VideoMapper;
import com.cdu.videoshare.service.VideoService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class VideoServiceImpl implements VideoService {

    @Autowired
    private VideoMapper videoMapper;

    @Override
    public PageInfo<Video> getAll(int pageNum,VideoQueryCondition condition) {
        int pageSize=3; //页面的数据量，该数字可以配置
        PageHelper.startPage(pageNum,pageSize); //开启分页，接收两个参数：页码，分页大小
        List<Video> data= videoMapper.getAll(condition);
        PageInfo<Video> pageInfo=new PageInfo<>(data); //包含分页信息
        return pageInfo;
    }

    @Override
    public List<Video> getForIndex() {
        PageHelper.startPage(1,15);
        List<Video> data= videoMapper.getAll(new VideoQueryCondition());
        PageInfo<Video> pageInfo=new PageInfo<>(data);
        return pageInfo.getList();
    }

    @Override
    public Video getById(int id) {
        return videoMapper.getById(id);
    }

    @Autowired
    private UserMapper userMapper;

    @Transactional
    @Override
    public void add(Video video) {
        videoMapper.add(video);
        userMapper.updateVideoNum(video.getUser().getId(),1);
    }

    @Override
    public void addView(View view) {
        videoMapper.addView(view);
    }

    @Override
    public List<View> getViewByUserId(int id) {
        return videoMapper.getViewByUserId(id);
    }

    @Override
    public List<Video> getVideoByUserId(int id) {
        return videoMapper.getVideoByUserId(id);
    }

    @Override
    public void updateViewNum(int id, int view_num) {
        videoMapper.updateViewNum(id,view_num);
    }

    @Override
    public List<Video> getByUserId(int id) {
        return videoMapper.getByUserId(id);
    }

    @Override
    public List<Video> getByUserId2(int id) {
        return videoMapper.getByUserId2(id);
    }
}
