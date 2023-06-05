package la.pojo;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
@Entity
public class SubjectTeacher {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int stid;
	private String subject;
	private String teacher;
	private String stclass;
	
	
	public String getStclass() {
		return stclass;
	}
	public void setStclass(String stclass) {
		this.stclass = stclass;
	}
	public int getStid() {
		return stid;
	}
	public void setStid(int stid) {
		this.stid = stid;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public String getTeacher() {
		return teacher;
	}
	public void setTeacher(String teacher) {
		this.teacher = teacher;
	}
	
	

}
