package com.cdu.videoshare.service.impl;

import com.cdu.videoshare.entity.Comment;
import com.cdu.videoshare.mapper.CommentMapper;
import com.cdu.videoshare.service.CommentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CommentServiceImpl implements CommentService{

    @Autowired
    private CommentMapper commentMapper;

    @Override
    public void add(Comment comment) {
        commentMapper.add(comment);
    }

    @Override
    public List<Comment> getByVideoId(int id) {
        return commentMapper.getByVideoId(id);
    }
}
