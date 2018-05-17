package com.friendsbook.service;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.friendsbook.dao.UserDao;
import com.friendsbook.model.Login;
import com.friendsbook.model.User;

public class UserServiceImpl implements UserService {

	@Autowired
	public UserDao userDao;

	@Override
	public User validateUser(Login login) {
		return userDao.validateUser(login);
	}

	@Override
	public void register(User user) {
		try {
			userDao.register(user);
		} catch (IOException e) {
			
			e.printStackTrace();
		} catch (SQLException e) {
		
			e.printStackTrace();
		}
	}

	@Override
	public List<User> getDetails() {
		return userDao.getDetails();
	}

}
