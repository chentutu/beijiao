<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib  uri="http://java.sun.com/jsp/jstl/functions"  prefix="fn"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>个人主页</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link href="css/personal.css" type="text/css" rel="stylesheet" />
	<script type="text/javascript" src="js/personal.js"></script>
	<script type="text/javascript" src="js/banner1.js"></script>
	<script type="text/javascript" src="js/jquery-1.7.2.min.js"></script>

  </head>
  
  <body>
    	<div class="top">
		<div class="wrap">
			<span class="fl">欢迎您来到<a href="#" title="" target="_blank">新政策网</a></span>
			<span class="fr"><a href="#" title="" target="_blank">请登录</a>&nbsp;&nbsp;<a href="#" title="" target="_blank">立即注册</a></span>
		</div>
	</div>
	<!--top end-->

	<!--header begin-->
	<div class="header">
		<div class="wrap">
			<!-- <a href="#" title="" target="_blank"><img src="images/ad1.jpg" width="1004" height="40" /></a> -->
				<div class="search_box">
					<a href="#" title="" target="_blank"><img src="images/logo.jpg" width="389" height="53"  alt="" class="fl"/></a>  
					<div class="search">
						<div id="lenu1">
							<ul>
								<li class="hover" onmousemove="setTab(1,0)">政策<span>|</span></li>
								<!-- (<li onmousemove="setTab(1,1)">用户<span>|</span></li>) -->
							</ul>
						</div>
					<div class="lain1_box" id="lain1">
						<ul class="block">
							<li><input type="text"  value="请输入政策名称" onFocus="if(this.value=='请输入政策名称'){this.value='';}" onBlur="if(this.value==''){this.value='请输入政策名称';}" class="sertxt" /><a href="search.html"><input type="button" value="搜索" name=""  class="serbtn"/></a></li>
						</ul>
						<ul>
						  <li><input type="text"  value="请输入用户名称" onFocus="if(this.value=='请输入用户名称'){this.value='';}" onBlur="if(this.value==''){this.value='请输入用户名称';}" class="sertxt" /><input type="button" value="搜索" name=""  class="serbtn"/></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
			 
	<div class="nav">
        <div class="wrap"> 
          <ul class="nav_left">
            <li><a href="index.html" title="">首页</a></li>
            <li><a href="#" title="">行业政策</a>
              <ul class="second_nav">
                <li><a href="industry.html">农业</a></li>
                <li><a href="industry2.html">金融业</a></li>
                <li><a href="#">服务业</a></li>
                <li><a href="#">医疗业</a></li>
              </ul>
            </li>
            <li><a href="interpretation.html" title="">政策解读</a></li>
            <li><a href="guide.html" title="">申报指南</a></li>
            <li><a href="#" title="">活动通知</a></li>
            <li><a href="enquire.html" title="">咨询答疑</a></li>
          </ul>
      </div>
	</div>  
	<!--header end-->
    </div>
  <div class="content">
    <div class="list">
			<div class="location">
			
				<span>位置 > 个人主页</span>
			</div>

      <div id="tab">
        <ul id="options">
          <li class="on">个人信息</li>
          <li class="off">您的消息</li>
          <li class="off">咨询回复</li>
        </ul>
        <hr>
        <div id="firstPage" class="show">
            <ul>
              <li>
                  <span>用户名：&nbsp;</span>
                  <span>用户123</span>
                  <input id="changeUsername" type="submit" value="修改用户名" >
              </li>
              <li>
                  <span>密码：&nbsp;&nbsp;</span><span>******</span>
                  <input id="changePassword" type="submit" value="修改密码" >           
              </li>
              <li>
                  <span>关注行业：</span><span>医疗业</span>
                  <input id="changeIndustry" type="submit" value="修改行业">
                  
              </li>
            </ul>
            <script type="text/javascript">
                    $("#changePassword").click(function() {
                      $('#usernameChange').hide();
                      $('#industryChange').hide();
                      $('#passwordChange').show();
                    });
                  </script>
            <script type="text/javascript">
                $("#changeUsername").click(function() {
                  $('#passwordChange').hide();
                  $('#industryChange').hide();
                  $('#usernameChange').show();
                });
              </script>
            <script type="text/javascript">
                    $("#changeIndustry").click(function() {
                      $('#usernameChange').hide();
                      $('#passwordChange').hide();
                      $('#industryChange').show();
                    });
            </script>
            <form id="passwordChange">
            <ul>
              <li>
                <label>原始密码&nbsp;</label>
                <input type="text" size="50px" style="height:25px" placeholder="输入原始密码"
                name="oldPassword" minlength="6" maxlength="12" required>
              </li>
              <li>
                <label>新密码&nbsp;&nbsp;</label>
                <input type="text" size="50px" style="height:25px" placeholder="输入原始密码"
                       name="checkpassword" minlength="6" maxlength="12" required>
              </li>
              <li>
                <label>确认新密码</label>
                <input type="text" size="50px" style="height:25px" name="password"
                minlength="6" maxlength="12" required>
              </li>
              <li>
                <input class="submit" type="submit" value="确认修改" >
              </li>
              </ul>
            </form>

            <form id="usernameChange">
            <ul>
              <li>
                <label>新用户名&nbsp;</label>
                <input type="text" size="50px" style="height:25px" 
                value="请输入新用户名" onFocus="if(this.value=='请输入新用户名'){this.value='';}"
                onBlur="if(this.value==''){this.value='请输入新用户名';}"
                minlength="2" maxlength="12" class="text" required>
              </li>
              <li>
                <label>确认用户名</label>
                <input type="text" size="50px" style="height:25px" 
                value="请重新输入新用户名" onFocus="if(this.value=='请重新输入新用户名'){this.value='';}"
                onBlur="if(this.value==''){this.value='请重新输入新用户名';}"
                minlength="2" maxlength="12" class="text" required>
              </li>
              <li>
                <label>密码&nbsp;&nbsp;&nbsp;</label>
                <input type="text" size="50px" style="height:25px"  value="请输入密码" onFocus="if(this.value=='请输入密码'){this.value='';}"
                onBlur="if(this.value==''){this.value='请输入密码';}" minlength="6" maxlength="12" required>
              </li>
              <li>
                <input class="submit" type="submit" value="登录" >
              </li>
              </ul>
            </form>

            <form id="industryChange">
              <ul>
                <li>
                  <input type="checkbox" name="industry" value="农业">农业
                  <input type="checkbox" name="industry" value="金融业">金融业
                  <input type="checkbox" name="industry" value="industry2">服务业
                  <input type="checkbox" name="industry" value="industry2">医疗业业
                  <input type="checkbox" name="industry" value="industry1">农业
                  <input type="checkbox" name="industry" value="industry2">金融业
                  <input type="checkbox" name="industry" value="industry2">服务业
                  <input type="checkbox" name="industry" value="industry2">医疗业业
                  <input type="checkbox" name="industry" value="industry1">农业
                  <input type="checkbox" name="industry" value="industry2">金融业
                  <input type="checkbox" name="industry" value="industry2">服务业
                </li>
              </ul>               
                  <input class="submit" type="submit" value="确认修改" >               
            </form>


          </div>
        <div id="secondPage" class="hide">
          <ul>
            <li>
              <span class="time">[2017-11-02]</span>
            </li>
            <li class="message">
              <span>您关注的行业有以下最新信息。。。。。。</span>
              <a class="more" href="#">点击查看更多>></a>
            </li>
          </ul>
          <ul>
            <li>
              <span class="time">[2017-11-02]</span>
            </li>
            <li class="message">
              <span>您关注的行业有以下最新信息。。。。。。</span>
              <a class="more" href="#">点击查看更多>></a>
            </li>
          </ul>
        </div>
        
        <div id="thirdPage" class="hide">
          <ul>
            <li class="answer">管理员回复了您的留言：</li>
            <li class="answer-detail">您的留言已回复，请登陆查看。<span class="time">[2017-11-02]</span></li>
          </ul>
          <ul>
            <li class="answer"><span>管理员回复了您的留言：</span></li>
            <li class="answer-detail">您的留言已回复，请登陆查看。<span class="time">[2017-11-02]</span></li>
          </ul>
        </div>
      </div>

			<!-- <div class="box" id="box"></div>
			<script src="js/jquery-1.7.2.min.js"></script>
			<script src="js/paging.js"></script>
			<script>
					var setTotalCount = 301;
					$('#box').paging({
							initPageNo: 3, // 初始页码
							totalPages: 30, //总页数
							totalCount: '合计' + setTotalCount + '条数据', // 条目总数
							slideSpeed: 600, // 缓动速度。单位毫秒
							jump: true, //是否支持跳转
							callback: function(page) { // 回调函数
									console.log(page);
							}
					})
			</script> -->
		</div>
		
		<div class="footer">
				<!-- <hr> -->
				<ul>
					<li class="li_left">
						版权所有&nbsp;|&nbsp;
						<span><a href="" title="">北焦科创高科技孵化器（北京）有限公司&nbsp;&nbsp;京ICP备123456号</a></span>
					</li>
					<li class="li_right">
						地址&nbsp;|&nbsp;
						<span><a href="" title="">北京市朝阳区化工路59号院4号楼4-5层</a></span>
					<li class="li_left">
						技术支持&nbsp;|&nbsp;
						<span><a href="" title="">北焦科创</a></span>
						</li>
					<li class="li_right">
						邮政编码&nbsp;|&nbsp;
						<span><a href="" title="">100020</a></span>
					</li>
				</ul>
		</div>
		<!--footer end-->
	</div>	<!--content end-->
  </body>
</html>
