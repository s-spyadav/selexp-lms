package com.seleniumexpress.selexplms.config;

import java.net.http.HttpClient;
import java.net.http.HttpRequest;

import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;

@EnableWebSecurity
public class SpringSecurityConfig extends WebSecurityConfigurerAdapter{
	
	@Override
	protected void configure(AuthenticationManagerBuilder auth) throws Exception {
		//AuthenticationManagerBuilder validate the username and passsword 
		auth.inMemoryAuthentication()
		.withUser("shyam")
		.password("shyam")
		.roles("user")
		;
	}
	
	@Override
	protected void configure(HttpSecurity http) throws Exception {
//		http.authorizeRequests()
//			.antMatchers("/testing").permitAll()
//			.anyRequest()
//			.authenticated()
//			.and()
//			.formLogin()
//			.loginPage("/myCustomLogin").permitAll().loginProcessingUrl("/process-login")
//			.and()
//			.httpBasic();
		http.authorizeRequests()
		.anyRequest()
		.authenticated()
		.and()
		.formLogin()
		.loginPage("/myCustomLogin").permitAll().loginProcessingUrl("/process-login")
		.defaultSuccessUrl("/instructor-info")
		.and().exceptionHandling().accessDeniedPage("/accessDenied")
		.and()
		.httpBasic();
	}

}
