package com.clickmyjobs.portal.validators;

import java.util.regex.Pattern;

import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import com.clickmyjobs.portal.service.dto.UserFormDto;
import com.clickmyjobs.portal.service.dto.UserLoginDto;

@Component
public class LoginFormValidator implements Validator{

	@Override
	   public boolean supports(Class<?> clazz) {
	      return UserLoginDto.class.equals(clazz);
	   }

	   @Override
	   public void validate(Object obj, Errors err) {
		   UserLoginDto user = (UserLoginDto) obj;
	      
	      ValidationUtils.rejectIfEmpty(err, "email", "user.email.empty");
	      ValidationUtils.rejectIfEmpty(err, "password", "user.password.empty");
	      
	      Pattern pattern = Pattern.compile("^[A-Z0-9._%+-]+@[A-Z0-9.-]+\\.[A-Z]{2,6}$",
	            Pattern.CASE_INSENSITIVE);
	      if (user.getEmail()!=null && !(pattern.matcher(user.getEmail()).matches())) {
	         err.rejectValue("email", "user.email.invalid");
	      }
	      
	    

	   }
	
	
}
