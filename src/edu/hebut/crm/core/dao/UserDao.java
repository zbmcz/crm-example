package edu.hebut.crm.core.dao;

import edu.hebut.crm.core.domain.User;

public interface UserDao {
	
	/**
	 * return null if the user not exists.
	 * @return
	 */
	User findByUsername(User user);
	
}
