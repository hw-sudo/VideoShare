package com.cdu.videoshare;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
@MapperScan(basePackages = "com.cdu.videoshare.mapper")
public class VideoshareApplication {

    public static void main(String[] args) {
        SpringApplication.run(VideoshareApplication.class, args);
    }

}
