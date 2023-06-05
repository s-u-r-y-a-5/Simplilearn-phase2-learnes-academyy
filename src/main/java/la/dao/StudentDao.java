package la.dao;

import java.util.List;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

import la.dbconfig.DbUtil;
import la.pojo.Student;

public class StudentDao {
	
	public int addstudent(Student student) {
		DbUtil dbconn = new DbUtil();
		Session session = dbconn.dbConn();
		Transaction tran = session.beginTransaction();
		
		Student newsu = new Student();
		newsu.setFirstname(student.getFirstname());
		newsu.setLastname(student.getLastname());
		newsu.setNumber(student.getNumber());
		newsu.setAddress(student.getAddress());
		newsu.setOrderdate(student.getOrderdate());
		newsu.setSclass(student.getSclass());
		
		
		int value = (Integer) session.save(newsu);
		tran.commit();
		session.close();
		return value;
	}
	
	public List<Student> display(){
		DbUtil dbconn = new DbUtil();
		Session session = dbconn.dbConn();
		Transaction tran = session.beginTransaction();
		Query query=session.createQuery("from Student");
		
		List<Student> list = query.list();
		tran.commit();
		session.close();
		return list;
	}
	public int editfirst(Student student) {
		
		DbUtil dbconn = new DbUtil();
		Session session = dbconn.dbConn();
		Transaction tran = session.beginTransaction();
		
		Query q = session.createQuery("update Student set firstname=:name where sid=:no");
		
		Student edit = new Student();
		
		edit.setSid(student.getSid());
		edit.setFirstname(student.getFirstname());
		
		q.setParameter("name", edit.getFirstname());
		q.setParameter("no", edit.getSid());
		
		int editt = q.executeUpdate();
		tran.commit();
		session.close();
		return editt;
		
	}
public int editlast(Student student) {
		
		DbUtil dbconn = new DbUtil();
		Session session = dbconn.dbConn();
		Transaction tran = session.beginTransaction();
		
		Query q = session.createQuery("update Student set lastname=:name where sid=:no");
		
		Student edit = new Student();
		
		edit.setSid(student.getSid());
		edit.setLastname(student.getLastname());
		
		q.setParameter("name", edit.getLastname());
		q.setParameter("no", edit.getSid());
		
		int editt = q.executeUpdate();
		tran.commit();
		session.close();
		return editt;		
}
public int editadd(Student student) {
	
	DbUtil dbconn = new DbUtil();
	Session session = dbconn.dbConn();
	Transaction tran = session.beginTransaction();
	
	Query q = session.createQuery("update Student set address=:address where sid=:no");
	
	Student edit = new Student();
	
	edit.setSid(student.getSid());
	edit.setAddress(student.getAddress());
	
	q.setParameter("address", edit.getAddress());
	q.setParameter("no", edit.getSid());
	
	int editt = q.executeUpdate();
	tran.commit();
	session.close();
	return editt;	
}
public int editnum(Student student) {
	
	DbUtil dbconn = new DbUtil();
	Session session = dbconn.dbConn();
	Transaction tran = session.beginTransaction();
	
	Query q = session.createQuery("update Student set number=:num where sid=:no");
	
	Student edit = new Student();
	
	edit.setSid(student.getSid());
	edit.setNumber(student.getNumber());
	
	q.setParameter("num", edit.getNumber());
	q.setParameter("no", edit.getSid());
	
	int editt = q.executeUpdate();
	tran.commit();
	session.close();
	return editt;	
}
public int editclass(Student student) {
	
	DbUtil dbconn = new DbUtil();
	Session session = dbconn.dbConn();
	Transaction tran = session.beginTransaction();
	
	Query q = session.createQuery("update Student set sclass=:cl where sid=:no");
	
	Student edit = new Student();
	
	edit.setSid(student.getSid());
	edit.setSclass(student.getSclass());
	
	q.setParameter("cl", edit.getSclass());
	q.setParameter("no", edit.getSid());
	
	int editt = q.executeUpdate();
	tran.commit();
	session.close();
	return editt;	
}
	
	public int delete(Student student) {
		DbUtil dbconn = new DbUtil();
		Session session = dbconn.dbConn();
		Transaction tran = session.beginTransaction();
		
		Query query=session.createQuery("delete from Student where sid=:no");
		Student delete = new Student();
		delete.setSid(student.getSid());
		query.setParameter("no",delete.getSid());
		
		int delete1 = query.executeUpdate();
		tran.commit();
		session.close();
		return delete1;
		
		
	}

}
