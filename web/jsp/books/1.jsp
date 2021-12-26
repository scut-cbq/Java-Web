<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>详情页</title>
    <link href="../../css/reset.css" rel="stylesheet" type="text/css" />
    <link href="../../css/page.css" rel="stylesheet" type="text/css" />
    <link href="../../css/detailPage.css" rel="stylesheet" type="text/css" />
    <script src="../../js/jquey-1.8.0.min.js"></script>
</head>

<body>
<!-- 顶部导航 -->
<div id="top">
    <div class="wrap clear">
        <div class="topRight fr clear">
            <ul class="rightNav fr">
                <li class="myInformation">
                    <a title="购物车" href="login.jsp">购物车</a>
                    <span class="sep">|</span> </li>
                <li>
                    <a title="登录" name="登录" href="login.jsp">登录</a>
                    <span class="sep">|</span> </li>
                </li>
                <li>
                    <a title="注册" name="注册" href="register.jsp">注册</a>
                </li>
            </ul>
        </div>
    </div>
</div>

<!-- /广告区域 -->
<!-- logo与search区域 -->
<div id="logo_line" class="wrap clear">
    <div class="logo fl">
        <a href="../index.jsp">
            <img src="../../image/scut bookstore.png" alt="华工书店">
        </a>
    </div>
    <div class="search fr">
        <form method="post" action="1.jsp">
            <input type="text" name="searchMess" autocomplete="on" placeholder="Web应用开发" class="text gray">
            <input type="submit" name="g" value="搜索" class="button">
        </form>
    </div>
</div>
<!-- /logo与search区域 -->
<!-- 导航条 -->
<div id="navbar">
    <div class="wrap clear">
        <h3 class="navindex"><a href="1.jsp">图书分类</a></h3>
        <ul>
            <li>
                <a title="最新" href="1.jsp" target="_blank">最新</a>
            </li>
            <li>
                <a title="计算机" href="1.jsp" target="_blank">计算机</a>
            </li>
            <li>
                <a title="英语" href="2.jsp" target="_blank">英语</a>
            </li>
            <li>
                <a title="美食" href="3.jsp" target="_blank">美食</a>
            </li>
            <li>
                <a title="艺术" href="4.jsp" target="_blank">艺术</a>
            </li>

        </ul>
        <div class="sales fr"></div>
    </div>
</div>
<!-- /导航条 -->
<!-- 商品内容列表区域上部 -->
<div id="content" class="wrap clear">
    <div class="description clear">
        <div class="dleftArea fl">
            <div class="topItem">
                <a href="">
                    <img src="../../image/1.png" alt="java web.png" height="300" width="500">
                </a>
            </div>
        </div>
        <div class="drightArea fl clear">
            <div class="itemInfo fl clear">
                <div id="name">
                    <h1>Java Web程序设计任务教程</h1>
                </div>
                <div id="summary">
                    <div id="summary-price">
                        <div class="dt">价 格 ：</div>
                        <div class="dd">
                            <strong class="p-price" id="jd-price">￥99.00</strong>
                        </div>
                    </div>

                    <div id="summary-stock" class="clear">
                        <span class="clr"></span>
                    </div>
                </div>
                <!-- 购买数量 -->
                <dl class="amount dl clear">
                    <dt class="property-type">数 量：</dt>
                    <dd>
                                <span class="stock" id="J_Stock">
                                        <a href="#" hidefocus="" class="reduce J_Reduce iconfont disable-reduce">-</a>
                                        <input id="J_IptAmount" type="text" class="tb-text" value="1" maxlength="8" title="请输入购买量"><a href="#" hidefocus="" class="tb-increase J_Increase tb-iconfont">+</a>&nbsp;&nbsp;&nbsp;  件
                                    </span>
                        <em>(库存<span id="J_SpanStock" class="count">99</span>件)</em>
                    </dd>
                    <div id="summary-service" clstag="shangpin|keycount|product|1|fuwu">
                        <div class="dt">简 介：</div>
                        <div class="dd">
                            <span class="deliver">Java Web</span>
                        </div>
                    </div>
                </dl>
                <!-- /购买数量 -->
                <!-- 立即购买，放入购物车 -->
                <div id="J_juValid" class="action clear">
                    <div class="btn-add fl">
                        <a href="../userSuccess.jsp" target="_self" title="加入购物车" class="J_LinkAdd"><i class="iconfont"></i>加入购物车</a>
                    </div>
                </div>
                <!-- /立即购买，放入购物车 -->
            </div>
        </div>
    </div>
</div>
<!-- /页尾链接和版权信息 -->
<script src="../js/jquery-1.4.2.min.js"></script>
<script src="../js/imgTab.js"></script>
</body>

</html>

