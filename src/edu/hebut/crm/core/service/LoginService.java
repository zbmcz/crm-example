package edu.hebut.crm.core.service;

import edu.hebut.crm.core.domain.User;

public interface LoginService {
	
	/**
	 * return null if login failed.
	 * @return
	 */
	User login(User user);
	
}
