package com.portal.usedcarsalesportal.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.SecurityFilterChain;
import org.springframework.security.web.util.matcher.AntPathRequestMatcher;


@Configuration
@EnableWebSecurity
public class SecurityConfig{
	
	@Bean
	PasswordEncoder passwordEncoder() {
		return new BCryptPasswordEncoder();
	}
	
	@Bean
    SecurityFilterChain filterChain(HttpSecurity http) throws Exception {
        http	
        	.csrf(
        			csrf -> csrf.disable()
        	)
        	.authorizeRequests( auth -> {
                auth.requestMatchers("/").permitAll();
                auth.requestMatchers("/login").permitAll();
                auth.requestMatchers("/index").hasAnyRole("Administrator","Users");
                auth.requestMatchers("/profile").hasAnyRole("Administrator","Users");
                auth.requestMatchers("/car_detail").hasAnyRole("Administrator","Users");
                auth.requestMatchers("/cars").hasAnyRole("Administrator","Users");
                auth.requestMatchers("/users").hasRole("Administrator");
                auth.requestMatchers("/view").hasRole("Administrator");
                auth.requestMatchers("/edit").hasRole("Administrator");
                auth.requestMatchers("/delete").hasRole("Administrator");
                auth.requestMatchers("/all_cars").hasRole("Administrator");
                auth.requestMatchers("/edit_car").hasRole("Administrator");
                auth.requestMatchers("/delete_car").hasRole("Administrator");
                auth.requestMatchers("/deleteCar").hasRole("Users");
        	})
            .formLogin(
                        form -> form
                                .loginPage("/login")
                                .loginProcessingUrl("/login")
                                .failureUrl("/login_error")
                                .defaultSuccessUrl("/cars")
                                .permitAll()
             )
             .logout(
                        logout -> logout
                                .logoutRequestMatcher(new AntPathRequestMatcher("/logout"))
                                .permitAll()

              );
        return http.build();
    }
}
