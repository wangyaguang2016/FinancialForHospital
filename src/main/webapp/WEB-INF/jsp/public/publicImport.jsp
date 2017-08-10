<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://shiro.apache.org/tags" prefix="shiro"%>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">    
<meta http-equiv="X-UA-Compatible" content="IE=Edge" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="医叮财务管理系统" />
<meta name="description" content="华生医叮,财务管理系统" />
<meta name="generator" content="医叮" />
<meta name="author" content="医叮" />


<%
    String path = request.getContextPath() + "/";
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path;
    
%>
<script type="text/javascript">
	var path="<%=path %>";
	var basePath="<%=basePath %>";
</script>


<%-- 引入jquery --%>
<script type="text/javascript" src="<%=path%>js/libs/jquery/dist/jquery-1.8.3.min.js" charset="UTF-8"></script>

<%-- 引入bootstrap --%>
<script type="text/javascript" src="<%=path%>js/libs/bootstrap/bootstrap.min.js" charset="UTF-8"></script>
<script type="text/javascript" src="<%=path%>js/libs/bootpag/jquery.bootpag.min.js" charset="UTF-8"></script>

<%-- 引入Handlebars --%>
<%-- <script type="text/javascript" src="<%=path%>js/libs/handlebars/handlebars-v3.0.3.js"></script> --%>

<%-- 引入util工具 --%>
<script type="text/javascript" src="<%=path %>js/util/util.js"></script>

<%-- 引入jBox --%>
<script type="text/javascript" src="<%=path%>js/libs/jBox/js/jquery.jBox-2.3.min.js" charset="UTF-8"></script>
<link rel="stylesheet" href="<%=path %>js/libs/jBox/css/jbox.css"/>
<script type="text/javascript" src="<%=path%>js/libs/jBox/js/jquery.jBox-zh-CN.js"></script>
 
<link href="<%=path%>images/16-16.png" type="image/x-icon" rel="shortcut icon" /> 
<!--<link rel="Bookmark" href="<%=path %>images/ixinnuo_32X32.ico" />-->


<%-- 百度统计--%>
<script>
/*var _hmt = _hmt || [];
(function() {
  var hm = document.createElement("script");
  hm.src = "//hm.baidu.com/hm.js?3961741ea01d8769487c0438d00315d7";
  var s = document.getElementsByTagName("script")[0]; 
  s.parentNode.insertBefore(hm, s);
})();*/
</script>

<style>
	.modal {
		margin-top: 100px;
	}
</style>

<!--<link rel="stylesheet" href="<%=path %>js/libs/bootstrap/bootstrap.css"/>-->
<link rel="stylesheet" href="<%=path %>css/rzstyle.css" type="text/css" />
<!--<link rel="stylesheet" href="<%=path %>css/reset.css" type="text/css" />-->