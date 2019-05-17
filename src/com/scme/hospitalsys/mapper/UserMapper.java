package com.scme.hospitalsys.mapper;

import com.scme.hospitalsys.pojo.User;

public interface UserMapper {
	public void addUser(User user) throws Exception;
	
	public User findUser(User user) throws Exception;
}
