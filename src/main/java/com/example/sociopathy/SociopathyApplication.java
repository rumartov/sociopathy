package com.example.sociopathy;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.PropertySource;

@SpringBootApplication
@PropertySource("config.properties")
public class SociopathyApplication {

	public static void main(String[] args) {
		SpringApplication.run(SociopathyApplication.class, args);
	}

}
