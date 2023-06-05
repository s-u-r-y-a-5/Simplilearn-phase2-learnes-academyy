package la.dao;

import java.util.List;


import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.query.Query;
import la.pojo.Classs;
import la.dbconfig.DbUtil;


public class ClassDao {
	
	public int addclass(Classs classs) {
		DbUtil dbconn = new DbUtil();
		Session session = dbconn.dbConn();
		Transaction tran = session.beginTransaction();
		
		Classs newclass = new Classs();
		newclass.setClasss(classs.getClasss());
		
		int value = (Integer) session.save(newclass);
		tran.commit();
		session.close();
		return value;
	}
	public List<Classs> display(){
		DbUtil dbconn = new DbUtil();
		Session session = dbconn.dbConn();
		Transaction tran = session.beginTransaction();
		
		Query query=session.createQuery("from Classs");
		List<Classs> list = query.list();
		tran.commit();
		session.close();
		return list;
		
	}
	public int assignts(Classs classs) {
		DbUtil dbconn = new DbUtil();
		Session session = dbconn.dbConn();
		Transaction tran = session.beginTransaction();
		
		Classs assigntesub = new Classs();
		assigntesub.setTeacher(classs.getTeacher());
		assigntesub.setSubject(classs.getSubject());
		
		int value = (Integer) session.save(assigntesub);
		tran.commit();
		session.close();
		return value;
		
	}
		public int editclass(Classs classs) {
		
		DbUtil dbconn = new DbUtil();
		Session session = dbconn.dbConn();
		Transaction tran = session.beginTransaction();
		
		Query q = session.createQuery("update Classs set classs=:cl where cid=:no");
		
		Classs teach = new Classs();
		
		teach.setCid(classs.getCid());
		teach.setClasss(classs.getClasss());
		
		q.setParameter("cl", teach.getClasss());
		q.setParameter("no", teach.getCid());
		
		int editt = q.executeUpdate();
		tran.commit();
		session.close();
		return editt;	
	}
		public int delete(Classs classs) {
		
		DbUtil dbconn = new DbUtil();
		Session session = dbconn.dbConn();
		Transaction tran = session.beginTransaction();
		Query q = session.createQuery("delete from Classs Where cid=:no");
		
		Classs delete = new Classs();
	    delete.setCid(classs.getCid());
	    
	    q.setParameter("no", delete.getCid());
	    
	    int delete1 = q.executeUpdate();
	    
		tran.commit();
		session.close();
		return delete1;
		}
		
		public Classs validateclass(Classs classs) {
			DbUtil dbconn = new DbUtil();
			Session session = dbconn.dbConn();
			Transaction trans = session.beginTransaction();
			
			Query query = session.createQuery("from Classs where classs=:cl");
		
			query.setParameter("cl",classs.getClasss());
			
			Classs user1 = (Classs) query.uniqueResult();
			trans.commit();
			session.close();
			return user1;
			
		}
	}
		
