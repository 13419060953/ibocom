package ibocom.sulei.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import ibocom.sulei.bean.articles;
import ibocom.sulei.bean.articlesClass;
@Repository("backgroundlifedao")
public interface Backgroundlifedao {

	//��ȡ��������������������Ϣ1
	//public articlesClass selectlife();
	//1��List�ֲ���ѯ
	public List<articles> selectlist(@Param("index")int index,@Param("size")int size,@Param("classid")int classid);

	//�õ��ܵļ�¼��
	public int selectsize();
	
	////Ϊ���������������·���
	public void insertlife(articles articles);
	
	//��������id ɾ��  ����
	public void delelife(int id);
	
	//����id ����������Ϣ
	
	public articles selelife(int id);

}
