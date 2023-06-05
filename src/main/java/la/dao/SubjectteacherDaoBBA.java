package la.dao; 

import java.util.List;


import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.query.Query;
import la.dbconfig.DbUtil;
import la.pojo.subjectteacherbba;

public class SubjectteacherDaoBBA {
	public int addstb(subjectteacherbba subjectteacherb) {
		DbUtil dbconn = new DbUtil();
		Session session = dbconn.dbConn();
		Transaction tran = session.beginTransaction();
		
		subjectteacherbba st = new subjectteacherbba();
		st.setSubjectb(subjectteacherb.getSubjectb());
		st.setTeacherb(subjectteacherb.getTeacherb());
		st.setStclassb("BBA");
		
		int value = (Integer) session.save(st);
		tran.commit();
		session.close();
		return value;	
	}
	public List<subjectteacherbba> display(){
		DbUtil dbconn = new DbUtil();
		Session session = dbconn.dbConn();
		Transaction tran = session.beginTransaction();
		Query query=session.createQuery("from subjectteacherbba");
		
		List<subjectteacherbba> list = query.list();
		tran.commit();
		session.close();
		return list;
	}
	public int delete(subjectteacherbba subjectteacherb) {
		DbUtil dbconn = new DbUtil();
		Session session = dbconn.dbConn();
		Transaction tran = session.beginTransaction();
		
		Query query=session.createQuery("delete from subjectteacherbba where stid=:no");
		subjectteacherbba delete = new subjectteacherbba();
		delete.setStid(subjectteacherb.getStid());
		query.setParameter("no",delete.getStid());
		
		int delete1 = query.executeUpdate();
		tran.commit();
		session.close();
		return delete1;
		
		
	}
}
