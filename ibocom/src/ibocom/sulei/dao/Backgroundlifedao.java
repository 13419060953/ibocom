package ibocom.sulei.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import ibocom.sulei.bean.articles;
import ibocom.sulei.bean.articlesClass;
@Repository("backgroundlifedao")
public interface Backgroundlifedao {

	//获取回忆往昔的所有文章信息1
	//public articlesClass selectlife();
	//1的List分步查询
	public List<articles> selectlist(@Param("index")int index,@Param("size")int size,@Param("classid")int classid);

	//得到总的记录数
	public int selectsize();
	
	////为回忆往昔增加文章方法
	public void insertlife(articles articles);
	
	//更具文章id 删除  文章
	public void delelife(int id);
	
	//根据id 查找文章信息
	
	public articles selelife(int id);

}
