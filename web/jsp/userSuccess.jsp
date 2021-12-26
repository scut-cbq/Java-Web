<%@ page pageEncoding="UTF-8" contentType="text/html;charset=utf-8" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <title>华工书店</title>
    <link href="../css/reset.css" rel="stylesheet" type="text/css" />
    <link href="../css/page.css" rel="stylesheet" type="text/css" />
    <script src="../js/jquey-1.8.0.min.js"></script>
    <script src="../js/imgTab.js"></script>
</head>

<body>
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
        <div class="search fr">
            <form method="post" action="books/1.jsp">
                <input type="text" name="searchMess" autocomplete="on" placeholder="Web应用开发" class="text gray">
                <input type="submit" name="g" value="搜索" class="button">
            </form>
        </div>
    </div>
    <!-- /logo与search区域 -->
    <!-- 导航条 -->
    <div id="navbar">
        <div class="wrap clear">
            <h3 class="navindex"><a href="userSuccess.jsp">图书分类</a></h3>
            <ul>
                <li>
                    <a title="最新" href="books/1.jsp" target="_blank">最新</a>
                </li>
                <li>
                    <a title="计算机" href="books/1.jsp" target="_blank">计算机</a>
                </li>
                <li>
                    <a title="英语" href="books/2.jsp" target="_blank">英语</a>
                </li>
                <li>
                    <a title="美食" href="books/3.jsp" target="_blank">美食</a>
                </li>
                <li>
                    <a title="艺术" href="books/4.jsp" target="_blank">艺术</a>
                </li>

            </ul>
            <div class="sales fr"></div>
        </div>
    </div>
    <!-- /导航条 -->
    <!-- 导航盒和焦点图 -->
    <div id="section" class="wrap clear">
        <!-- 导航盒 -->
        <div id="navbox" class="navbox clear">
            <ul>
                <li class="list">
                    <div id="list_cont" class="list_cont">
                        <h3>
                            <a href="books/1.jsp" target="_blank">计算机</a>
                        </h3>
                        <samp class="corner">&gt;</samp>
                    </div>
                </li>
                <li class="list">
                    <div id="list_cont" class="list_cont">
                        <h3>
                            <a href="books/2.jsp" target="_blank">英语</a>
                        </h3>
                        <samp class="corner">&gt;</samp>
                    </div>
                </li>
                <li class="list">
                    <div id="list_cont" class="list_cont">
                        <h3>
                            <a href="books/3.jsp" target="_blank">美食</a>
                        </h3>
                        <samp class="corner">&gt;</samp>
                    </div>
                </li>
                <li class="list">
                    <div id="list_cont" class="list_cont">
                        <h3>
                            <a href="books/4.jsp" target="_blank">艺术</a>
                        </h3>
                        <samp class="corner">&gt;</samp>
                    </div>
                </li>
                <li class="list">
                    <div id="list_cont" class="list_cont">
                        <h3>
                            <a href="books/1.jsp" target="_blank">少儿</a>
                        </h3>
                        <samp class="corner">&gt;</samp>
                    </div>
                </li>
                <li class="list">
                    <div id="list_cont" class="list_cont">
                        <h3>
                            <a href="books/1.jsp" target="_blank">教育</a>
                        </h3>
                        <samp class="corner">&gt;</samp>
                    </div>
                </li>
                <li class="list">
                    <div id="list_cont" class="list_cont">
                        <h3>
                            <a href="books/1.jsp" target="_blank">生活</a>
                        </h3>
                        <samp class="corner">&gt;</samp>
                    </div>
                </li>
                <li class="list">
                    <div id="list_cont" class="list_cont">
                        <h3>
                            <a href="books/1.jsp" target="_blank">科技</a>
                        </h3>
                    </div>
                </li>
            </ul>
        </div>
        <!-- 焦点图 -->
        <div class="anythingSlider clear">
            <div class="tWrapper" style="overflow: hidden; ">
                <ul>
                    <li><a href="books/1.jsp" title="Java Web程序设计任务教程" target="_blank"><img width="700" height="456"
                                src="../image/1.png" alt="Java Web程序设计任务教程"></a></li>
                    <li><a href="books/2.jsp" title="新概念英语第三册" target="_blank"><img width="700" height="456"
                                src="../image/2.png" alt="新概念英语第三册"></a></li>
                    <li><a href="books/3.jsp" title="舌尖上的中国" target="_blank"><img width="700" height="456"
                                src="../image/3.png" alt="舌尖上的中国"></a></li>
                    <li><a href="books/4.jsp" title="你好，艺术" target="_blank"><img width="700" height="456"
                                src="../image/4.png" alt="你好，艺术"></a></li>
                </ul>
            </div>
        </div>
    </div>


    <!-- 底部 -->
    <div id="service-2014" clstag="h|keycount|2015|32a">
        <div class="slogen clear">
            <img class='bottom' width="841" height="80" src="../image/bottom.gif" alt="正品保障">
        </div>
    </div>
</body>

</html>