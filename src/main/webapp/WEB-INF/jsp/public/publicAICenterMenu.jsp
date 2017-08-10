<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%--爱信诺平台维护 --%>
<!--以下是左侧NAV部分-->
<div class="botk left">
   	<ul class="ulmenu">
       	<li class="bkodsz-bold"><a href="javascript:void(0)" onclick="collapse(this)"><span class="bkodsx"><img src="../images/He55.png" /></span>服务商管理</a></li>
           <ul class="bkods">
           	<li><a href="<%=path %>user/serviceListPage">服务商账户维护</a></li>
           </ul>
           <li class="bkodsz-bold"><a href="javascript:void(0)" onclick="collapse(this)"><span class="bkodsx"><img src="../images/He55.png" /></span>银行总行管理</a></li>
           <ul class="bkods">
           	<li><a href="<%=path %>bankDict/bankImagePage">银行管理</a></li>
           </ul>
    </ul>
</div>
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

