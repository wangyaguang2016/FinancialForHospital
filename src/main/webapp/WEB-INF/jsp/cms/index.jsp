<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
  <head>
    <title>医叮财务平台</title>
	<%@include file="/WEB-INF/jsp/public/publicImport.jsp"%>
	<link rel="stylesheet" href="<%=path %>js/libs/bxslider/jquery.bxslider.css" />
	<link type="text/css" rel="stylesheet" href="<%=path %>js/libs/validation/css/validate.css" />
	<style>
        .bx-pager{bottom: 10px !important; z-index: 100;}
        .bx-pager-item a.bx-pager-link:hover{background-color: #e41e35 !important;}
        .bx-pager-item a.active{background-color: #e41e35 !important;}
        .bx-pager-item a{width: 40px !important; height: 5px !important;}
        .VIP9_size a{color: #000; text-decoration: none;}
        .prsize a{color: #000; text-decoration: none;}
        
        #banner{top:140px;}
        
        .errorMes{
        	position: relative;
        }
        
        .loginu{
        	position: absolute;
    		top: 0;
    		left: 1em;
        }
        
        .Alltitle{
	       	position: absolute;
	    	left: 50%;
	    	top: 14px;
	    	-webkit-transform: translateX(-50%) ;
		    -moz-transform: translateX(-50%);
		    -ms-transform: translateX(-50%);
		    -o-transform: translateX(-50%);
		    transform: translateX(-50%);
	    	transform: translateX(-50%);
	    	font-size: 36px;
	    	color: #fff;
	    	min-width: 6em;
	    	height:10%;
        }
        
        .footer{
            position: absolute;
 			bottom: 3px;
 			width: 100%;
    		text-align: center;
    		line-height: 14px;
    		font-family: "微软雅黑";
   		    font-size: 14px;
   		    color: #fff;
        }
        .bgF5{
       		 background:#f5f5f5;
             position: absolute;
   			 min-height: 100%;
   			 width: 100%;
   			 background: linear-gradient(to bottom, #0a63b6, #0929e8 50%, #0a63b6);;
		}
        
        
		
		.portrait1 .portrait2 {
			-webkit-box-shadow: 0 0 0px 1000px  rgba(255, 255, 255, 1) inset  
		}
        
		.portrait1 #password{
			-webkit-box-shadow: 0 0 0px 1000px  rgba(255, 255, 255, 1) inset  
		}
		#loginForm input {
			text-indent: 6px;
		}

	</style>
	
	<%
		String username = "";
		if(null != request.getParameter("username") && !"".equals(request.getParameter("username"))) {
			username = request.getParameter("username");
		}
	 %>
  </head>
 
<body class="bgF5">
<h1 class="Alltitle">财务管理系统</h1>

<div id="banner" >
	<div class="banner1">
    <div class="login">
    
    	<form id="loginForm" method="post" action="">
	    	<div class="loginq">
	        	<div class="loginw">
	            	
	            </div>
	             
	             		<c:choose>
								<c:when test="${shiroLoginFailure eq 'com.yd.financial.common.shiro.exception.UserLockException'}">
									<div class="logint errorMes shiroValid" >
		             					<div class="loginy left">
		             						<img src="<%=path %>images/He37.png" />
		             					</div>
										<span class="loginu left">账号已锁定</span>
									</div>
								</c:when>
								<c:when test="${shiroLoginFailure eq 'com.yd.financial.common.shiro.exception.FirstLoginException'}">
									<div class="logint errorMes shiroValid" >
		             					<div class="loginy left">
		             						<img src="<%=path %>images/He37.png" />
		             					</div>
									<span class="loginu left">密码错误，还有2次机会</span>
									</div>
								</c:when>
								<c:when test="${shiroLoginFailure eq 'com.yd.financial.common.shiro.exception.SecondLoginException'}">
									<div class="logint errorMes shiroValid" >
		             					<div class="loginy left">
		             						<img src="<%=path %>images/He37.png" />
		             					</div>
									<span class="loginu left">密码错误，还有1次机会</span>
									</div>
								</c:when>
								<c:when test="${shiroLoginFailure eq 'com.yd.financial.common.shiro.exception.ThirdLoginException'}">
									<div class="logint errorMes shiroValid" >
		             					<div class="loginy left">
		             						<img src="<%=path %>images/He37.png" />
		             					</div>
									<span class="loginu left">账号已被锁定，请24小时后再试</span>
									</div>
								</c:when>
								<c:when test="${shiroLoginFailure eq 'org.apache.shiro.authc.UnknownAccountException'}">
									<div class="logint errorMes shiroValid" >
		             					<div class="loginy left">
		             						<img src="<%=path %>images/He37.png" />
		             					</div>
									<span class="loginu left">登录认证错误，请重试</span>
									</div>
								</c:when>
								<c:when test="${shiroLoginFailure eq 'org.apache.shiro.authc.IncorrectCredentialsException'}">
									<div class="logint errorMes shiroValid" >
		             					<div class="loginy left">
		             						<img src="<%=path %>images/He37.png" />
		             					</div>
									<span class="loginu left">账户名称或密码错误</span>
									</div>
								</c:when>
								<c:when test="${shiroLoginFailure eq 'org.apache.shiro.authc.DisabledAccountException'}">
									<div class="logint errorMes shiroValid" >
		             					<div class="loginy left">
		             						<img src="<%=path %>images/He37.png" />
		             					</div>
									<span class="loginu left">账户未激活</span>
									</div>
								</c:when>
								<c:when test="${shiroLoginFailure eq 'org.apache.shiro.authc.LockedAccountException'}">
									<div class="logint errorMes shiroValid" >
		             					<div class="loginy left">
		             						<img src="<%=path %>images/He37.png" />
		             					</div>
									<span class="loginu left">账户被禁用</span>
									</div>
								</c:when>
								<c:when test="${shiroLoginFailure eq 'org.apache.shiro.authc.AccountException'}">
									<div class="logint errorMes shiroValid" >
		             					<div class="loginy left">
		             						<img src="<%=path %>images/He37.png" />
		             					</div>
									<span class="loginu left">用户名不能为空</span>
									</div>
								</c:when>
								<c:when test="${shiroLoginFailure ne null}">
									<div class="logint errorMes shiroValid" >
		             					<div class="loginy left">
		             						<img src="<%=path %>images/He37.png" />
		             					</div>
									<span class="loginu left">登录认证错误，请重试</span>
									</div>
								</c:when>
							</c:choose>
							
	             	<div class="validation-summary-valid" data-valmsg-summary="true" id="errorDiv">
	             		<div class="logint errorMes" >
	             			<div class="loginy left">
	             			<img src="<%=path %>images/He37.png" />
	             			
	             			</div>
	             		
	                		<span class="loginu left" ></span>
	                </div>
	             </div>
	             <!--<div class="logini">
	             	<div class="portrait left"><img src="<%=path %>images/He38.png" /></div>
	                
	             </div>
	             -->
	             <div class="portrait1 ">

	                    <input type="text" name="username" class="portrait2 ifocus"  placeholder="请输入用户名"  value="<%=username %>" data-val="true" data-val-required="请填写手机号"  autocomplete="off" />
	                </div>
	                
	              <div class="portrait1 ">
	                    <input autocomplete="off" placeholder="密码" data-val="true" data-val-length="登录密码必须由6-32位字符组成" data-val-length-max="32" data-val-length-min="6" data-val-required="请填写登录密码" tabindex="1"
	                     	id="password" name="password" tabindex="2" type="password" class="portrait3 ifocus" maxlength="32"   />
	                    
	                </div>
	              <div class="portrait1 " style="position:relative;">
	                    <input type="text" name="ixinnuoFinancialCaptchaCode" class="portrait4 ifocus"  style="-webkit-box-shadow: 0 0 0px 1000px white inset" maxlength="4" data-val-required="验证码不可为空" placeholder="验证码"
						            		 data-val="true" tabindex="1" autocomplete="off" onpaste="return false;"  >
	              		<div class="portrait5 "><img id="verificationCodeImg" name="verificationCodeImg" src="<%=path %>util/captcha" title="点击刷新" alt="验证码" /></div>  
	              </div>
	                
	                
	             <div class="portrait6"><a href="javascript:void(0);" onclick="user.login();" id="loginBtn">登录</a></div>
	         <%--     <div class="portrait7"><a href="<%=path %>user/findPwd1">忘记密码？</a></div> --%>
	        </div>
        </form>
        
    </div>
    
    </div>
</div>

<!-- slider --><!-- slider -->
<footer class="textC  pB50 mT100 footer">
    <div>版权所有 &copy; 北京华生医叮</div>
</footer>
<%-- <%@include file="/WEB-INF/jsp/public/publicFooter.jsp"%> --%>

<script type="text/javascript" src="<%=path %>js/libs/bxslider/jquery.bxslider.js"></script>
<script type="text/javascript" src="<%=path %>js/libs/scrollpic/ScrollPic.js"></script>
<%-- 引入 form 校验 --%>
<script type="text/javascript" src="<%=path %>js/libs/validation/jquery.validate.js"></script>
<script type="text/javascript" src="<%=path %>js/libs/validation/additional-methods.js"></script>
<script type="text/javascript" src="<%=path %>js/libs/validation/jquery.validate.unobtrusive.js"></script>
<script type="text/javascript" src="<%=path %>js/libs/validation/localization/messages_zh.js"></script>	
<script type="text/javascript" src="<%=path %>js/user/login.js"></script>
<script type="text/javascript" src="<%=path %>js/cms/index.js"></script>

    <script>
		var width = $(window).width();
       /*  if(width<"980") {
            $("#sliderwrap").css("width", "980px");
        } else {
            $("#sliderwrap").css("width", "100%");
        }
        
         $(window).resize(function(){
            var width = $(window).width();
            if(width<"980") {
                $("#sliderwrap").css("width", "980px");
            } else {
                $("#sliderwrap").css("width", "100%");
            }

   		 });
		 
			// 轮换图
            $("#slider").bxSlider({
                auto: true,
                pause: 5000,
                controls: false,
                pager: true,        
                speed: 1000,
                mode: "fade"
            }); */
         $(document).ready(function(){
         
         	if($("#bankListLength").val()>6) {
         		// 底面
	            var scrollPic_02 = new ScrollPic();
	            scrollPic_02.scrollContId   = "ISL_Cont_1"; // 内容ID
	            scrollPic_02.arrLeftId      = "LeftArr1";//左箭头ID
	            scrollPic_02.arrRightId     = "RightArr1"; //右箭头ID
	            scrollPic_02.frameWidth     = 950;//显示框宽度
	            scrollPic_02.pageWidth      = 135; //翻页宽度
	            scrollPic_02.speed          = 10; //移动速度(毫秒，越小越快)
	            scrollPic_02.space          = 10; //每次移动像素(单位px，越大越快)
	            scrollPic_02.autoPlay       = false; //自动播放
	            scrollPic_02.autoPlayTime   = 1.5; //自动播放间隔时间(秒)
	            scrollPic_02.initialize(); //初始化
         	}
         	if($("#bankListLength").val() <= 6) {
         		$("#LeftArr1").hide();
         		$("#RightArr1").hide();
         	}
            
            
            $("#verificationCodeImg").click(function(){
				$("#verificationCodeImg").attr("src", basePath+"util/captcha?timestamp="+new Date().getTime());
			});
			
			// 导航
			 $("#navTop li").siblings().removeClass("current");
        	 $("#navTop li").eq(0).addClass("current");
			 
            // 兼容IE10以下的placeholder
            $("input[placeholder]").placeholder();
            
        });
        
		window.onload = function() {
			$("#navTop li").siblings().removeClass("current");
	        $("#navTop li").eq(0).addClass("current");
			_nav();
		};
		
		$("#banner .logini input").focus(function() {
	             $(this).parent().parent().addClass("f_input");
	     });
	
         $("#banner .logini input").blur(function() {
             $(this).parent().parent().removeClass("f_input");
         });
         
        /*  var flagLogin='${flag}';
         if(flagLogin=='true'){
        	 window.location.href = '${pageContext.request.contextPath}/trade/tradeListRoute';
         } */
    
    </script>


</body>
</html>