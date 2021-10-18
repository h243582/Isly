package org.example;

import org.example.pojo.AllAttribute;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;

@SpringBootApplication
public class IslyApplication {
    public static void main(String[] args) {
        SpringApplication.run(IslyApplication.class);
    }

    @Bean
    public AllAttribute getAllAttribute(){
        return new AllAttribute();
    }

}
