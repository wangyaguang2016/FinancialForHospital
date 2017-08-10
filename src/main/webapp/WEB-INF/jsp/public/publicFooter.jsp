<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<div id="copyright">
	<div class="icon">
    	<div class="icbq" >
        	<ul style="width: 800px; margin: 0 auto;">
                <li><a href="<%=path %>" class="ifu i1"></a></li>
                <li><a href="http://www.i-xinnuo.com" class="aisino2 i2" target="_blank" data-toggle="popover" role="button" tabindex="0" data-html="true" data-container="body"  data-placement="top" data-content="<div class='text-center'><img src='<%=path %>images/qrcode_ixinnuo.png' width='150' height='150'/><br><span>爱信诺公众平台</span></div>" ></a></li>
                <li><strong>400-8106116</strong><br />周一至周五：9:00-17:00</li>
            </ul>
        </div>
        <div class="icbq1">Copyright©2010-2016  爱信诺i-xinnuo.com 版权所有</div>
    </div>
</div>

<div id="totop">
    <a title="回到顶部"><img src="<%=path %>images/scrollup.png"/></a>
</div>
<script>
			$('a[data-toggle="popover"]').popover({trigger: "hover"});
			
	         // When to show the scroll link
	         // higher number = scroll link appears further down the page    
	         var upperLimit = 200; 
	             
	         // Our scroll link element
	         var scrollElem = $('#totop');
	         
	         // Scroll to top speed
	         var scrollSpeed = 500;
	         
	         // Show and hide the scroll to top link based on scroll position    
	         scrollElem.hide();
	         $(window).scroll(function () {             
	             var scrollTop = $(document).scrollTop();        
	             if ( scrollTop > upperLimit ) {
	                 $(scrollElem).stop().fadeTo(300, 1); // fade back in            
	             }else{        
	                 $(scrollElem).stop().fadeTo(300, 0); // fade out
	             }
	         });
	     
	         // Scroll to top animation on click
	         $(scrollElem).click(function(){ 
	             $('html, body').animate({scrollTop:0}, scrollSpeed); return false; 
	         });
	         
</script>