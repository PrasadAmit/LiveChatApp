package com.ak.backend.daoimpl;


import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.ak.backend.dao.UserDAO;
import com.ak.backend.dto.User;

@Repository
@Transactional
public class UserDAOImpl implements UserDAO {

	@Autowired
	SessionFactory factory;
	
	@Override
	public boolean addUser(User user) {
		try {
			factory.getCurrentSession().persist(user);
			return true;
		}
		catch(Exception ex) {
			ex.printStackTrace();
		}
		return false;
	}

	@Override
	public User getByEmail(String email) {
		try {
			String selectQuery="FROM User WHERE Email =: email";
	
			return factory.getCurrentSession()
					.createQuery(selectQuery, User.class)
						.setParameter("Email", email)
							.getSingleResult();
		}		catch(Exception ex) {
			ex.printStackTrace();
		}
		return null;
	}

}
