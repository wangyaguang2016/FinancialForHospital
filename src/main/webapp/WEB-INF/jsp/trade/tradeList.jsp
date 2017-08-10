<%@ page language="java" import="java.util.*" pageEncoding="utf-8" %>
<!DOCTYPE html>
<html>
<head lang="en">
    <%@include file="/WEB-INF/jsp/public/publicImport.jsp" %>
    <meta charset="UTF-8">
    <title>交易管理</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="renderer" content="webkit">
    <meta name="format-detection" content="telephone=no,email=no">
    <!--<meta name="keywords" content="">-->
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/css/base.css"/>
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/css/bootstrap.min.css"/>
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/css/common.css"/>
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/css/drop.css"/>
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/css/jedate.css"/>

    <style>
        .hospitalName {
            margin-right: 42px;
            width: auto;
        }

        .pageTest {
            width: 1000px;
            height: 50px;
            margin-top: 100px;
        }

        .activP {
            background-color: #367fa9 !important;
            color: #fff !important;
        }

        .costType label {
            margin-right: 9px;
        }

        .searchFrom-Item select {
            width: 12em;
        }

        .statsType label {
            margin-left: 22px;
            margin-right: 8px;
        }

        .statsType select, .cardType select {
            width: 10em;
        }

        .cardType label {
            margin-left: 10px;
            margin-right: 8px;
        }

        .dataDiv > label {
            margin-right: 20px;
            font-weight: 700;
        }

        input:focus {
            border: 1px solid #66afe9 !important;
            box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075), 0 0 8px rgba(102, 175, 233, .6) !important;
        }

        .searchFrom-Item label {
            font-weight: 700 !important
        }
    </style>
</head>

<body class="container-backSilver">
<%@ include file="/WEB-INF/jsp/public/header_nav.jsp" %>
<section class="container-fluid dealModelPart">

    <div class="sideBarBox">
        <ul class="menuBox menu"></ul>
    </div>

    <div class="mainContent">
        <h4 class="searchTitle">交易记录查询</h4>
        <div class="searchFrom">
            <div class=" item-list clearfix">
                <div class="searchFrom-Item hospitalName marginL ">
                    <label for="hospital">医院:</label> <select type="text" id="hospital" class="tradeSelect  tradeFristRow">
                    <option value="">全部</option>
                </select>
                    <!-- <input type="text" id="hospital"/> -->
                </div>
                <div class="searchFrom-Item dataDiv">
                    <label>时间:</label><input class="datainp" id="JeStartTime" type="text" placeholder="请输入开始时间" readonly=""/><span>至</span><input
                        class="datainp" id="JeEndTime" type="text" placeholder="请输入结束时间"
                        readonly=""/>
                </div>
                <div class="searchFrom-Item cardType costernameBox">
                    <label for="costerName">姓名:</label><input type="text" id="costerName" class="costerName" placeholder="请输入姓名"/>

                </div>
            </div>
            <div class="item-list clearfix">
                <div class="searchFrom-Item medCard">
                    <label for="medCard">就诊卡号:</label><input type="text" id="medCard" class="tradeFristRow"/>
                </div>
                <div class="searchFrom-Item inpatientCard">
                    <label for="inpatientCard">住院号:</label><input type="text" id="inpatientCard"/>
                </div>
                <div class="searchFrom-Item orderCard  lastListRow">
                    <label for="orderCard">订单号:</label><input type="text" id="orderCard"/>
                </div>


                <div class="searchFrom-Item costType tradeTypeStyle">
                    <label for="costType">交易类型:</label> <select type="text" id="costType" class="tradeSelect  tradeFristRow">
                    <option value="3">全部</option>
                    <option value="1">充值</option>
                    <option value="2">缴费</option>
                </select>
                </div>
            </div>
            <div class="item-list clearfix">

                <div class="searchFrom-Item statsType">
                    <label for="statsType">状态分类:</label> <select type="text" id="statsType" class="tradeSelect">
                    <option value="3">全部</option>
                    <option value="1">成功</option>
                    <option value="2">失败</option>
                </select>
                </div>
                <div class="searchFrom-Item cardType lastListRow">
                    <label for="cardType">卡号分类:</label> <select type="text" id="cardType" class="tradeSelect">
                    <option value="3">全部</option>
                    <option value="1">就诊卡</option>
                    <option value="2">住院号</option>
                </select>
                </div>


                <div class="searchFrom-Item  floatRightEm">
                    <button class=" btn btn-success searchFrom-btn  ">搜索</button>
                </div>
            </div>
        </div>

        <h4 class="formTitle" id="formTitle taskTitle">交易记录列表</h4>
        <div class="tableModel">
            <table class="dealList">

                <thead>
                <tr class="fistTr">

                    <th class="dealList-order">订单号</th>
                    <th class="dealList-hospitalName">医院</th>
                    <th class="dealList-patientName">姓名</th>
                    <shiro:hasPermission name="trade_cardNumber">
                        <th class="dealList-cureCard">就诊卡号</th>
                    </shiro:hasPermission>
                    <th class="dealList-hospitalized">住院号</th>
                    <th class="dealList-comsumptionProject">消费项目</th>
                    <th class="dealList-dealType">交易类型</th>
                    <th class="dealList-dealTime">交易时间</th>
                    <th class="dealList-dealCost">交易金额</th>
                    <th class="dealList-formType">交易来源</th>
                    <th class="dealList-dealsType">状态</th>
                </tr>
                </thead>
                <tbody id="tbody-tradeList">

                </tbody>
                <tfoot>
                </tfoot>
            </table>

            <div role="alert" name="tableNoData"
                 class="alert alert-warning text-center" style="display: none;">
                没有查到数据！
            </div>

            <nav class="relative clearfix">

                <shiro:hasPermission name="trade_download">
                    <button class="btn btn-warning printBtn" id="printBtn">导出表单</button>
                </shiro:hasPermission>
                <!-- 分页 -->
                <input type="hidden" id="pageNum" name="pageNum"/>

                <div class="text-center">
                    <div id="pagination" class="pagination"></div>
                </div>
                <!-- 分页结束 -->
            </nav>
        </div>

    </div>
</section>
<%@ include file="../public/footer_nav.jsp" %>

<script src="<%=path%>js/dropJS.js"></script>
<script src="<%=path%>js/hospLord.js"></script>
<script src="<%=path%>js/libs/handlebars/handlebars-v3.0.3.js"></script>
<script src="<%=path%>js/layer.js"></script>
<script src="<%=path%>js/jedate.js"></script>


<script>
    var btnCs = document.querySelectorAll("#printBtn")[0]
    function checkDown() {

        var hospitalDom = document.querySelectorAll("#hospital")[0].value;

        //开始时间
        var startTimeDom = document.querySelectorAll(".dataDiv>input")[0].value;

        //结束时间
        var endTimeDom = document.querySelectorAll(".dataDiv>input")[1].value;

        //就诊卡号
        var medCardDom = document.querySelectorAll("#medCard")[0].value;

        //住院号
        var inpatientCardDom = document.querySelectorAll("#inpatientCard")[0].value;

        //订单号
        var orderCardDom = document.querySelectorAll("#orderCard")[0].value;

        //交易类型  充值缴费
        var costTypeDom = document.querySelectorAll("#costType")[0].value;

        //状体分类  成功失败
        var statsTypeDom = document.querySelectorAll("#statsType")[0].value;

        //卡号分类  住院 门诊
        var cardTypeDom = document.querySelectorAll("#cardType")[0].value;

        //患者姓名
        var patientNameDom = document.querySelectorAll("#costerName")[0].value;

        $.ajax({
            url: basePath + 'trade/downLoadTradeInfoByLikeTest?'
            + new Date().getTime(),
            type: 'GET',
            dataType: 'json',
            data: {
                cardNum: medCardDom,
                hosptialNum: inpatientCardDom,
                orderNum: orderCardDom,
                cardType: cardTypeDom,
                states: statsTypeDom,
                tradeType: costTypeDom,
                startTime: startTimeDom,
                endTime: endTimeDom,
                hosptailId: hospitalDom,
                patientName: patientNameDom
            },
            success: function (data) {
                console.log(data)
                if (data.list == "susses") {
                    downLoad()
                } else {
                    layer.alert("没有数据请重新输入查询条件")
                }

            },
            error: function () {

            }
        })
    }

    getHospListHospitalNameID()
    /* getHospListTypeB(str) */

    function downLoad() {
        //医院名称

        var hospitalDom = document.querySelectorAll("#hospital")[0].value;

        //开始时间
        var startTimeDom = document.querySelectorAll(".dataDiv>input")[0].value;

        //结束时间
        var endTimeDom = document.querySelectorAll(".dataDiv>input")[1].value;

        //就诊卡号
        var medCardDom = document.querySelectorAll("#medCard")[0].value;

        //住院号
        var inpatientCardDom = document.querySelectorAll("#inpatientCard")[0].value;

        //订单号
        var orderCardDom = document.querySelectorAll("#orderCard")[0].value;

        //交易类型  充值缴费
        var costTypeDom = document.querySelectorAll("#costType")[0].value;

        //状体分类  成功失败
        var statsTypeDom = document.querySelectorAll("#statsType")[0].value;

        //卡号分类  住院 门诊
        var cardTypeDom = document.querySelectorAll("#cardType")[0].value;

        //患者姓名
        var patientNameDom = document.querySelectorAll("#costerName")[0].value;
        location.href = basePath + "/trade/downLoadTradeInfoByLike?cardNum"
            + inpatientCardDom + "$endTime=" + endTimeDom
            + "&hosptailId=" + hospitalDom + "&hosptialNum="
            + inpatientCardDom + "&orderNum=" + orderCardDom
            + "&cardType=" + cardTypeDom + "&startTime=" + startTimeDom
            + "&tradeType=" + costTypeDom + "&states=" + statsTypeDom
            + "&patientName=" + patientNameDom
    }

    if (document.getElementById("printBtn") != null) {

        var printBtn = document.getElementById("printBtn");
        printBtn.onclick = function () {
            checkDown()
        }
    }

    (function ($) {

        window.tradeList = $.fn.tradeList = {

            getList: function (goPageNum) {
                //医院
                var hospitalDom = ""
                if (document.querySelectorAll("#hospital")[0].value == null
                    || document.querySelectorAll("#hospital")[0].value == "") {
                    hospitalDom = ""
                } else {
                    hospitalDom = document.querySelectorAll("#hospital")[0].value;
                }

                console.log(hospitalDom);
                //开始时间
                var startTimeDom = document
                    .querySelectorAll(".dataDiv>input")[0].value;
                //结束时间
                var endTimeDom = document
                    .querySelectorAll(".dataDiv>input")[1].value;
                //就诊卡号
                var medCardDom = document.querySelectorAll("#medCard")[0].value;
                //住院号
                var inpatientCardDom = document
                    .querySelectorAll("#inpatientCard")[0].value;
                //订单号
                var orderCardDom = document.querySelectorAll("#orderCard")[0].value;
                //交易类型  充值缴费
                var costTypeDom = document.querySelectorAll("#costType")[0].value;

                //状体分类  成功失败
                var statsTypeDom = document.querySelectorAll("#statsType")[0].value;
                //卡号分类  住院 门诊
                var cardTypeDom = document.querySelectorAll("#cardType")[0].value;
                //姓名
                var patientNameDom = document
                    .querySelectorAll("#costerName")[0].value;

                $
                    .ajax({
                        //请求地址
                        url: basePath + "trade/selectTradeByLike?"
                        + new Date().getTime(),
                        dataType: "json",
                        type: "post",
                        data: {
                            pageStart: goPageNum,
                            pageSize: 10,
                            cardNum: medCardDom,
                            hosptialNum: inpatientCardDom,
                            orderNum: orderCardDom,
                            cardType: cardTypeDom,
                            states: statsTypeDom,
                            tradeType: costTypeDom,
                            startTime: startTimeDom,
                            endTime: endTimeDom,
                            hosptailId: hospitalDom,
                            patientName: patientNameDom
                        },
                        success: function (data) {
                            var result = data.result;
                            console.log(data)
                            if (result === "success") {
                                var list = data.list;
                                console.log(data.list)
                                if (list.length === 0) {
                                    $("div[name='tableNoData']").eq(0)
                                        .show();
                                } else {
                                    $("div[name='tableNoData']").eq(0)
                                        .hide();
                                }

                                var script = $("#template-tradeList")
                                    .html();
                                var template = Handlebars
                                    .compile(script);

                                var totalPage = data.totalPage;
                                // 分页显示
                                if (totalPage === 0) {
                                    totalPage = 1;
                                }

                                if (0 != totalPage) {
                                    if (parseInt(totalPage) > 0) {
                                        $("#pagination").unbind();
                                        $("#pagination")
                                            .bootpag(
                                                {
                                                    total: parseInt(totalPage),
                                                    page: goPageNum,
                                                    maxVisible: 10,
                                                    leaps: true
                                                })
                                            .bind(
                                                "page",
                                                function (event,
                                                          goPageNum) {
                                                    currentPage = goPageNum;
                                                    tradeList
                                                        .getList(goPageNum);
                                                });
                                    }
                                }

                                $.each(list, function (i, item) {
                                    item.tradeTime = util.formatDate(
                                        item.tradeTime,
                                        "yyyy-MM-dd HH:mm:ss");
                                    //item.startTime = util.formatDate(item.startTime, "yyyy-MM-dd HH:mm:ss");
                                });

                                var result = template({
                                    items: list
                                });

                                $("#tbody-tradeList").html(result);
                            } else {
                                $.jBox.error("出错了！", "提示");
                            }
                        },
                        error: function (data) {
                            console.log(data);
                            $.jBox.error("出错了！", "提示");
                        }
                    });
            },

            edit: function (id) {
                // 提交隐藏form
                $("<form>").hide().attr("action",
                    basePath + "bank/addOrEditPage").attr("method",
                    "post").append(
                    $("<input>").attr("name", "id").val(id)).appendTo(
                    "body").submit();

            },

            //编辑用户权限
            jumpCostDetail: function (cardNum, hosptailId) {
                //地址

                //参数cardNum  hospitalId
                location.href = basePath
                    + 'trade/selectTradeByCardNum?cardNum=' + cardNum
                    + "&hosptailId=" + hosptailId
            },

        };
    })(jQuery);

    $(document).ready(function ($) {
        tradeList.getList(1);
    });

    var btnSearch = document.querySelectorAll(".searchFrom-btn")[0];

    //点击查询
    btnSearch.onclick = function () {
        tradeList.getList(1);
    };
</script>
<script type="text/x-handlebars-template" id="template-tradeList">
    {{#if items}}
    {{#each items}}
    <tr>

        <td class="dealList-order">{{orderNum}}</td>
        <td class="dealList-hospitalName">{{hosptialName}}</td>
        <td class="dealList-patientName">{{patientName}}</td>
        <shiro:hasPermission name="trade_cardNumber">
            <td class="dealList-cureCard"><a href="javascript:;"
                                             onclick=tradeList.jumpCostDetail("{{cardNum}}","{{hosptailId}}")>{{cardNum}}</a>
            </td>
        </shiro:hasPermission>
        <td class="dealList-hospitalized">{{hosptialNum}}</td>
        <td class="dealList-comsumptionProject">{{comsumptionProject}}</td>
        <td class="dealList-dealType">{{tradeType}}</td>
        <td class="dealList-dealTime">{{tradeTime}}</td>
        <td class="dealList-dealCost">{{tradeMoney}}</td>
        <td class="dealList-formType">{{tradeSource}}</td>
        <td class="dealList-dealsType">{{states}}</td>
    </tr>
    {{/each}}
    {{/if}}
</script>
<script>
    jeDate({
        dateCell: "#JeStartTime",//isinitVal:true,
        format: "YYYY-MM-DD",
        isTime: false, //isClear:false,
        minDate: "2014-09-19 00:00:00"
    })

    jeDate({
        dateCell: "#JeEndTime",//isinitVal:true,
        format: "YYYY-MM-DD",
        isTime: false, //isClear:false,
        minDate: "2014-09-19 00:00:00"
    })
</script>
<script>
    $(function () {
        setTimeout(function () {
            var obj = {
                "firstName": "交易记录查询",
                //   "secendName":"用户列表"
            };

            text(obj);

        }, 500)

    })
</script>
</body>
</html>