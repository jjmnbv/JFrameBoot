package com.jf;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

@SpringBootApplication
@ComponentScan(basePackages = {"com.jf"})
public class JframeWebManageApplication {

    public static void main(String[] args) {
        SpringApplication.run(JframeWebManageApplication.class, args);
    }

}
