package com.clickmyjobs.portal.config;
/*package com.myjobs.portal.config;


import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;

//import com.jobportal.authentication.MyDBAuthenticationService;
 
@Configuration
// @EnableWebSecurity = @EnableWebMVCSecurity + Extra features
@EnableWebSecurity
public class WebSecurityConfig extends WebSecurityConfigurerAdapter {
 
    
    @Autowired
    MyDBAuthenticationService myDBAauthenticationService;
	
	@Autowired
	 DataSource dataSource;
 
    @Autowired
    public void configAuthentication(AuthenticationManagerBuilder auth) throws Exception {
 
    	auth.jdbcAuthentication().dataSource(dataSource)
    	  .usersByUsernameQuery(
    	   "select username,password, enabled from users where username=?")
    	  .authoritiesByUsernameQuery(
    	   "select username, role from user_roles where username=?");
    	
    	
        // Users in memory.
 
       // auth.inMemoryAuthentication().withUser("user1").password("12345").roles("USER");
       // auth.inMemoryAuthentication().withUser("admin1").password("12345").roles("USER, ADMIN");
 
        // For User in database.
       // auth.userDetailsService(myDBAauthenticationService);
 
    }
 
    @Override
    protected void configure(HttpSecurity http) throws Exception {
 
    	http.authorizeRequests()
    	  .antMatchers("/manageresumes.do").access("hasRole('ROLE_ADMIN')")  
    	  .anyRequest().permitAll()
    	  .and()
    	    .formLogin().loginPage("/my-account.do")
    	    .usernameParameter("username").passwordParameter("password")
    	  .and()
    	    .logout().logoutSuccessUrl("/my-account.do?logout") 
    	   .and()
    	   .exceptionHandling().accessDeniedPage("/403")
    	  .and()
    	    .csrf();
    	
    	
    	
    	
        http.csrf().disable();
 
        // The pages does not require login
        http.authorizeRequests().antMatchers("/", "/welcome", "/login", "/logout").permitAll();
 
        // /userInfo page requires login as USER or ADMIN.
        // If no login, it will redirect to /login page.
        http.authorizeRequests().antMatchers("/userInfo").access("hasAnyRole('ROLE_USER', 'ROLE_ADMIN')");
 
        // For ADMIN only.
        http.authorizeRequests().antMatchers("/admin").access("hasRole('ROLE_ADMIN')");
 
        // When the user has logged in as XX.
        // But access a page that requires role YY,
        // AccessDeniedException will throw.
        http.authorizeRequests().and().exceptionHandling().accessDeniedPage("/403");
 
        // Config for Login Form
        http.authorizeRequests().and().formLogin()//
                // Submit URL of login page.
                .loginProcessingUrl("/j_spring_security_check") // Submit URL
                .loginPage("/login")//
                .defaultSuccessUrl("/userInfo")//
                .failureUrl("/login?error=true")//
                .usernameParameter("username")//
                .passwordParameter("password")
                // Config for Logout Page
                .and().logout().logoutUrl("/logout").logoutSuccessUrl("/logoutSuccessful");
 
    }
}
*/