package com.SpringTest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class SpringJenkinsApplication {

	public static  Logger log = LoggerFactory.getLogger(SpringJenkinsApplication.class);

	public void init() {
		log.info("Spring Boot Application Started.......");

	}

	public static void main(String[] args) {
    			 
    			 log.info("Application Executed .......");
		SpringApplication.run(SpringJenkinsApplication.class, args);
		
	}

}
