package com.cdu.videoshare.service;

import com.cdu.videoshare.entity.Category;
import com.cdu.videoshare.entity.Video;
import com.cdu.videoshare.entity.VideoQueryCondition;
import com.cdu.videoshare.entity.View;
import com.github.pagehelper.PageInfo;

import java.util.List;

public interface VideoService {

    PageInfo<Video> getAll(int pageNum, VideoQueryCondition condition);
    List<Video> getForIndex();
    Video getById(int id);
    void add(Video video);

    void addView(View view);

    List<View> getViewByUserId(int id);

    List<Video> getVideoByUserId(int id);

    void updateViewNum(int id,int view_num);
    List<Video> getByUserId(int id);
    List<Video> getByUserId2(int id);

}
