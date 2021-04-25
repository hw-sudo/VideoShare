package com.cdu.videoshare.mapper;

import com.cdu.videoshare.entity.Category;
import com.cdu.videoshare.entity.Video;
import com.cdu.videoshare.entity.VideoQueryCondition;
import com.cdu.videoshare.entity.View;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface VideoMapper {
    void add(Video video);
    List<Video> getAll(VideoQueryCondition condition);
    Video getById(int id);
    //根据主键删除类别
    void delById(int id);
    void update(@Param("id") int id, @Param("title") String title);

    void addView(View view);

    List<View> getViewByUserId(int id);

    List<Video> getVideoByUserId(int id);

    void updateViewNum(int id, int view_num);

    List<Video> getByUserId(int id);

    List<Video> getByUserId2(int id);

}
