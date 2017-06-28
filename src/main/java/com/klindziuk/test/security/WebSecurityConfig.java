package com.klindziuk.test.security;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;

@Configuration
@EnableWebSecurity
public class WebSecurityConfig extends WebSecurityConfigurerAdapter {
    @Override
    protected void configure(HttpSecurity http) throws Exception {
               
        http.authorizeRequests()
        .antMatchers("/").permitAll()
		.antMatchers("/list").hasRole("USER")
	    .antMatchers("/books").hasRole("USER")
		.and()
			.formLogin().loginPage("/")
			.defaultSuccessUrl("/list")
			.usernameParameter("username").passwordParameter("password");				
	    }

    @Autowired
    public void configureGlobal(AuthenticationManagerBuilder auth) throws Exception {
        auth
            .inMemoryAuthentication()
                .withUser("dev")
                .password("dev")
                .roles("USER");
    }
}
