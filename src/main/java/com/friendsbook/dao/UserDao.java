package com.friendsbook.dao;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import com.friendsbook.model.Login;
import com.friendsbook.model.User;

public interface UserDao {
	void register(User user) throws IOException, SQLException;

	User validateUser(Login login);

	List<User> getDetails();
}
