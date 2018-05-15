package com.clickmyjobs.portal.service;

import org.springframework.stereotype.Service;

import com.clickmyjobs.portal.persist.entity.User;
import com.clickmyjobs.portal.service.dto.UserDto;

@Service
public class UserServiceImpl extends GenericServiceImpl<User, UserDto, Long> implements UserService {


}
