package ibocom.sulei.service;

import java.util.List;

import ibocom.sulei.bean.articles;
import page.fenye;

public interface BackgroundlideserviceImpi {
   //��������ҵ��ӿ�
	public fenye selectclasslife(int index,int size,int classid);
	
	//���������������½ӿ�
	public void insertlife(articles articles);
	//���ݻ������� idɾ�� ����
	public void delelife(int id);
	
	//���� id ���� ����
	public articles selelife(int id);
}
