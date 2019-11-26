package com.ak.backend.dao;

import com.ak.backend.dto.User;

public interface UserDAO {

	//add an User
		boolean addUser(User user);
		User getByEmail(String email);
}
