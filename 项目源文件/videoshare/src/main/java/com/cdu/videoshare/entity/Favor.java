package com.cdu.videoshare.entity;

import java.util.Date;

public class Favor {
    int id;
    int video_id;
    int user_id;
    Date favor_time;

    public Date getFavor_time() {
        return favor_time;
    }

    public void setFavor_time(Date favor_time) {
        this.favor_time = favor_time;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getVideo_id() {
        return video_id;
    }

    public void setVideo_id(int video_id) {
        this.video_id = video_id;
    }

    public int getUser_id() {
        return user_id;
    }

    public void setUser_id(int user_id) {
        this.user_id = user_id;
    }





}
