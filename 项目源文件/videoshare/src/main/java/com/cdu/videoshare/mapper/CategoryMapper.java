package com.cdu.videoshare.mapper;

import com.cdu.videoshare.entity.Category;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface CategoryMapper {
    void add(Category category);

    List<Category> getAll();

    Category getById(int id);

    //根据主键删除类别
    void delById(int id);

    void update(@Param("id") int id, @Param("name") String name);

}
