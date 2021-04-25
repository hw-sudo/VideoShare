package com.cdu.videoshare.service;

import com.cdu.videoshare.entity.Category;

import java.util.List;

public interface CategoryService {

    void add(Category category);

    List<Category> getAll();

    Category getById(int id);

    void update(int id,String name);

    void delById(int id);

}
