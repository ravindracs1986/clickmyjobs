package com.clickmyjobs.portal.validators;

import java.util.regex.Pattern;

import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import com.clickmyjobs.portal.service.dto.UserFormDto;

@Component
public class UserFormValidator implements Validator{

	@Override
	   public boolean supports(Class<?> clazz) {
	      return UserFormDto.class.equals(clazz);
	   }

	   @Override
	   public void validate(Object obj, Errors err) {
		   UserFormDto user = (UserFormDto) obj;
	      ValidationUtils.rejectIfEmpty(err, "name", "user.name.empty");
	      ValidationUtils.rejectIfEmpty(err, "email", "user.email.empty");
	      ValidationUtils.rejectIfEmpty(err, "phone", "user.phone.empty");
	      ValidationUtils.rejectIfEmpty(err, "password", "user.password.empty");
	      ValidationUtils.rejectIfEmpty(err, "cpassword", "user.cpassword.empty");
	      //ValidationUtils.rejectIfEmpty(err, "country", "user.country.empty");
	      //ValidationUtils.rejectIfEmpty(err, "userType", "user.userType.empty");

	      

	      Pattern pattern = Pattern.compile("^[A-Z0-9._%+-]+@[A-Z0-9.-]+\\.[A-Z]{2,6}$",
	            Pattern.CASE_INSENSITIVE);
	      if (user.getEmail()!=null && !(pattern.matcher(user.getEmail()).matches())) {
	         err.rejectValue("email", "user.email.invalid");
	      }
	      
	      if (user.getCountry()!=null && user.getCountry().equalsIgnoreCase("NA")) {
		         err.rejectValue("country", "user.country.empty");
		      }
	      if (user.getUserType()!=null && user.getUserType().equalsIgnoreCase("NA")) {
		         err.rejectValue("userType", "user.userType.empty");
		      }
	      
	      if ( user.getPassword()!=null && user.getCpassword()!=null && !user.getPassword().equalsIgnoreCase(user.getCpassword())) {
		         err.rejectValue("password", "user.password.mismatch");
		      }

	   }
	
	
}
