<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="com.ixinnuo.financial.user.model.User"%>

<!--以下是左侧NAV部分 银行用户中心菜单-->
<div class="wocjok left">
        	<ul class="ulmenu">
        		<li><a href="<%=path %>audit/auditListBKPage" id="customerbk">客户受理</a></li>
                <li><a href="<%=path %>product/listBKPage" id="productbk">产品管理</a></li>
                <li><a href="<%=path %>audit/auditCreditedListBKPage" id="creditbk">授信管理</a></li>
                <li><a href="<%=path %>user/resetPwdSPPage" id="repwdbk">修改密码</a></li>
            </ul>
</div>



<!-- div class="botk left" style="z-index: 999;">
   	<ul class="ulmenu">
       	<li class="bkodsz-bold"><a href="javascript:void(0)" onclick="collapse(this)"><span class="bkodsx"><img src="../images/He55.png" /></span>我的产品</a></li>
           <ul class="bkods">
           	<li name="productInfo"><a href="<%=path %>product/listBKPage">产品管理</a></li>
           </ul>
           <li class="bkodsz-bold"><a href="<%=path %>audit/auditListBKPage"><span class="bkodsx"></span>客户受理</a></li>
           <!--<ul class="bkods">
           	<li name="loanHandle"><a href="<%=path %>audit/auditListBKPage">贷款申请处理</a></li>
           	<li name="loanHandle"><a href="<%=path %>audit/auditListHisBKPage">贷款历史记录</a></li>
           </ul>
         
           <li class="bkodsz-bold"><a href="<%=path %>audit/auditCreditedListBKPage"><span class="bkodsx"></span>授信管理</a></li>
           <ul class="bkods">
           	<li><a href="<%=path %>user/resetPwdSPPage">修改密码</a></li>
           </ul-->
           <%-- 	if(null != org.apache.shiro.SecurityUtils.getSubject().getPrincipals()) {
					User user = org.apache.shiro.SecurityUtils.getSubject().getPrincipals().oneByType(User.class);
	        		if(null != user) {
	        			if(null != user.getBankMobile()&&!"".equals(user.getBankMobile())) {
	       %> 
	        			<li class="bkodsz-bold"><a href="javascript:void(0)" onclick="collapse(this)"><span class="bkodsx"><img src="../images/He55.png" /></span>我的用户</a></li>
					       <ul class="bkods">
					       <li name="bankUserManage"><a href="<%=path %>bank/subManagePage">用户管理</a></li>
					      </ul>
	       <%  			}
	        		}
				}      
		   --%>
			
    <!-- /ul>
</div-->
<script>
function collapse(elem) {		
    	$(elem).next().on("shown.bs.collapse", function(){
    		$(elem).find("img").eq(0).attr("src", basePath + "images/xybg_8.png");
    	});
    	$(elem).next().on("hidden.bs.collapse", function(){
    		$(elem).find("img").eq(0).attr("src",  basePath + "images/xybg_9.png");
    	});
    	
		$(elem).next().collapse("toggle");
	}
	
var url = window.location;
var element = $('ul.ulmenu li a').filter(function() {
        return this.href == url.protocol + "//" + url.host + url.pathname ;
    }).parent().addClass('active');
    
</script>

