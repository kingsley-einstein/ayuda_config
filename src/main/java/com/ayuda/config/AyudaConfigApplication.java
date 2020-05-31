package com.ayuda.config;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.config.server.EnableConfigServer;

@SpringBootApplication
@EnableConfigServer
public class AyudaConfigApplication {

	public static void main(String[] args) {
		SpringApplication.run(AyudaConfigApplication.class, args);
	}

}
