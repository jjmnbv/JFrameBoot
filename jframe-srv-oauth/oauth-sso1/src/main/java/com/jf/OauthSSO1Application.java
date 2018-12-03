package com.jf;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.security.oauth2.client.EnableOAuth2Sso;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.Authentication;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@SpringBootApplication
@RestController
@EnableOAuth2Sso
public class OauthSSO1Application extends WebSecurityConfigurerAdapter {

    @GetMapping("/user")
    public Authentication user(Authentication user) {
        System.out.println("user: " + user.getName());
        return user;
    }

    public static void main(String[] args) {
        SpringApplication.run(OauthSSO1Application.class, args);
    }

    /**
     * 配置不拦截请求
     *
     * @param http
     * @throws Exception
     */
    @Override
    protected void configure(HttpSecurity http) throws Exception {
        http
                .authorizeRequests().antMatchers("/test/**").permitAll()
                .anyRequest().authenticated();
        super.configure(http);
    }

}