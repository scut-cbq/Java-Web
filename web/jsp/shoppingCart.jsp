<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <meta charset="utf-8">
    <title>华工书店</title>
    <link href="../css/main.css" rel="stylesheet"  type="text/css"/>
    <link href="../css/page.css" rel="stylesheet"  type="text/css"/>
    <link href="../css/reset.css" rel="stylesheet"  type="text/css"/>
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
                    &nbsp;&nbsp;&nbsp;&nbsp;&gt;&nbsp;&nbsp;&nbsp;&nbsp;购物车
                </div>
                <table cellspacing="0" class="infocontent">
                    <tr>
                        <td>
                            <table width="100%" border="0" cellspacing="0">
                                <tr>
                                    <td>
                                        <table cellspacing="1" class="carttable">
                                            <tr>
                                                <td width="10%">序号</td>
                                                <td width="30%">商品名称</td>
                                                <td width="10%">价格</td>
                                                <td width="20%">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;数量</td>
                                                <td width="10%">库存</td>
                                                <td width="10%">小计</td>
                                                <td width="10%">取消</td>
                                            </tr>
                                        </table>
                                        <table width="100%" border="0" cellspacing="0">
                                            <tr>
                                                <td width="10%">1</td>
                                                <td width="30%">Java Web程序设计任务教程</td>
                                                <td width="10%">99.0</td>
                                                <td width="20%">
                                                    <input type="button" value='-' style="width:20px">
                                                    <input name="text" type="text" value="1" style="width:40px;text-align:center"/>
                                                    <input type="button" value='+' style="width:20px">
                                                </td>
                                                <td width="10%">99</td>
                                                <td width="10%">99.0</td>
                                                <td width="10%">
                                                    <a href="#" style="color:#FF0000; font-weight:bold">X</a>
                                                </td>
                                            </tr>
                                        </table>

                                        <table cellspacing="1" class="carttable">
                                            <tr>
                                                <td style="text-align:right; padding-right:40px;">
                                                    <font style="color:#2f1300; font-weight:bold">合计：&nbsp;&nbsp;99.0元</font>
                                                </td>
                                            </tr>
                                        </table>
                                        <div style="text-align:right; margin-top:10px">
                                            <!--结账 -->
                                            <a href="${pageContext.request.contextPath}/jsp/order.jsp">
                                                <input type="button" name="buy" value="购买" class="button">
                                            </a>
                                        </div>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</div>
</body>
</html>
