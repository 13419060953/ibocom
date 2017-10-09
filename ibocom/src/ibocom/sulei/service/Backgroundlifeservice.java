package ibocom.sulei.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import ibocom.sulei.bean.articles;
import ibocom.sulei.bean.articlesClass;
//回忆往昔的管理业务层
import ibocom.sulei.dao.Backgroundlifedao;
import page.fenye;
@Service("backgroundlifeservice")
public class Backgroundlifeservice implements BackgroundlideserviceImpi{
     @Resource(name="backgroundlifedao")
	Backgroundlifedao backgroundlifedao;
   //得到回忆往昔的所有文章信息
	@Override
	public fenye selectclasslife(int index, int size, int classid) {
		// TODO 自动生成的方法存根
		fenye fenye=new fenye();
	
		int count=backgroundlifedao.selectsize();//得到总记录数
		fenye.setCount(count);
	 int pagesize=count%size==0? count/size:count/size+1;//得到多少页
	  fenye.setSize(pagesize);
	  
	  index=index>=pagesize? pagesize:index;
	  
	  if(pagesize==0){
		index=1;  
	  }
	  if(index<=0){
		  index=1;
	  }
	  
	  //得到上一页
	  fenye.setIndex(index);
	  int indexleft=index<=1? 1:index-1;
	  fenye.setIndexleft(indexleft);
	  int indexreight=index>=pagesize? pagesize:index+1;
	  fenye.setIndexreight(indexreight);
	  fenye.setList(backgroundlifedao.selectlist((index-1)*5,size, classid));
	  //得到数据
	  
	 
		
		
		
		return fenye;
	}
	@Override//为回忆往昔增加文章方法
	public void insertlife(articles articles) {
		// TODO 自动生成的方法存根
		backgroundlifedao.insertlife(articles);
		
	}
	
	@Override//根据文章id  删除文章
	public void delelife(int id) {
		// TODO 自动生成的方法存根
		backgroundlifedao.delelife(id);
		
	}
	@Override//根据 ID 找文章 life 信息
	public articles selelife(int id) {
		// TODO 自动生成的方法存根
		return backgroundlifedao.selelife(id);
	}
	 
	
	

	
	
	
}
