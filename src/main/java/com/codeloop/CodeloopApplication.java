package com.codeloop;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import io.swagger.v3.oas.annotations.OpenAPIDefinition;
import io.swagger.v3.oas.annotations.info.Info;

@SpringBootApplication
@OpenAPIDefinition(
    info = @Info(
        title = "CodeLoop API",
        version = "1.0.0",
        description = "REST API for a web online course management system."
    )
)
public class CodeloopApplication {

	public static void main(String[] args) {
		SpringApplication.run(CodeloopApplication.class, args);
	}

}
