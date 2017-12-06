<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    

    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
    <meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no" />
    <title>此处就是显示的标题</title>
    <script src="js/mui.min.js"></script>
    <link href="css/mui.min.css" rel="stylesheet"/>
    <link href="css/tab-personal.css" rel="stylesheet" />
    <script type="text/javascript" charset="UTF-8">
        mui.init();
    </script>
    <script type="text/javascript" src="js/jquery-2.1.0.js"></script>
    <script type="text/javascript" src="js/tab-personal.js"></script>
  </head>
  
  <body>
   
   	<script type="text/javascript">
		mui.init();
		
		mui('body').on('tap','a',function(){
			window.top.location.href=this.href;
		});
	</script>
	
	<!--带侧滑菜单的框架-->
	<div class="mui-off-canvas-wrap mui-draggable">
	  	<!-- 菜单容器 -->
	  	<aside class="mui-off-canvas-left">
	    <div class="mui-scroll-wrapper">
	       	<div id="sideBar" class="mui-scroll">
		        <!-- 菜单具体展示内容 -->
		        <span id="sideBar_title">行业选择</span>
		        <ul id="sideBar_list" class="mui-table-view">
					<li class="mui-table-view-cell">
				        <a class="mui-navigate-right">热点关注</a>
				    </li>
				    <li class="mui-table-view-cell">
				        <a class="mui-navigate-right">机械化工</a>
				    </li>
				    <li class="mui-table-view-cell">
				        <a class="mui-navigate-right">交通汽车</a>
				    </li>
				    <li class="mui-table-view-cell">
				        <a class="mui-navigate-right">房产建材</a>
				    </li>
				    <li class="mui-table-view-cell">
				        <a class="mui-navigate-right">服装纺织</a>
				    </li>
				    <li class="mui-table-view-cell">
				        <a class="mui-navigate-right">IT互联网</a>
				    </li>
				    <li class="mui-table-view-cell">
				        <a class="mui-navigate-right">文化传媒</a>
				    </li>
				    <li class="mui-table-view-cell">
				        <a class="mui-navigate-right">医疗保健</a>
				    </li>
				    <li class="mui-table-view-cell">
				        <a class="mui-navigate-right">食品酒水</a>
				    </li>
				</ul>
	        </div>
	    </div>
	  	</aside>
	  	
		<!-- 主页面容器 -->
		<div class="mui-inner-wrap">
		    <!-- 头部（从左到右：侧滑按钮、标题、搜索框）-->
		    <header id="head" class="mui-bar mui-bar-nav">
		      	<a class="mui-icon mui-action-menu mui-icon-bars mui-pull-left"></a>
		      	<h1 id="head_title" class="mui-title">个人主页</h1>
		    </header>

			<!--正文部分-->
		    <div class="mui-content mui-scroll-wrapper">
			<div class="mui-scroll">
				<!--个人信息卡片视图-->
				<div class="mui-card">
					<!--页眉，放置标题-->
					<div class="mui-card-header">
						用户A
					</div>
					
					<!--内容区-->
					<div class="mui-card-content">
						<img src="images/background.png" />
					</div>
				</div>
				
				<!--操作列表-->
				<div id="operation">
					<ul class="mui-table-view">
						<li class="mui-table-view-cell">
					        <a class="mui-navigate-right" href="login.html">登录/注册</a>
					    </li>
					    <li class="mui-table-view-cell">
					        <a class="mui-navigate-right" href="passwordChange.html">密码修改</a>
					    </li>
					    <li class="mui-table-view-cell">
					        <a class="mui-navigate-right" href="consult.html">我要咨询</a>
					    </li>
					    <li class="mui-table-view-cell">
					        <a class="mui-navigate-right" href="myFocus.html">我的关注</a>
					    </li>
					</ul>
				</div>
			

   			</div>
			</div>
		</div>
	</div>
   
  </body>
</html>
