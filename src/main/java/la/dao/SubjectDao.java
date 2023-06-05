package la.dao;

import java.util.List;

import org.hibernate.Session;

import org.hibernate.Transaction;
import org.hibernate.query.Query;

import la.dbconfig.DbUtil;
import la.pojo.Subject;
import la.pojo.Teacher;

public class SubjectDao {
	
	public int addsubject(Subject subject) {
		DbUtil dbutil = new DbUtil();
		Session session = dbutil.dbConn();
		Transaction tran = session.beginTransaction();
		
		Subject sub = new Subject();
		sub.setSubject(subject.getSubject());
		
		int val = (Integer) session.save(sub);
		tran.commit();
		session.close();
		return val;
		
	}
	public List<Subject> display() {
		DbUtil dbutil = new DbUtil();
		Session session = dbutil.dbConn();
		Transaction tran = session.beginTransaction();
		
		Query query = session.createQuery("from Subject");
		List<Subject> list = query.list();
		tran.commit();
		session.close();
		return list;
	}
	public int editsub(Subject subject) {
		DbUtil dbutil = new DbUtil();
		Session session = dbutil.dbConn();
		Transaction tran = session.beginTransaction();
		Query q = session.createQuery("update Subject set subject=:name where sid=:no");
		
		Subject sub = new Subject();
		sub.setSid(subject.getSid());
		sub.setSubject(subject.getSubject());
		
		q.setParameter("name",sub.getSubject());
		q.setParameter("no", sub.getSid());
		
		int edit = q.executeUpdate();
		tran.commit();
		session.close();
		return edit;
	}
	public int delete(Subject subject) {
		DbUtil dbconn = new DbUtil();
		Session session = dbconn.dbConn();
		Transaction tran = session.beginTransaction();
		
		Query query=session.createQuery("delete from Subject where sid=:no");
		Subject delete = new Subject();
		delete.setSid(subject.getSid());
		query.setParameter("no",delete.getSid());
		
		int delete1 = query.executeUpdate();
		tran.commit();
		session.close();
		return delete1;
		
	}

}
