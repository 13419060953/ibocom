package ibocom.sulei.service;

import java.util.List;

import ibocom.sulei.bean.articles;
import page.fenye;

public interface BackgroundlideserviceImpi {
   //回忆往昔业务接口
	public fenye selectclasslife(int index,int size,int classid);
	
	//回忆往昔增加文章接口
	public void insertlife(articles articles);
	//根据回忆往昔 id删除 文章
	public void delelife(int id);
	
	//根据 id 查找 文章
	public articles selelife(int id);
}
