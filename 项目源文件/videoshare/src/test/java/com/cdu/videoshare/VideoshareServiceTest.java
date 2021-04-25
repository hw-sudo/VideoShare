package com.cdu.videoshare;

import com.cdu.videoshare.entity.Category;
import com.cdu.videoshare.entity.User;
import com.cdu.videoshare.entity.Video;
import com.cdu.videoshare.service.VideoService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

@SpringBootTest
@RunWith(SpringRunner.class)
public class VideoshareServiceTest {

    @Autowired
    private VideoService videoService;

    @Test
    public void testAdd(){
        Video video=new Video();
        Category category=new Category();
        category.setId(3);
        video.setCategory(category);
        User user=new User();
        user.setId(2);
        video.setUser(user);
        video.setTitle("title");
        video.setCover("cover");
        video.setUrl("url");
        video.setPubTime("2020-01-01");
        video.setStatus("y");

        videoService.add(video);
    }

}
