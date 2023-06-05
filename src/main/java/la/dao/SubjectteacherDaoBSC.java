package la.dao; 

import java.util.List;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.query.Query;
import la.dbconfig.DbUtil;
import la.pojo.SubjectTeacher;
import la.pojo.subjectteacherbsc;

public class SubjectteacherDaoBSC {
	public int addstc(subjectteacherbsc subjectteacherc) {
		DbUtil dbconn = new DbUtil();
		Session session = dbconn.dbConn();
		Transaction tran = session.beginTransaction();
		
		subjectteacherbsc st = new subjectteacherbsc();
		st.setSubjectc(subjectteacherc.getSubjectc());
		st.setTeacherc(subjectteacherc.getTeacherc());
		st.setStclassc("BSC");
		
		int value = (Integer) session.save(st);
		tran.commit();
		session.close();
		return value;	
	}
	public List<subjectteacherbsc> display(){
		DbUtil dbconn = new DbUtil();
		Session session = dbconn.dbConn();
		Transaction tran = session.beginTransaction();
		Query query=session.createQuery("from subjectteacherbsc");
		
		List<subjectteacherbsc> list = query.list();
		tran.commit();
		session.close();
		return list;
	}
	public int delete(subjectteacherbsc subjectteacherc) {
		DbUtil dbconn = new DbUtil();
		Session session = dbconn.dbConn();
		Transaction tran = session.beginTransaction();
		
		Query query=session.createQuery("delete from subjectteacherbsc where stidc=:no");
		subjectteacherbsc delete = new subjectteacherbsc();
		delete.setStidc(subjectteacherc.getStidc());
		query.setParameter("no",delete.getStidc());
		
		int delete1 = query.executeUpdate();
		tran.commit();
		session.close();
		return delete1;
		
		
	}
}
