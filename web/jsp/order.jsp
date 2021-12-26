<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <title>华工书店</title>
    <link rel="stylesheet" href="../css/main.css" type="text/css"/>
    <script type="text/javascript" src="../js/order.js"></script>
    <link href="../css/page.css" rel="stylesheet" type="text/css"/>
    <link href="../css/reset.css" rel="stylesheet" type="text/css"/>
</head>
<body class="main">
<!-- 顶部导航 -->
<div id="top">
    <div class="wrap clear">
        <div class="topRight fr clear">
            <ul class="rightNav fr">
                <li class="myInformation">
                    <a title="购物车" href="shoppingCart.jsp">购物车</a>
                    <span class="sep">|</span>
                </li>
                <li>
                    <a title="退出" name="退出" href="index.jsp">退出</a>
                </li>
            </ul>
        </div>
    </div>
</div>

<!-- logo与search区域 -->
<div id="logo_line" class="wrap clear">
    <div class="logo fl">
        <a href="userSuccess.jsp">
            <img src="../image/scut bookstore.png" alt="华工书店">
        </a>
    </div>
    <!-- /logo与search区域 -->
    <div id="divpagecontent">
        <table width="100%" border="0" cellspacing="0">
            <tr>
                <td>
                    <div style="text-align:right; margin:5px 10px 5px 0px">
                        <a href="${pageContext.request.contextPath }/jsp/userSuccess.jsp">首页</a>
                        &nbsp;&nbsp;&nbsp;&nbsp;&gt;&nbsp;&nbsp;&nbsp;
                        <a href="${pageContext.request.contextPath}/jsp/shoppingCart.jsp">&nbsp;购物车</a>
                        &nbsp;&nbsp;&nbsp;&nbsp;&gt;&nbsp;&nbsp;&nbsp;&nbsp;订单
                    </div>
                    <form id="orderForm" action="${pageContext.request.contextPath}/createOrder" method="post">
                        <table cellspacing="0" class="infocontent">
                            <tr>
                                <td>
                                    <table width="100%" border="0" cellspacing="0">
                                        <tr>
                                            <td>
                                                <table cellspacing="1" class="carttable">
                                                    <tr>
                                                        <td width="10%">序号</td>
                                                        <td width="40%">商品名称</td>
                                                        <td width="10%">价格</td>
                                                        <td width="10%">类别</td>
                                                        <td width="10%">数量</td>
                                                        <td width="10%">小计</td>
                                                    </tr>
                                                </table>
                                                <table width="100%" border="0" cellspacing="0">
                                                    <tr>
                                                        <td width="10%">1</td>
                                                        <td width="40%">Java Web程序设计任务教程</td>
                                                        <td width="10%">99.0</td>
                                                        <td width="10%">计算机</td>
                                                        <td width="10%">1</td>
                                                        <td width="10%">99.0</td>
                                                    </tr>
                                                </table>
                                                <table cellspacing="1" class="carttable">
                                                    <tr>
                                                        <td style="text-align:right; padding-right:40px;"><font
                                                                style="color:#2f1300">合计：&nbsp;&nbsp;99.0元</font>
                                                            <input type="hidden" name="money" value="99.0元">
                                                        </td>
                                                    </tr>
                                                </table>
                                                <p>
                                                    收货地址：<input id="receiverAddress" name="receiverAddress" type="text"
                                                                value="" style="width:350px"
                                                                onkeyup="checkReceiverAddress();"/>
                                                    &nbsp;&nbsp;&nbsp;&nbsp;
                                                    <span id="receiverAddressMsg"></span>
                                                    <br/>
                                                    收货人：&nbsp;&nbsp;&nbsp;&nbsp;<input id="receiverName"
                                                                                       name="receiverName" type="text"
                                                                                       value="${user.username}"
                                                                                       style="width:150px"
                                                                                       onkeyup="checkReceiverName();"/>
                                                    <span id="receiverNameMsg"></span>
                                                    &nbsp;&nbsp;&nbsp;&nbsp;
                                                    <br/>
                                                    联系方式：<input type="text" id="receiverPhone" name="receiverPhone"
                                                                value="${user.telephone}" style="width:150px"
                                                                onkeyup="checkReceiverPhone();"/>
                                                    <span id="receiverPhoneMsg"></span>
                                                    &nbsp;&nbsp;&nbsp;&nbsp;
                                                </p>
                                                <hr/>
                                                <p style="text-align:right">
                                                    <input type="button" name="pay" value="支付" onclick="checkOnSubmit()">
                                                </p>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                        </table>
                    </form>
                </td>
            </tr>
        </table>
    </div>
</div>
</body>
</html>
