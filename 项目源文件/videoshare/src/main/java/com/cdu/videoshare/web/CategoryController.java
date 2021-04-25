package com.cdu.videoshare.web;

import com.cdu.videoshare.entity.Category;
import com.cdu.videoshare.service.CategoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;



@Controller
@RequestMapping("category")
public class CategoryController {
    @GetMapping("add")
    public String add(){
        return "admin/category_add";
    }

    @Autowired
    private CategoryService categoryService;



    @PostMapping("add")
    public String add(String name, Model model){
        System.out.println(name);

        Category category=new Category();
        category.setName(name);
        categoryService.add(category);

        model.addAttribute("categories",categoryService.getAll());

        return "admin/category_list";
    }

    @GetMapping("list")
    public String list(Model model){
        model.addAttribute("categories",categoryService.getAll());
        return "admin/category_list";
    }

    /*@GetMapping("del")
    public String del(int id,Model model){
        categoryService.delById(id);
        model.addAttribute("categories",categoryService.getAll());
        return "admin/category_list";
    }*/

    @GetMapping("del/{id}")
    public String del(@PathVariable int id, Model model){
        categoryService.delById(id);

        model.addAttribute("categories",categoryService.getAll());
        return "admin/category_list";
    }

    @GetMapping("update/{id}")
    public  String upadte(@PathVariable int id,Model model){
        Category category=categoryService.getById(id);

        model.addAttribute("category",category);
        return "admin/category_update";
    }

    @PostMapping("update")
    public String update(int id,String name,Model model){

        categoryService.update(id,name);

        model.addAttribute("categories",categoryService.getAll());
        return "admin/category_list";

    }

}
