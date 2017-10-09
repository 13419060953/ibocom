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
	<script type="text/javascript" src="http://v2.uyan.cc/code/uyan.js?uid=2145921"></script>
			
			<title>个人博客管理后台</title>
</head>
<script type="text/javascript">

</script>
<body>
<div class="container">
   <!-- 轮播图 -->
   <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
  <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
    <li data-target="#carousel-example-generic" data-slide-to="1"></li>
    <li data-target="#carousel-example-generic" data-slide-to="2"></li>
  </ol>

  <!-- Wrapper for slides -->
  <div class="carousel-inner" role="listbox">
    <div class="item active">
      <img style="width:100%;height:200px;" src="/imgfile/1.jpg" alt="...">
      <div class="carousel-caption">
        ...
      </div>
      
    </div>
    <div class="item">
      <img style="width:100%;height:200px;" src="/imgfile/2.jpg" alt="...">
      <div class="carousel-caption">
        ...
      </div>
    </div>
   
    <div class="item">
      <img style="width:100%;height:200px;" src="/imgfile/5.jpg" alt="...">
      <div class="carousel-caption">
        ...
      </div>
    </div>
  </div>

  <!-- Controls -->
  <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>

<div class="jumbotron">
  <div class="container">
  <h1>博客管理后台</h1>
 <p> 
  <div>
 <div style="float:left"> <p>回忆往昔</p>
  <p><a class="btn btn-primary btn-lg" href="background-life?index=1" role="button">NEXT</a></p></div>
  
  <div style="margin-left:200px;float:left"> <p>技术分享</p>
  <p><a class="btn btn-primary btn-lg" href="#" role="button">NEXT</a></p></div>
  
  <div style="margin-left:200px;float:left"> <p>全部文章</p>
  <p><a class="btn btn-primary btn-lg" href="#" role="button">NEXT</a></p></div>
  
   <div style="margin-left:200px;float:left"> <p>信息维护</p>
  <p><a class="btn btn-primary btn-lg" href="#" role="button">NEXT</a></p></div>
  </div>
  
  </p>
  </div>
</div>

<div id="uyan_frame"></div>


</div>

</body>
</html>