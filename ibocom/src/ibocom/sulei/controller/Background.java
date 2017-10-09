package ibocom.sulei.controller;

import java.io.File;
import java.io.IOException;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import ibocom.sulei.bean.articles;
import ibocom.sulei.service.BackgroundlideserviceImpi;
import page.fenye;

@Controller//������������ͻ����������� ���µĹ������
public class Background {
	@Resource(name="backgroundlifeservice")
	BackgroundlideserviceImpi backgroundlideservice;
    @RequestMapping("/background-life")
	public String Backgroundlife(Model model,String index){
    	int i=Integer.parseInt(index);
    	
    	int size=5;
    	int classid=6;
    	fenye f=backgroundlideservice.selectclasslife(i, size, classid);
    	
		//System.out.println(backgroundlideservice.selectclasslife());
		//model.addAttribute("life", backgroundlideservice.selectclasslife());
		System.out.println(f);
		model.addAttribute("fenye", f);
		return "background-life";
	}
    //����������µ�ҳ��
    @RequestMapping("/background-addarticles")
    public String addarticles(){
    	
    	return "background-life-addarticles";
    }
    
    //��������ͼ�ϴ�
    @ResponseBody
    @RequestMapping(value="/addfile")
    public Map file(@RequestParam(value="file",required=false)MultipartFile file,HttpServletRequest request,HttpServletResponse response){
    	//��ȡ��Ŀ·��
    	response.setContentType("text/javascript;charset=utf-8");
    	response.setCharacterEncoding("utf-8");
    //	String path=request.getSession().getServletContext().getRealPath("/file");
    	
    	String newfilename=file.getOriginalFilename().substring(file.getOriginalFilename().lastIndexOf("."));
    	newfilename=UUID.randomUUID().toString()+newfilename;//new Date().toString()+newfilename;
    	System.out.println(newfilename);
//    	File fileone=new File(newfilename);
    	
    	//fileone.renameTo(dest)
    	
    	File newfile=new File("G:/nginx-1.9.3/html/file"+"/"+newfilename);
    	
    	
    	
    	try {
    		file.transferTo(newfile);
    	} catch (IllegalStateException | IOException e) {
    		// TODO �Զ����ɵ� catch ��
    		e.printStackTrace();
    	}
    	System.out.println("file.do"+file.getOriginalFilename());
    	String getpath="/file/"+newfilename;
    	System.out.println(getpath);
   
    	String getpath2=getpath.substring(1);
    	Map m=new HashMap<String,String>();
    	m.put("img", getpath);
    	return m;
    }
    
    //������������ �ύ ��̨
    @ResponseBody
    @RequestMapping("/addlife")
    public String addlife(articles art){
    	System.out.println(art);
    	art.setArticlestime(new Date());
    	backgroundlideservice.insertlife(art);
    	return "";
    }
    //ɾ��������������
    @ResponseBody
    @RequestMapping("/delelife")
    public void delelife(String index,String id){
    	int sid=Integer.parseInt(id);
    	
    	backgroundlideservice.delelife(sid);
    }
    @ResponseBody
    @RequestMapping("/selebody")
    public articles selelife(String id){
    	int sid=Integer.parseInt(id);
    	
    return backgroundlideservice.selelife(sid);
    }
    
    @RequestMapping("/life-update")
    public String updatelife(String id,Model model){
    	int sid=Integer.parseInt(id);
    articles a=backgroundlideservice.selelife(sid);
    
    model.addAttribute("life", a);
    return "background-update-life";
    }
    
}
