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
		<title>政策详细内容</title>
		<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no" />
		<link href="css/mui.min.css" rel="stylesheet" />
		<link href="css/policy.css" rel="stylesheet" />

  </head>
  
  <body>
   
   		<script src="js/mui.min.js"></script>
		<script type="text/javascript">
			mui.init();
			
			mui('body').on('tap','#back',function(){
				window.top.location.href=this.href;
			});
		</script>
		<script type="text/javascript" src="js/jquery-2.1.0.js"></script>
    	<script type="text/javascript" src="js/policy.js"></script>
		
		<!-- 主页面容器 -->
		<div class="mui-inner-wrap">
		    <!-- 头部（从左到右：侧滑按钮、标题、搜索框）-->
		    <header id="head" class="mui-bar mui-bar-nav">
		      	<a id="back" href="tab-main.html"><button type="button" class="mui-btn mui-btn-primary mui-btn-outlined">返回</button></a>
		      	<h1 id="head_title" class="mui-title">新政策网</h1>
		    </header>

			<!--正文部分-->
		    <div class="mui-content mui-scroll-wrapper">
			<div class="mui-scroll">
   				
   				<!--正文标题-->
   				<div>
   					<ul class="mui-table-view">
						<li class="mui-table-view-cell mui-media">
					        <div id="content_title" class="mui-media-body">
					        	<p class='mui-ellipsis'>李克强对全国小微企业金融服务电视电话会议作出重要批示</p>
					        	<span class="institution">国务院</span>
					        	<span class="time">2017-11-15</span>
					        </div>
						</li>
					</ul>
   				</div>
   				
   				<!--正文内容-->
   				<div>
   					<ul class="mui-table-view">
						<li class="mui-table-view-cell mui-media">
					        <div id="content" class="mui-media-body" >
					        	<p style="font-size: 16px; color: #555555;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;全国小微企业金融服务电视电话会议11月7日在京召开。中共中央政治局常委、国务院总理李克强作出重要批示。批示指出：小微活，就业旺，经济兴。金融支持是激发小微企业活力、助推小微企业成长壮大的重要力量。党的十八大以来，根据党中央、国务院部署，金融系统和各地区各部门多方联动、协力推进，对小微企业的金融服务不断改善、支持力度持续加大，成绩应予肯定。希望全面深入贯彻党的十九大精神，把思想统一到十九大精神上来，把力量凝聚到实现十九大确定的任务上来，认真落实全国金融工作会议部署，切实增强金融服务实体经济能力，将小微企业金融服务放在更加重要的位置。要进一步深化金融体制改革，健全多层次市场体系尤其是普惠金融体系，加快建立稳定紧密、良性互动的银企关系，更好发挥市场在小微金融资源配置中的决定性作用。要创新机制与模式，重抓政策落实，着力打通金融活水流向小微企业的“最后一公里”，在缓解小微企业融资难融资贵问题上取得更大成效，有力促进大众创业万众创新、新动能发展壮大，为实现经济社会持续健康发展、决胜全面建成小康社会作出更大贡献！国务院副总理马凯出席会议并讲话。他强调，要深入贯彻党的十九大精神，以习近平新时代中国特色社会主义思想为指导，认真落实李克强总理重要批示要求，按照全国金融工作会议和国务院部署，切实落实金融服务小微企业的各项政策和改革举措，全面提升金融服务能力和可得性，努力在缓解小微企业融资难融资贵问题上取得更大成效。
<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;马凯指出，党的十八大以来，在以习近平同志为核心的党中央坚强领导下，各地、各部门和金融机构做了大量扎实有力的工作，小微企业金融服务取得了显著成效，总量加大、广度提升、成本降低，融资难融资贵问题有所缓解。同时，也要清醒认识到小微企业融资难融资贵问题的长期性、艰巨性。
<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;马凯要求，各地、各部门和金融机构要把思想认识行动统一到党中央、国务院的决策部署上来，切实落实货币、财政政策对小微企业的支持措施，完善适应小微企业金融服务需要的金融组织体系，不断创新支持小微企业的金融产品和服务，大力拓展小微企业直接融资，健全小微企业融资担保和保险机制，持续推进小微企业信用信息体系建设，继续清理整顿小微企业金融服务不合理收费，改进和加强对小微企业金融服务的监督考核，切实提升金融服务小微企业的能力和效果。</p>
					        </div>
						</li>
					</ul>
   				</div>
   				
   				
			</div>
		   </div>
		</div>
   
  </body>
</html>
