package edu.hebut.crm.core.dao.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.stereotype.Repository;

import edu.hebut.crm.core.dao.UserDao;
import edu.hebut.crm.core.domain.User;

@Repository
public class UserDaoImpl implements UserDao {

	@Autowired
	private HibernateTemplate hibernateTemplate;

	public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
		this.hibernateTemplate = hibernateTemplate;
	}

	@Override
	public User findByUsername(User user) {
		List userList = this.hibernateTemplate.find(
				"from User as u where u.username=?", user.getUsername());
		return userList.size() > 0 ? (User) (userList.get(0)) : null;
	}

}
