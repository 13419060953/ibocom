package ibocom.sulei.bean;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class articles {
  private int id;
  private String articlesimg;//����չʾͼ
  private String articleshead;//���±���
  private String articlesbody;//��������
  @DateTimeFormat(pattern="yyyy-MM-dd HH:mm:ss")
  private Date articlestime;//��������ʱ��
  private int articleseay;//���������
  private int classid;//���������ķ���
  private String articlesuser;//����
  
  
public articles() {
	super();
}
@Override
public String toString() {
	return "articles [id=" + id + ", articlesimg=" + articlesimg + ", articleshead=" + articleshead + ", articlesbody="
			+ articlesbody + ", articlestime=" + articlestime + ", articleseay=" + articleseay + ", classid=" + classid
			+ ", articlesuser=" + articlesuser + "]";
}
public articles(int id, String articlesimg, String articleshead, String articlesbody, Date articlestime,
		int articleseay, int classid, String articlesuser) {
	super();
	this.id = id;
	this.articlesimg = articlesimg;
	this.articleshead = articleshead;
	this.articlesbody = articlesbody;
	this.articlestime = articlestime;
	this.articleseay = articleseay;
	this.classid = classid;
	this.articlesuser = articlesuser;
}
public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public String getArticlesimg() {
	return articlesimg;
}
public void setArticlesimg(String articlesimg) {
	this.articlesimg = articlesimg;
}
public String getArticleshead() {
	return articleshead;
}
public void setArticleshead(String articleshead) {
	this.articleshead = articleshead;
}
public String getArticlesbody() {
	return articlesbody;
}
public void setArticlesbody(String articlesbody) {
	this.articlesbody = articlesbody;
}
public Date getArticlestime() {
	return articlestime;
}
public void setArticlestime(Date articlestime) {
	this.articlestime = articlestime;
}
public int getArticleseay() {
	return articleseay;
}
public void setArticleseay(int articleseay) {
	this.articleseay = articleseay;
}
public int getClassid() {
	return classid;
}
public void setClassid(int classid) {
	this.classid = classid;
}
public String getArticlesuser() {
	return articlesuser;
}
public void setArticlesuser(String articlesuser) {
	this.articlesuser = articlesuser;
}
  
}
