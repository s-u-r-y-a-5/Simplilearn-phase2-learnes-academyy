package la.pojo;

import javax.persistence.Entity;

import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
@Entity
public class subjectteacherbba {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int stid;
	private String subjectb;
	private String teacherb;
	private String stclassb;
	public int getStid() {
		return stid;
	}
	public void setStid(int stid) {
		this.stid = stid;
	}
	public String getSubjectb() {
		return subjectb;
	}
	public void setSubjectb(String subjectb) {
		this.subjectb = subjectb;
	}
	public String getTeacherb() {
		return teacherb;
	}
	public void setTeacherb(String teacherb) {
		this.teacherb = teacherb;
	}
	public String getStclassb() {
		return stclassb;
	}
	public void setStclassb(String stclassb) {
		this.stclassb = stclassb;
	}
	
	
	
}





