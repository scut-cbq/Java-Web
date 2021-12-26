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
        <form action="${pageContext.request.contextPath}/register" method="post" onsubmit="return checkForm();">
            <table width="850px" cellspacing="0">
                <tr>
                    <td style="padding: 30px">
                        <h1>新用户注册</h1>
                        <table width="90%" cellspacing="2" class="upline">
                            <tr>
                                <td style="text-align: right">用户名：</td>
                                <td><input type="text" class="textinput" id="username" name="username"
                                        onkeyup="checkUsername();" />
                                </td>
                                <td colspan="2"><span id="usernameMsg"></span>
                                    <font color="#999999">字母数字下划线1到10位, 不能是数字开头</font>
                                </td>
                            </tr>
                            <tr>
                                <td style="text-align: right; width: 20%">邮箱：</td>
                                <td style="width: 40%">
                                    <input type="text" class="textinput" id="email" name="email"
                                        onkeyup="checkEmail();" />
                                </td>
                                <td colspan="2"><span id="emailMsg"></span>
                                    <font color="#999999">请输入有效的邮箱地址</font>
                                </td>
                            </tr>
                            <tr>
                                <td style="text-align: right">密码：</td>
                                <td><input type="password" class="textinput" id="password" name="password"
                                        onkeyup="checkPassword();" /></td>
                                <td><span id="passwordMsg"></span>
                                    <font color="#999999">密码请设置6-16位字符</font>
                                </td>
                            </tr>
                            <tr>
                                <td style="text-align: right">重复密码：</td>
                                <td>
                                    <input type="password" class="textinput" id="repassword" name="repassword"
                                        onkeyup="checkConfirm();" />
                                </td>
                                <td><span id="confirmMsg"></span>&nbsp;</td>
                            </tr>
                            <tr>
                                <td style="text-align: right">联系电话：</td>
                                <td colspan="2">
                                    <input type="text" class="textinput" name="telephone" />
                                </td>
                                <td>&nbsp;</td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
            <input type="submit" value="注册" class="button">
        </form>
    </div>
</body>

</html>