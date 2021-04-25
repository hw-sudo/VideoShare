package com.cdu.videoshare.service.impl;

import com.cdu.videoshare.entity.Category;
import com.cdu.videoshare.mapper.CategoryMapper;
import com.cdu.videoshare.service.CategoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.security.PublicKey;
import java.util.List;

@Service
public class CategoryServiceImpl implements CategoryService {

    @Autowired
    private CategoryMapper categoryMapper;

    @Override
    public void add(Category category){
        categoryMapper.add(category);
    }

    @Override
    public List<Category> getAll() {
        return categoryMapper.getAll();
    }

    @Override
    public Category getById(int id) {
        return categoryMapper.getById(id);
    }

    @Override
    public void update(int id,String name) {
        categoryMapper.update(id, name);
    }

    @Override
    public void delById(int id) {
        categoryMapper.delById(id);
    }
}
