package com.exam.sts;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
@MapperScan
public class StsProjectApplication {

	public static void main(String[] args) {
		SpringApplication.run(StsProjectApplication.class, args);
	}

}
