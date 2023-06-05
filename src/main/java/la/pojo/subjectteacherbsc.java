package la.pojo;

import javax.persistence.Entity;

import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
@Entity
public class subjectteacherbsc {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int stidc;
	private String subjectc;
	private String teacherc;
	private String stclassc;
	public int getStidc() {
		return stidc;
	}
	public void setStidc(int stidc) {
		this.stidc = stidc;
	}
	public String getSubjectc() {
		return subjectc;
	}
	public void setSubjectc(String subjectc) {
		this.subjectc = subjectc;
	}
	public String getTeacherc() {
		return teacherc;
	}
	public void setTeacherc(String teacherc) {
		this.teacherc = teacherc;
	}
	public String getStclassc() {
		return stclassc;
	}
	public void setStclassc(String stclassc) {
		this.stclassc = stclassc;
	}
	
	
	
	
}





