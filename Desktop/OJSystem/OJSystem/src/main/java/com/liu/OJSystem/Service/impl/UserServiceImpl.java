package com.liu.OJSystem.Service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.liu.OJSystem.Dao.IUserDao;
import com.liu.OJSystem.Service.IUserService;
import com.liu.OJSystem.pojo.User;

@Service
public class UserServiceImpl implements IUserService {

	@Autowired
	private IUserDao ud;
	
	@Override
	public User queryUser(String  account) {
		
		
		return ud.queryUser(account);
	}

}
