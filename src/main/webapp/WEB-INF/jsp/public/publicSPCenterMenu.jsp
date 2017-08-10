<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!--以下是左侧NAV部分-->
<div class="wocjok left">
        	<ul class="ulmenu">
                <li><a href="<%=path %>audit/auditListPage" id="customersp">客户受理</a></li>
                <li><a href="<%=path %>product/listSPPage" id="productsp">产品管理</a></li>
                <li><a href="<%=path %>bank/managePage" id="bankmanagesp">银行管理</a></li>
                <li><a href="<%=path %>basicInfo/enterpriseManage" id="customermanagesp">客户管理</a></li>
                <li><a href="<%=path %>user/resetPwdSPPage">修改密码</a></li>
            </ul>
        </div>
<!--
<div class="botk left">
   	<ul class="ulmenu">
       	<li class="bkodsz-bold"><a href="<%=path %>audit/auditListPage" ><span class="bkodsx"><img src="../images/He55.png" /></span>客户受理</a></li>
           <li class="bkodsz-bold"><a href="javascript:void(0)" ><span class="bkodsx"><img src="../images/He55.png" /></span>产品管理</a></li>
           <li class="bkodsz-bold"><a href="javascript:void(0)" ><span class="bkodsx"><img src="../images/He55.png" /></span>银行管理</a></li>
           <li class="bkodsz-bold"><a href="javascript:void(0)" ><span class="bkodsx"><img src="../images/He55.png" /></span>企业管理</a></li>
           <li class="bkodsz-bold"><a href="javascript:void(0)" ><span class="bkodsx"><img src="../images/He55.png" /></span>账户安全</a></li>
           <ul class="bkods">
           	<li><a href="<%=path %>user/resetPwdSPPage">修改密码</a></li>
           </ul>
    </ul>
</div>
-->
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
    }).addClass('active');
    
</script>

