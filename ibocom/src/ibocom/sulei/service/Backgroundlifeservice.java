package ibocom.sulei.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import ibocom.sulei.bean.articles;
import ibocom.sulei.bean.articlesClass;
//���������Ĺ���ҵ���
import ibocom.sulei.dao.Backgroundlifedao;
import page.fenye;
@Service("backgroundlifeservice")
public class Backgroundlifeservice implements BackgroundlideserviceImpi{
     @Resource(name="backgroundlifedao")
	Backgroundlifedao backgroundlifedao;
   //�õ���������������������Ϣ
	@Override
	public fenye selectclasslife(int index, int size, int classid) {
		// TODO �Զ����ɵķ������
		fenye fenye=new fenye();
	
		int count=backgroundlifedao.selectsize();//�õ��ܼ�¼��
		fenye.setCount(count);
	 int pagesize=count%size==0? count/size:count/size+1;//�õ�����ҳ
	  fenye.setSize(pagesize);
	  
	  index=index>=pagesize? pagesize:index;
	  
	  if(pagesize==0){
		index=1;  
	  }
	  if(index<=0){
		  index=1;
	  }
	  
	  //�õ���һҳ
	  fenye.setIndex(index);
	  int indexleft=index<=1? 1:index-1;
	  fenye.setIndexleft(indexleft);
	  int indexreight=index>=pagesize? pagesize:index+1;
	  fenye.setIndexreight(indexreight);
	  fenye.setList(backgroundlifedao.selectlist((index-1)*5,size, classid));
	  //�õ�����
	  
	 
		
		
		
		return fenye;
	}
	@Override//Ϊ���������������·���
	public void insertlife(articles articles) {
		// TODO �Զ����ɵķ������
		backgroundlifedao.insertlife(articles);
		
	}
	
	@Override//��������id  ɾ������
	public void delelife(int id) {
		// TODO �Զ����ɵķ������
		backgroundlifedao.delelife(id);
		
	}
	@Override//���� ID ������ life ��Ϣ
	public articles selelife(int id) {
		// TODO �Զ����ɵķ������
		return backgroundlifedao.selelife(id);
	}
	 
	
	

	
	
	
}
