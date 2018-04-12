package com.liu.OJSystem.Dao.imp;

import java.util.ArrayList;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.liu.OJSystem.Dao.IUserDao;
import com.liu.OJSystem.pojo.User;
import com.mysql.jdbc.StringUtils;

@Repository
public class UserDaoImpl implements IUserDao{

	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	public User queryUser(String account) {
		
		Session session = sessionFactory.openSession();
		
       StringBuilder hql = new StringBuilder("from User where 1=1 and account = ? ");
		
	
			Query query =  session.createQuery(hql.toString());
			query.setString(0, account);
		 return (User) query.uniqueResult();
	}
 
	
	
}
