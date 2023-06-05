package la.dao;

import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

import la.dbconfig.DbUtil;
import la.pojo.User;

public class UserDao {
	
	public String adduser(User user) {
		DbUtil dbconn = new DbUtil();
		Session session = dbconn.dbConn();
		Transaction trans = session.beginTransaction();
		User newuser = new User();
		newuser.setUser(user.getUser());
		newuser.setPassword(user.getPassword());
		
		String value = (String) session.save(newuser);
		trans.commit();
		session.close();
		return value;
	}
	
	public User validateuser(User user) {
		DbUtil dbconn = new DbUtil();
		Session session = dbconn.dbConn();
		Transaction trans = session.beginTransaction();
		
		Query query = session.createQuery("from User where user=:user and password=:password");
	
		query.setParameter("user",user.getUser());
		query.setParameter("password", user.getPassword());
		
		User user1 = (User) query.uniqueResult();
		trans.commit();
		session.close();
		return user1;
		
	}

}
