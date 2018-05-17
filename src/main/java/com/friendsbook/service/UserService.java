package com.friendsbook.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.friendsbook.model.Login;
import com.friendsbook.model.User;

@Service
public interface UserService {

	public User validateUser(Login login);

	public void register(User user);

	public List<User> getDetails();

}
