<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head lang="en">
<%@include file="/WEB-INF/jsp/public/publicImport.jsp"%>
<meta charset="UTF-8">
<title>患者费用详情</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="renderer" content="webkit">
<meta name="format-detection" content="telephone=no,email=no">
<!--<meta name="keywords" content="">-->
<!--<link rel="shortcut icon" href="">-->

	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/base.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/common.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/drop.css"/>
</head>
<body class="container-backSilver">

<%@ include file="../public/header_nav.jsp"%>
	<section class="container-fluid dealModelPart">
	<div class="sideBarBox">
        <ul class="menuBox menu"></ul>
    </div>
		<div class="mainContent">
			<div class="tableModel onlyTable projectTable">
			
			
			
			<h4 class="formTitle" id="formTitle userDetail">
					<em>个人信息</em>
				</h4>
				<table class="dealList">
					<!-- <thead>-->
					<!--	<tr class="fistTr">-->
					<!--		<th class="dealList-ID">序号</th>-->
					<!--		<th class="dealList-projectType">项目</th>-->
					<!--		<th class="dealList-projectCost">金额</th>-->
					<!--	</tr>-->
					<!--</thead> -->
					<tbody>
						<tr>
							<td class="dealList-ID">1</td>
							<td class="dealList-projectType">就诊卡号</td>
							<td class="dealList-projectCost">${cost.cardNum}</td>
						</tr>
						<tr>
							<td class="dealList-ID">2</td>
							<td class="dealList-projectType">住院号</td>
							<td class="dealList-projectCost">${cost.hosptialNum}</td>
						</tr>
						<tr>
							<td class="dealList-ID">3</td>
							<td class="dealList-projectType">姓名</td>
							<td class="dealList-projectCost">${cost.patientName}</td>
						</tr>
						<tr>
							<td class="dealList-ID">4</td>
							<td class="dealList-projectType">性别</td>
							<td class="dealList-projectCost">${cost.gender}</td>
						</tr>
						<tr>
							<td class="dealList-ID">5</td>
							<td class="dealList-projectType">年龄</td>
							<td class="dealList-projectCost">${cost.age}</td>
						</tr>
						<tr>
							<td class="dealList-ID">6</td>
							<td class="dealList-projectType">电话</td>
							<td class="dealList-projectCost">${cost.phone}</td>
						</tr>
						<tr>
							<td class="dealList-ID">7</td>
							<td class="dealList-projectType">地址</td>
							<td class="dealList-projectCost">${cost.address}</td>
						</tr>
		
					</tbody>
					<tfoot>
					</tfoot>
				</table>
			
			
				
			</div>
			
			<div class="tableModel onlyTable projectTable">
				<h4 class="formTitle" id="formTitle userDetail">
					<em>消费详情</em>
				</h4>
				<table class="dealList">
					<thead>
						<tr class="fistTr">
							<th class="dealList-ID">序号</th>
							<th class="dealList-projectType">项目</th>
							<th class="dealList-projectCost">金额</th>
						</tr>
					</thead>
					<tbody>
						<!--  <tr>
							<td class="dealList-ID">1</td>
							<td class="dealList-projectType">总充值金额</td>
							<td class="dealList-projectCost">${cost.totalAmount}</td>
						</tr>
						-->
						<tr>
							<td class="dealList-ID">1</td>
							<td class="dealList-projectType">线上充值金额</td>
							<td class="dealList-projectCost">${cost.upLineAmount}</td>
						</tr>
						<tr>
							<td class="dealList-ID">2</td>
							<td class="dealList-projectType">线下充值金额</td>
							<td class="dealList-projectCost">${cost.totalAmount}</td>
						</tr>
						<!-- <tr>
							<td class="dealList-ID">4</td>
							<td class="dealList-projectType" id="消费总额">消费总额</td>
							<td class="dealList-projectCost">${cost.sumMoney}</td>
						</tr>
						 -->
						<tr class="listHidden">
							<td class="dealList-ID">3</td>
							<td class="dealList-projectType">线上消费金额</td>
							<td class="dealList-projectCost">${cost.upLineCost}</td>
						</tr>
						<tr class="listHidden">
							<td class="dealList-ID">4</td>
							<td class="dealList-projectType">线下消费金额</td>
							<td class="dealList-projectCost">${cost.totalCost}</td>
						</tr>
						<!-- <tr class="listHidden">
							<td class="dealList-ID">7</td>
							<td class="dealList-projectType">手术费</td>
							<td class="dealList-projectCost">${cost.diagnosis}</td>
						</tr>
						<tr class="listHidden">
							<td class="dealList-ID">8</td>
							<td class="dealList-projectType">CT费</td>
							<td class="dealList-projectCost">${cost.diagnosis}</td>
						</tr>
						 -->
					</tbody>
					<tfoot>
					</tfoot>
				</table>
				<nav class="relative clearfix paginationBox">
					<button class="btn btn-default tranCenter cobackBtn">返回上一页</button>
					
				</nav>
			</div>
			
			
		</div>
	</section>
<%@ include file="../public/footer_nav.jsp"%>

	
	<script src="<%=path%>js/dropJS.js"></script>
	<script src="<%=path%>js/libs/handlebars/handlebars-v3.0.3.js"></script>
	<script>

		var back = document.querySelectorAll(".cobackBtn")[0];
		
		back.onclick = function() {
			
			window.history.go(-1);
		}
	</script>
</body>