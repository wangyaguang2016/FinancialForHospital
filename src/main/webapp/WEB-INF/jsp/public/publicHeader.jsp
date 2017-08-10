<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%-- <%@page import="com.ixinnuo.financial.user.model.User"%>
<%             String loginName="";
			if(null != org.apache.shiro.SecurityUtils.getSubject().getPrincipals()) {
					User user = org.apache.shiro.SecurityUtils.getSubject().getPrincipals().oneByType(User.class);
	        		if(null != user) {
	        			loginName = user.getName();
	        		}
				}       
 %> --%><%-- 
<div id="Head">
	<div class="centerq">
    	<div class="centerw left">
        	<ul>
            	<li><a href="<%=path %>"><img src="<%=path %>images/He2.png" /></a></li>
                <li class="centere" style="width: 78px;"><a href="http://www.i-xinnuo.com:9999" target="_blank">爱信诺征信</a></li>
                <li class="ioctod"><a href="<%=path %>"><img src="<%=path %>images/iod_03.png" /></a></li>
                <li class="centere" style="width: 78px;"><a href="http://ninbo.ishuirong.com:8777/ixinnuo_tax" target="_blank">税务端入口</a></li>
            </ul>
        </div>
        <div class="cenright right">
	        <shiro:notAuthenticated>
	        	<ul>
	                <li><a href="<%=path %>">登录</a></li>
	                <li><a href="<%=path %>user/signupPage" style="border:0px;">注册</a></li>
	            </ul>
	         </shiro:notAuthenticated>
	         
	         <shiro:authenticated>
	         	<ul>
	            	<li><a href="<%=path %>user/userCenterPage">会员中心</a></li>
	            	<li><a href="<%=path %>user/userCenterPage"><%=loginName %></a></li>
	                <li><a href="<%=path %>logout" style="border:0px;">退出</a></li>
	            </ul>
	         </shiro:authenticated>
        </div>
    </div>
</div>
<div id="LOGO">
	<div class="logoq left"><a href="<%=path %>" hideFocus="true"><img src="<%=path %>images/He4.png" /></a></div>
    <div class="logow left">
    	<!--<a href="javascript:void(0);" hideFocus="true"><img src="<%=path %>images/He5.png" /></a>
    -->
    </div>
    <div class="nav right">
    	<div class="navtop">
    	<ul id="navTop">
        	<li class="current"><a href="<%=path %>">首页</a></li>
            <li class=""><a href="<%=path %>product/listPage">我要借款</a></li>
            <li class=""><a href="<%=path %>cms/aboutUs">关于我们</a></li>
        </ul>
        <div class="cur-nav" style="overflow: hidden;"></div>
        </div>
    </div>
</div>

<script>
		// 导航栏效果
		var _nav = function(){
            var $nav = $(".nav");
            var $navcur = $(".cur-nav");
            var current = ".current";
            var itemW = $nav.find(current).innerWidth();  //默认当前位置宽度
            var defLeftW = $nav.find(current).position().left;  //默认当前位置Left值
            //添加默认下划线
            $navcur.css({width:itemW,left:defLeftW});
            
            //hover事件
            $nav.find("li").hover(function(){
              var index = $(this).index();  //获取滑过元素索引值
              var leftW = $(this).position().left;  //获取滑过元素Left值
              var currentW = $nav.find("li").eq(index).innerWidth(); //获取滑过元素Width值
              $navcur.stop().animate({
                left: leftW,
                width: currentW
              },300);
              
            },function(){
              $navcur.stop().animate({
                left: defLeftW,
                width: itemW
              },300);
            });
        };
        
        
		 $(window).resize(function(){
        	_nav();
   		 });
   		 
</script> --%>