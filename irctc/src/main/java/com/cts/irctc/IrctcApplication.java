package com.cts.irctc;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;

import com.cts.irctc.skeletonvalidator.SkeletonValidator;

@SpringBootApplication
public class IrctcApplication extends SpringBootServletInitializer {

	public static void main(String[] args) {
		SpringApplication.run(IrctcApplication.class, args);
		
	}
	
	@Override
	protected SpringApplicationBuilder configure(SpringApplicationBuilder builder) {
        return builder.sources(IrctcApplication.class);
    } 

}