package ibocom.sulei.bean;

import java.util.Date;

import com.fasterxml.jackson.annotation.JsonFormat;

public class user {

	int id;
	String name;
	String password;
	@JsonFormat(pattern="yyyy-MM-dd HH:mm:ss")
	Date datetime;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public Date getDatetime() {
		return datetime;
	}
	public void setDatetime(Date datetime) {
		this.datetime = datetime;
	}
	public user(int id, String name, String password, Date datetime) {
		super();
		this.id = id;
		this.name = name;
		this.password = password;
		this.datetime = datetime;
	}
	public user() {
		super();
	}
	@Override
	public String toString() {
		return "user [id=" + id + ", name=" + name + ", password=" + password + ", datetime=" + datetime + "]";
	}
	
}
