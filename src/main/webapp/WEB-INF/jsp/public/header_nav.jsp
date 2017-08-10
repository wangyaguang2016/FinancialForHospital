<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<%@ page language="java" import="com.ixinnuo.financial.user.model.User" %>
<%             String loginName="";
			if(null != org.apache.shiro.SecurityUtils.getSubject().getPrincipals()) {
					User user = org.apache.shiro.SecurityUtils.getSubject().getPrincipals().oneByType(User.class);
	        		if(null != user) {
	        			if(user.getRealName()!="" && user.getRealName()!=null){
	        				loginName = user.getRealName();
	        		    }else{
	        		    	loginName = user.getName();
	        		    }
	        		 }
				}       
 %>
<header class="wp100 navbox clearfix">
	<a href="" class="brand">北京华生医叮财务管理系统</a>
	<!-- <ul class="navTop"> -->
	<%-- 	<li><a href="${pageContext.request.contextPath}/trade/chartRoute">首页</a></li> --%><!-- -->
<%-- 		 <li><a href="${pageContext.request.contextPath}/trade/tradeListRoute">交易管理</a></li> --%>
		<!-- <li class="dropdown"><a href="javascript:;" role="button" -->
<!-- 			class="dropdown-toggle" data-toggle="dropdown">任务管理 <i class="caret"></i></a> -->
		<!-- 	<ul class="dropdown-menu"> -->
			<%-- 	<li><a href="${pageContext.request.contextPath}/trigger/taskList">任务列表</a></li> --%>
				<!-- <li class="divider"></li> -->
			<%-- 	<li><a href="${pageContext.request.contextPath}/quartzlog/quartzLogRunning">运行中任务</a></li> --%>
			<%-- 	<li><a href="${pageContext.request.contextPath}/quartzlog/quartzLogError">异常任务</a></li> --%>
			<%-- 	<li><a href="${pageContext.request.contextPath}/trigger/triggerCompletedList">已完成任务</a></li> --%>
			<!-- 	<li class="divider"></li> -->
			<%-- 	<li><a href="${pageContext.request.contextPath}/manualTask/quartzLogManualTaskRoute">手动执行</a></li> --%>
			<!-- </ul></li> -->
		<!-- <li class="dropdown"><a href="javascript:;" role="button" -->
			<!-- class="dropdown-toggle" data-toggle="dropdown">权限管理<i -->
				<!-- class="caret"></i></a> -->
			<!-- <ul class="dropdown-menu"> -->
				<%-- <li><a href="${pageContext.request.contextPath}/user/authorityUserListRoute">用户列表</a></li> --%>
				<!-- <li class="divider"></li> -->
			<%-- 	<li><a href="${pageContext.request.contextPath}/role/roleListRoute">角色列表</a></li> --%>
			<!-- </ul></li> -->
	<!-- 	<li class="dropdown"><a href="javascript:;" role="button" -->
			<!-- class="dropdown-toggle" data-toggle="dropdown">报表管理<i -->
			<!-- 	class="caret"></i></a> -->
			<!-- <ul class="dropdown-menu"> -->
			<%-- 	<li><a href="${pageContext.request.contextPath}/report/reportListRoute">成功报表</a></li> --%>
			<!-- 	<li class="divider"></li> -->
			<!-- 	<li><a href="javaScript:;">失败报表</a></li> -->
			<!-- </ul></li> -->
		<!-- <li class="dropdown"><a href="javascript:;" role="button" -->
		<!-- 	class="dropdown-toggle" data-toggle="dropdown">统计管理<i -->
				<!-- class="caret"></i></a> -->
		<!-- 	<ul class="dropdown-menu"> -->
			<%-- 	<li><a href="${pageContext.request.contextPath}/accountManage/accountOutlineListRoute">医院消费记录</a></li> --%>
			<!-- 	<li class="divider"></li> -->
			<%-- 	<li><a href="${pageContext.request.contextPath}/accountManage/accountOnlineListRoute">医叮消费记录</a></li> --%>
			<!-- </ul></li> -->
<!-- 	</ul> -->
	
	
	
	
	<ul class="nav pull-right">
		<li class="dropdown"><a href="<%=path%>user/userCenterPage"
			role="button" class="dropdown-toggle" data-toggle="dropdown"><i
				class="icon-user"></i><%=loginName %><i class="caret"></i> </a>
			<ul class="dropdown-menu userDropdown-menu">
			<!-- 	<li><a href="#">修改密码</a></li>-->
			<!--	<li class="divider"></li> -->
				<li><a href="<%=path %>logout" style="border:0px;">退出</a></li>
			</ul></li>
	</ul>
</header>
