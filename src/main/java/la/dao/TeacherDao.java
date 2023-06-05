package la.dao;

import java.util.List;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.query.Query;
import la.dbconfig.DbUtil;
import la.pojo.Teacher;

public class TeacherDao {
	public int addteach(Teacher teacher) {
		DbUtil dbconn = new DbUtil();
		Session session = dbconn.dbConn();
		Transaction tran = session.beginTransaction();
		
		Teacher teach = new Teacher();
		teach.setTeachername(teacher.getTeachername());
		teach.setTeacherdesignation(teacher.getTeacherdesignation());
		
		int value = (Integer) session.save(teach);
		tran.commit();
		session.close();
		return value;	
	}
	
	public List<Teacher> display(){
		DbUtil dbconn = new DbUtil();
		Session session = dbconn.dbConn();
		Transaction tran = session.beginTransaction();
		Query query=session.createQuery("from Teacher");
		
		List<Teacher> list = query.list();
		tran.commit();
		session.close();
		return list;
	}
	public int editteach(Teacher teacher) {
		
		DbUtil dbconn = new DbUtil();
		Session session = dbconn.dbConn();
		Transaction tran = session.beginTransaction();
		
		Query q = session.createQuery("update Teacher set teachername=:tl where tid=:no");
		
		Teacher teach = new Teacher();
		
		teach.setTid(teacher.getTid());
		teach.setTeachername(teacher.getTeachername());
		
		q.setParameter("tl", teach.getTeachername());
		q.setParameter("no", teach.getTid());
		
		int editt = q.executeUpdate();
		tran.commit();
		session.close();
		return editt;	
	}
	
	public int editdesig(Teacher teacher) {
		
		DbUtil dbconn = new DbUtil();
		Session session = dbconn.dbConn();
		Transaction tran = session.beginTransaction();
		
		Query q = session.createQuery("update Teacher set teacherdesignation=:t2 where tid=:no");
		
		Teacher teach = new Teacher();
		
		teach.setTid(teacher.getTid());
		teach.setTeacherdesignation(teacher.getTeacherdesignation());
		
		q.setParameter("t2", teach.getTeacherdesignation());
		q.setParameter("no", teach.getTid());
		
		int editt = q.executeUpdate();
		tran.commit();
		session.close();
		return editt;	
	}
	public int delete(Teacher teacher) {
		DbUtil dbconn = new DbUtil();
		Session session = dbconn.dbConn();
		Transaction tran = session.beginTransaction();
		
		Query query=session.createQuery("delete from Teacher where tid=:no");
		Teacher delete = new Teacher();
		delete.setTid(teacher.getTid());
		query.setParameter("no",delete.getTid());
		
		int delete1 = query.executeUpdate();
		tran.commit();
		session.close();
		return delete1;
		
		
	}
	

}
