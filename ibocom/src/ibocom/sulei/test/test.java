package ibocom.sulei.test;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.junit.Test;

import com.alibaba.fastjson.JSON;

import ibocom.sulei.bean.user;

public class test {
	@Test
	public void testone(){
	user user=new user(1,"211231","534343",new Date());	
	String json=JSON.toJSONString(user);
	System.out.println(json);
	user user1=JSON.parseObject(json, user.getClass());
	System.out.println(user1);
	List<user> list=new ArrayList<user>();
	list.add(user);
	list.add(user1);
	String stringlist=JSON.toJSONString(list);
	System.out.println(stringlist);
	}

}
