package com.cdu.videoshare.service;

import com.cdu.videoshare.entity.Comment;

import java.util.List;

public interface CommentService {

    void add(Comment comment);

    List<Comment> getByVideoId(int id);

}
