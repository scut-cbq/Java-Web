<%@ page language="java" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<HTML>
<HEAD>
    <meta http-equiv="Content-Language" content="zh-cn">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link href="${pageContext.request.contextPath}/css/Style.css" rel="stylesheet" type="text/css"/>
    <script language="javascript" src="${pageContext.request.contextPath}/js/public.js"></script>
</HEAD>
<body>
<br/>
<form id="Form1" name="Form1">
    <table cellSpacing="1" cellPadding="0" width="100%" align="center" bgColor="#f5fafe" border="0">
        <TBODY>
        <tr>
            <td class="ta_01" align="center" bgColor="#afd1f3"><strong>订 单 列 表</strong>
            </td>
        </tr>
        <tr>
            <td class="ta_01" align="center" bgColor="#f5fafe">
                <table cellspacing="0" cellpadding="1" rules="all"
                       bordercolor="gray" border="1" id="DataGrid1"
                       style="BORDER-RIGHT: gray 1px solid; BORDER-TOP: gray 1px solid; BORDER-LEFT: gray 1px solid; WIDTH: 100%; WORD-BREAK: break-all; BORDER-BOTTOM: gray 1px solid; BORDER-COLLAPSE: collapse; BACKGROUND-COLOR: #f5fafe; WORD-WRAP: break-word">
                    <tr style="FONT-WEIGHT: bold; FONT-SIZE: 12pt; HEIGHT: 25px; BACKGROUND-COLOR: #afd1f3">
                        <td align="center" width="9%">订单号</td>
                        <td align="center" width="9%">用户名</td>
                        <td align="center" width="9%">收件人姓名</td>
                        <td align="center" width="26%">收件人地址</td>
                        <td width="8%" align="center">收件人号码</td>
                        <td width="30%" align="center">（书号，数量）</td>
                        <td width="8%" align="center">总价</td>
                    </tr>
                    <!--  循环输出所有商品 -->
                    <c:forEach items="${li}" var="p">
                        <tr onmouseover="this.style.backgroundColor = 'white'"
                            onmouseout="this.style.backgroundColor = '#F5FAFE';">
                            <td style="CURSOR: hand; HEIGHT: 22px" align="center" width="9%">${p.id}</td>
                            <td style="CURSOR: hand; HEIGHT: 22px" align="center" width="9%">${p.username}</td>
                            <td style="CURSOR: hand; HEIGHT: 22px" align="center" width="9%">${p.receiverName}</td>
                            <td style="CURSOR: hand; HEIGHT: 22px" align="center" width="26%">${p.receiverAddress}</td>
                            <td style="CURSOR: hand; HEIGHT: 22px" align="center" width="8%">${p.receiverPhone}</td>
                            <td style="CURSOR: hand; HEIGHT: 22px" align="center" width="30%">${p.id_and_num}</td>
                            <td style="CURSOR: hand; HEIGHT: 22px" align="center" width="8%">${p.total}</td>
                        </tr>
                    </c:forEach>
                </table>
            </td>
        </tr>
        </TBODY>
    </table>
</form>
</body>
</HTML>