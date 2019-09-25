package com.boot;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;
import tk.mybatis.spring.annotation.MapperScan;

@SpringBootApplication
//扫描 mybatis mapper 包路径
@MapperScan(basePackages = "com.boot.mapper")
//扫描 所有需要的包
@ComponentScan(basePackages= {"com.boot"})
public class AdminwebBootApplication {

	public static void main(String[] args) {
		SpringApplication.run(AdminwebBootApplication.class, args);
	}

}
