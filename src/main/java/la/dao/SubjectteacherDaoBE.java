package la.dao; 

import java.util.List;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.query.Query;
import la.dbconfig.DbUtil;
import la.pojo.SubjectTeacher;

public class SubjectteacherDaoBE {
	public int addst(SubjectTeacher subjectteacher) {
		DbUtil dbconn = new DbUtil();
		Session session = dbconn.dbConn();
		Transaction tran = session.beginTransaction();
		
		SubjectTeacher st = new SubjectTeacher();
		st.setSubject(subjectteacher.getSubject());
		st.setTeacher(subjectteacher.getTeacher());
		st.setStclass("BE");
		
		int value = (Integer) session.save(st);
		tran.commit();
		session.close();
		return value;	
	}
	public List<SubjectTeacher> display(){
		DbUtil dbconn = new DbUtil();
		Session session = dbconn.dbConn();
		Transaction tran = session.beginTransaction();
		Query query=session.createQuery("from SubjectTeacher");
		
		List<SubjectTeacher> list = query.list();
		tran.commit();
		session.close();
		return list;
	}
	public int delete(SubjectTeacher subjectteacher) {
		DbUtil dbconn = new DbUtil();
		Session session = dbconn.dbConn();
		Transaction tran = session.beginTransaction();
		
		Query query=session.createQuery("delete from SubjectTeacher where stid=:no");
		SubjectTeacher delete = new SubjectTeacher();
		delete.setStid(subjectteacher.getStid());
		query.setParameter("no",delete.getStid());
		
		int delete1 = query.executeUpdate();
		tran.commit();
		session.close();
		return delete1;
		
		
	}
}
