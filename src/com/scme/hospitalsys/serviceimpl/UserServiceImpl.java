package com.scme.hospitalsys.serviceimpl;

import org.springframework.beans.factory.annotation.Autowired;

import com.scme.hospitalsys.mapper.UserMapper;
import com.scme.hospitalsys.pojo.User;
import com.scme.hospitalsys.service.UserService;

public class UserServiceImpl implements UserService {
	@Autowired
	private UserMapper userMapper;

	@Override
	public User findUser(User user) throws Exception {
		return userMapper.findUser(user);
	}
}
