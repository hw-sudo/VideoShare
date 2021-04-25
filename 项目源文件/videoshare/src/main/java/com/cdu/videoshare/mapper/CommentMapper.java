package com.cdu.videoshare.mapper;

import com.cdu.videoshare.entity.Comment;

import java.util.List;

public interface CommentMapper {

    void add(Comment comment);

    List<Comment> getByVideoId(int id);

}
