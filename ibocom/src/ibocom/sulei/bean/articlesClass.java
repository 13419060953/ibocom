package ibocom.sulei.bean;

import java.util.Date;
import java.util.List;

import org.springframework.format.annotation.DateTimeFormat;

public class articlesClass {
      
	private int id;
	private String classname;
	@DateTimeFormat(pattern="yyyy-MM-dd HH:mm:ss")
	private Date indate;
	
	public List<articles> getArticles() {
		return articles;
	}
	public void setArticles(List<articles> articles) {
		this.articles = articles;
	}
	private List<articles> articles;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getClassname() {
		return classname;
	}
	public void setClassname(String classname) {
		this.classname = classname;
	}
	public Date getIndate() {
		return indate;
	}
	public void setIndate(Date indate) {
		this.indate = indate;
	}
	public articlesClass(int id, String classname, Date indate) {
		super();
		this.id = id;
		this.classname = classname;
		this.indate = indate;
	}
	public articlesClass() {
		super();
	}
	@Override
	public String toString() {
		return "articlesClass [id=" + id + ", classname=" + classname + ", indate=" + indate + ", articles=" + articles
				+ "]";
	}
	
	
	
	
}
