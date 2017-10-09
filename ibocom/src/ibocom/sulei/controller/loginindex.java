package ibocom.sulei.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import util.getyz;

@Controller

public class loginindex {
	
    @ResponseBody
	@RequestMapping("/getyz")
	public Map getyz(){
		Map map=new HashMap<>();
		getyz yz=new getyz();
		map.put("background", yz.yz());
		map.put("zt", yz.yz());
		map.put("ztcolor", yz.yz());
		return map;
	}
    @RequestMapping("/loginmain")
    public String loginmain(String mname,String mpassword,HttpSession session){
    	if(mname.equals("sulei")&&mpassword.equals("118393"))
    		{session.setAttribute("id", "sulei");
    		    
    			return "redirect:main";
    		}
    	else
    		 return "redirect:indexget";
    	
    	
    	
    }
    
    @RequestMapping("/main")
    public String main(HttpSession session){
    	if(session.getAttribute("id")!="sulei"||"".equals(session.getAttribute("id")))
    			return "redirect:indexget";
    	
    	else
    	return "main";
    }
    
	@RequestMapping("/indexget")
	public String index(){
		return "index";
	}
}
