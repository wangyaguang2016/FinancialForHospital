<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="com.ixinnuo.financial.user.model.User"%>
<%
				String loginName = "";
				if(null != org.apache.shiro.SecurityUtils.getSubject().getPrincipals()) {
					User user = org.apache.shiro.SecurityUtils.getSubject().getPrincipals().oneByType(User.class);
	        		if(null != user) {
	        			loginName = user.getLoginName();
	        		}
				}       
 %>
<div class="ushead">
      <div class="logopo left"><img src="../images/He54.png" /></div>
      	<shiro:hasRole name="ROLE_SERVICE">
        	<div class="logopo1 left">服务中心管理系统</div>
        </shiro:hasRole>
        <shiro:hasRole name="ROLE_BANK">
        	<div class="logopo1 left">银行管理系统</div>
        </shiro:hasRole>
        <shiro:hasRole name="ROLE_IXINNUO">
        	<div class="logopo1 left">爱信诺管理系统</div>
        </shiro:hasRole>
        <div class="logopo2 right">
          <ul>
          	<li class="tui" style="border-right: 1px solid #fff;margin-right: 10px;padding:0 10px 0 10px;"><a href="<%=path %>" >回到首页</a></li>
          <shiro:hasAnyRoles name="ROLE_SERVICE,ROLE_BANK">
          	<!-- li class="tui"><a href="<%=path %>user/userCenterPage">用户中心</a></li-->
          </shiro:hasAnyRoles>
              
                <li class="tui1"><a href="<%=path %>user/userCenterPage"><%=loginName %></a></li>
                <li class="tui2"><a href="<%=path %>logout">退出</a></li>
            </ul>
        </div>
</div>