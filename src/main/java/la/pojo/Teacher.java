package la.pojo;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Teacher {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int tid;
	private String teachername;
	private String teacherdesignation;
	public int getTid() {
		return tid;
	}
	public void setTid(int tid) {
		this.tid = tid;
	}
	public String getTeachername() {
		return teachername;
	}
	public void setTeachername(String teachername) {
		this.teachername = teachername;
	}
	public String getTeacherdesignation() {
		return teacherdesignation;
	}
	public void setTeacherdesignation(String teacherdesignation) {
		this.teacherdesignation = teacherdesignation;
	}
	

}
