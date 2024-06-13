package com.neo.dao;

import java.util.List;

import com.neo.domain.UserTable;

public interface UserDao {
	
	List<UserTable> getAll();

	UserTable getOne(Long id);

    void insert(UserTable user);

    void update(UserTable user);

    void delete(Long id);

	UserTable getUserByName(String user_name);
	
	
}
