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
		
</head>
<title>回忆往昔文章管理页面</title>
</head>
<style>
tr td{
text-align: center;
vertical-align: middle;

}
</style>
<script type="text/javascript">
function delelife(index,id){
	//$("#mymodel").
	$("#mymodel").modal("show");
	
	//alert(index+""+id);
	$("#deletelife").bind('click',function(){
		//del(ndex,id);
		//alert()
		del(index,id)
		})
		
	
	
}


function del(index,id){

	var fromdata=new FormData();
	fromdata.append('index',index);
	fromdata.append('id',id);
	//alert(index+""+id)
	$.ajax({
		type:'post',
		url:'delelife',
		data:fromdata,
		 processData : false,
		  scriptCharset:'utf-8',
		   contentType : false,
		success:function(data){
		//	$("#mymodel").modal("show");
	//	alert();
			window.location.href="background-life?index="+index;
			
		}
		
	})
	}
	function bodyshow(id){
	//	alert(id)
		$.ajax({
			
			type:'post',
			url:'selebody',
			data:'id='+id,
			success:function(data){
				$("#selemymodel").modal("show");
				$(".modal-body").empty();
				$(".modal-body").append(data.articlesbody);
			}
		})
	}
	

	function stop(){
		$("#selemymodel").modal("hide");
	}
	function update(id){
		alert(id);
		
	}
	</script>
<body style="background-color: #B3B3B3;">
<div class="container">
<div style="width:100%;height:60px;">
<div style="width:300px;height:40px;background-color:;margin-left:70%;margin-top:20px">
<a href="background-addarticles"><button type="button" class="btn btn-primary">增加文章</button></a>
<a href='main'><button type="button" class="btn btn-primary">返回首页</button></a>
  </div>
</div>


<div style="width:100%;height:400px">

<table class="table table-hover table-bordered table-condensed" style="text-align: center;">
 <thead><tr><td>ID</td><td>文章展示图</td><td>文章标题</td><td>文章内容</td><td>添加时间</td><td>点赞数</td><td>所属类</td><td>作者</td><td>操作</td></tr></thead>

<c:forEach items="${fenye.list}" var="life">
<tr><td>${life.id}</td><td><img alt="" style="width:70px;height:50px" src="${life.articlesimg}"/></td><td>${life.articleshead}</td><td><button class="btn" onclick='bodyshow(${life.id})' >点击查看详细内容</button></td><td><fmt:formatDate value="${life.articlestime }" pattern="yyyy-MM-dd"/></td><td>${life.articleseay }</td><td>${life.classid }</td><td>${life.articlesuser }</td><td><a href="life-update?id=${life.id}"><button type="button"  class="btn btn-primary">编辑</button></a><button type="button" class="btn btn-danger"  onclick="delelife(${fenye.index},${life.id})">删除</button></td></tr>

</c:forEach>
</table>
</div>

<div style="background-color:;margin-left:500px;width:50%">
共${fenye.size}页-当前第${fenye.index}-共有${fenye.count }条数据
  <nav aria-label="Page navigation">
  <ul class="pagination">
    <li>
      <a href="background-life?index=${fenye.indexleft}" aria-label="Previous">
        <span aria-hidden="true">&laquo;</span>
      </a>
    </li>
    <li><a href="#">1</a></li>
    <li><a href="#">2</a></li>
    <li><a href="#">3</a></li>
    <li><a href="#">4</a></li>
    <li><a href="#">5</a></li>
    <li>
      <a href="background-life?index=${fenye.indexreight}" aria-label="Next">
        <span aria-hidden="true">&raquo;</span>
      </a>
    </li>
  </ul>
</nav>
</div>

<!-- 删除确认模态框 -->
<div class="container">
<div class="modal fade" id="mymodel" tabindex="-1" role="dialog">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title">删除文章</h4>
      </div>
      <div class="modal-body dd">
        <p>是否确认删除&hellip;</p>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
        <button type="button" id="deletelife" class="btn btn-primary">确认</button>
      </div></div></div></div>
      
      <!-- 文章主体模态框 -->
     
<div class="modal fade" id="selemymodel" tabindex="-1" role="dialog" width=75%>
  <div class="modal-dialog" role="document">
    <div class="modal-content">
     <div class="row">
      <div class="col-md-12 col-lg-12">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title">文章内容</h4>
      </div>
     </div>
       <div class="col-md-12 col-lg-12">
      <div class="modal-body">
       
      </div></div>
        <div class="col-md-12 col-lg-12">
      <div class="modal-footer">
      
        <button type="button" id="selectelife" onclick="stop()" class="btn btn-primary stop">关闭</button>
        
      </div></div>
      </div>
      </div></div></div>
      </div>
      
      </div>
</body>
</html>