<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
  <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">

   <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0"/>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
		
	<link rel="stylesheet" type="text/css" href="bootstrap-3.3.7-dist/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="bootstrap-3.3.7-dist/css/font-awesome.min.css">
	
	<script src="bootstrap-3.3.7-dist/js/jquery-1.10.2.min.js"></script>
	<script src="bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
		<script src="bootstrap-3.3.7-dist/js/jquery-ui-1.12.1/jquery-ui.js"></script>
		<link rel="stylesheet" type="text/css" href="bootstrap-3.3.7-dist/js/jquery-ui-1.12.1/jquery-ui.css">
		<script charset="utf-8" src="bootstrap-3.3.7-dist/sunmernote/summernote.min.js"></script>  
<script charset="utf-8" src="bootstrap-3.3.7-dist/sunmernote/lang/summernote-zh-CN.js"></script>  
<link rel="stylesheet" type="text/css" href="bootstrap-3.3.7-dist/sunmernote/summernote.css"></link>  
		
</head>
<title>回忆往昔文章添加页面</title>


</head>

<script type="text/javascript">
function showimg(obj){
	
	var files=$("#exampleInputFile")[0].files[0];
//	alert("ok")
	var formData = new FormData();
	formData.append('file',files);
	$.ajax({
	   url : 'addfile',//后台文件上传接口
	   type : 'POST',
	   data : formData,
	   processData : false,
	  scriptCharset:'utf-8',
	   contentType : false,
	   success : function(data) {
	 //  alert(data.img);
	     
	   //  alert();
	  $("#img").attr("src",data.img)
	   }
	});
	
}
function add(){
	//alert("ok");
	var articlesimg=$("#img").attr("src");
	var articleshead=$("#head").val();
	var articlesbody=$(".summernote").summernote("code");
	var classid=6;
	var articlesuser=$("#user").val();
	var formData = new FormData();
	formData.append('articlesimg',articlesimg);
	formData.append('articleshead',articleshead);
	formData.append('articlesbody',articlesbody);
	formData.append('classid',classid);
	formData.append('articlesuser',articlesuser);
	
	//alert(articlesuser)
	$.ajax({
		type:'post',
		url:'addlife',
		 data : formData,
		   processData : false,
		  scriptCharset:'utf-8',
		   contentType : false,
			/*'articlesimg='+articlesimg+'&articleshead='+articleshead
		+'&articlesbody='+articlesbody+'&classid='+classid+'&articlesuser='+articlesuser,
	*/
	success:function(data){
		$("#img").attr("src","imgfile/2.jpg");
		$("#head").val('');
		
		 $("#user").val('');
		 $(".summernote").summernote("code",'');
		window.location.href="background-life?index=1";
		}		
	})
//	
}
</script>
<body>
<div class="container">
   <div class="row" >
    <div class="col-lg-2"><a href='background-life?index=1'><button type="button" class="btn btn-primary">返回回忆往昔首页</button></a></div>
       <div class="col-md-12 col-lg-8" style="background-color:#77887B">
      
  <div class="form-group">
    <label for="exampleInputEmail1">文章标题</label>
    <input type="text" id="head" class="form-control" id="exampleInputEmail1" name="" placeholder="请输入标题">
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">作者</label>
    <input type="text" id="user" class="form-control" id="exampleInputPassword1" placeholder="请输入作者">
  </div>
  
  <div class="form-group">
    <label for="exampleInputFile">文章展示图</label>
    <input type="file" id="exampleInputFile" onchange="showimg(this)">
   <img src="imgfile/2.jpg" alt="..." style="width:100px;height:100px" id="img" class="img-rounded">

     </div>
     <div class="form-group">
     <div class="summernote"  style=""></div>
       <div style="width:150px;height:30px;background-color:;margin-left:40%"><button onclick="add()" type="button" id="submitone" class="btn btn-primary">提交</button><a href='background-life?index=1'><button type="button" class="btn btn-primary">取消</button></a>
       </div>
  
       </div>
       </div>
    <div class="col-lg-2"></div>
   </div>
</div>

<script type="text/javascript">
$('.summernote').summernote({
	  
    width:750,
callbacks: {


onImageUpload: function(files) {
//上传图片到服务器，使用了formData对象，至于兼容性...据说对低版本IE不太友好
var formData = new FormData();
formData.append('file',files[0]);
$.ajax({
   url : 'addfile',//后台文件上传接口
   type : 'POST',
   data : formData,
   processData : false,
  scriptCharset:'utf-8',
   contentType : false,
   success : function(data) {
   	//alert(data.img);
       $('.summernote').summernote('insertImage',data.img,function($image){
       	
       	$image.css("width","60%");
       	$image.css("height","");
       });0
 // $("#img").attr("src",data.img)
   }
});
}
}
});
</script>
</body>
</html>