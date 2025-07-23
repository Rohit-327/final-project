package com.example.demo.student;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;


@SpringBootApplication
public class StudentRestApIsApplication extends SpringBootServletInitializer {


    public static void main(String[] args) {
        SpringApplication.run(StudentRestApIsApplication.class, args);
        System.out.println("application started");
    }

    @Override
    protected SpringApplicationBuilder configure(SpringApplicationBuilder builder) {
        return builder.sources(StudentRestApIsApplication.class);
    }

}
