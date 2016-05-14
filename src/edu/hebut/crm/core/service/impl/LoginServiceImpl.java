package edu.hebut.crm.core.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import edu.hebut.crm.core.dao.UserDao;
import edu.hebut.crm.core.domain.User;
import edu.hebut.crm.core.service.LoginService;

@Service
public class LoginServiceImpl implements LoginService {

	@Autowired
	private UserDao userDao;

	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}

	@Override
	public User login(User user) {
		if (user == null)
			return user;
		User queryUser = userDao.findByUsername(user);
		if (user.getPassword() != null
				&& queryUser.getPassword().equals(user.getPassword().trim()))
			return queryUser;
		return null;
	}
}
