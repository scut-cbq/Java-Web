<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>

<head>

    <title>华工书店用户注册</title>
    <link rel="stylesheet" href="../css/main.css" type="text/css" />
    <script type="text/javascript" src="../js/form.js"></script>
</head>

<body class="main">

    <div id="divcontent">
        <div id='logo'>
            <a title="华工书店" href="index.jsp">
                <img title="华工书店" src="../image/scut bookstore.png" width="268" height="60">
            </a>
        </div>
        <form action="${pageContext.request.contextPath}/login" method="post" onsubmit="return checkForm();">
            <table width="850px" cellspacing="0">
                <tr>
                    <td style="padding: 30px">
                        <h1>登录</h1>
                        <table width="90%" cellspacing="2" class="upline">
                            <tr>
                                <td style="text-align: right">用户名：</td>
                                <td><input type="text" class="textinput" id="username" name="username"
                                        onkeyup="checkUsername();" />
                                </td>
                            </tr>
                            <tr>
                                <td style="text-align: right">密码：</td>
                                <td><input type="password" class="textinput" id="password" name="password"
                                        onkeyup="checkPassword();" /></td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
            <input type="submit" value="登录" class="button">
        </form>
    </div>
</body>

</html>