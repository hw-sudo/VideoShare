package com.cdu.videoshare.entity;

import java.util.Date;

public class View {

    private int id;
    private int video_id;
    private int user_id;
    private Date view_time;
    private String title;

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

    public Date getView_time() {
        return view_time;
    }

    public void setView_time(Date view_time) {
        this.view_time = view_time;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }
}
