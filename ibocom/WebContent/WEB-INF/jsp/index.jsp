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
		
<title>博客管理后台</title>
</head>
<script type="text/javascript">
$(document).ready(function(){
	
	$("#logininfance").modal("show");
	if($("#name").val()==""&&$("#password").val()==""&&$("#yztext").val()=="")
		{
		$(".aa").attr("disabled","disabled");
		}
	//用于登录按钮的禁用以及显示
	$("#name").bind("input propertychange",function(){
		if($("#name").val()!=""&&$("#password").val()!=""&&$("#yztext").val()!=""){
			//alert("d");
			$(".aa").removeAttr("disabled");
		}
		else{
			$(".aa").attr("disabled","disabled");
		}
	})
	
	
	
$("#password").bind("input propertychange",function(){
		if($("#name").val()!=""&&$("#password").val()!=""&&$("#yztext").val()!=""){
			//alert("d");
			$(".aa").removeAttr("disabled");
		}
		else{
			$(".aa").attr("disabled","disabled");
		}
	})
	
	$("#yztext").bind("input propertychange",function(){
		if($("#name").val()!=""&&$("#password").val()!=""&&$("#yztext").val()!=""){
			//alert("d");
			$(".aa").removeAttr("disabled");
		}
		else{
			$(".aa").attr("disabled","disabled");
		}
	})
	
	btnyz();
})

	


function zt(){
	
		//alert($("#name").val());

}
function btnyz(){
	//alert("ok");
	$.ajax({
		type:'post',
		url:'getyz',
		date:'',
		success:function(date){
		//	alert(date.zt);
		$("#yzdiv").css("background-color","#"+date.background);
		$("#yz").html(date.zt);
		$("#yz").css("color","#"+date.ztcolor);
		
		}
	})
}
function formyz(){
	if($("#yztext").val()!=$("#yz").html())
		{
		 alert("验证码不正确");
		 return false;
	
	}
}
</script>
<body style="background-color: #666666">

<div class="modal fade" id="logininfance" data-backdrop=false tabindex="-1" role="dialog" aria-labelledby="myModalLabel" >
  <div class="modal-dialog" role="document" style="width:400px">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"></button>
        <h4 class="modal-title" id="addshiop">登录<span class="glyphicon glyphicon-home" aria-hidden="true"></span></h4>
      </div>
      <div class="modal-body">
       <form action="loginmain" onsubmit="return formyz();"  method="post" enctype="multipart/form-data">
     
 
   
  <div class="form-group">
    <label for="exampleInputPassword1"></label>
    <input name="mname" type="text" onchange="zt()" class="form-control" id="name" placeholder="请输入账号">
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1"></label>
    <input name="mpassword" type="password" class="form-control" id="password" placeholder="请输入密码">
  </div>
  
  <div class="form-group">
 <label for="exampleInputPassword1"></label>
     <input type="text"  placeholder="验证码" id="yztext"   style="width:70%">
     <div id="yzdiv" style="float:right;background-color:#346465;margin-left:0;width:25%;height:30px;text-align: center;">
     <div onclick="btnyz()" style="margin-top: 5px"><font id="yz" style="font-family:fantasy;font-size:6;color:red">adcd</font></div></div>
  </div>
  <div class="modal-footer">
      
        <button type="submit" class="btn btn-primary aa" style="width:100%">登录</button><br><br>
        <button type="button" class="btn btn-primary" style="width:100%">没有账号立即注册？</button>
      </div>
</form>
      </div>
      
    </div>
  </div>

</div>
</body>
</html>