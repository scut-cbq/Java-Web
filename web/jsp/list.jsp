<%@ page language="java" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<HTML>
<HEAD>
    <meta http-equiv="Content-Language" content="zh-cn">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link href="${pageContext.request.contextPath}/css/Style.css" rel="stylesheet" type="text/css"/>
    <script language="javascript" src="${pageContext.request.contextPath}/js/public.js"></script>
    <script type="text/javascript">
        //添加商品
        function addProduct() {
            window.location.href = "${pageContext.request.contextPath}/jsp/addBook.jsp";
        }

        //删除商品
        function p_del() {
            var msg = "您确定要删除该商品吗？";
            if (confirm(msg) == true) {
                return true;
            } else {
                return false;
            }
        }
    </script>
</HEAD>
<body>
<br/>
<form id="Form1" name="Form1">
    <table cellSpacing="1" cellPadding="0" width="100%" align="center" bgColor="#f5fafe" border="0">
        <TBODY>
        <tr>
            <td class="ta_01" align="center" bgColor="#afd1f3"><strong>商 品 列 表</strong>
            </td>
        </tr>
        <tr>
            <td class="ta_01" align="right">
                <button type="button" id="add" name="add" value="添加" class="button_add"
                        onclick="addProduct()">
                    添加
                </button>
            </td>
        </tr>
        <tr>
            <td class="ta_01" align="center" bgColor="#f5fafe">
                <table cellspacing="0" cellpadding="1" rules="all"
                       bordercolor="gray" border="1" id="DataGrid1"
                       style="BORDER-RIGHT: gray 1px solid; BORDER-TOP: gray 1px solid; BORDER-LEFT: gray 1px solid; WIDTH: 100%; WORD-BREAK: break-all; BORDER-BOTTOM: gray 1px solid; BORDER-COLLAPSE: collapse; BACKGROUND-COLOR: #f5fafe; WORD-WRAP: break-word">
                    <tr style="FONT-WEIGHT: bold; FONT-SIZE: 12pt; HEIGHT: 25px; BACKGROUND-COLOR: #afd1f3">
                        <td align="center" width="9%">书号</td>
                        <td align="center" width="18%">书名</td>
                        <td align="center" width="9%">价格</td>
                        <td align="center" width="9%">分类</td>
                        <td width="8%" align="center">库存</td>
                        <td width="30%" align="center">简介</td>
                        <td width="8%" align="center">编辑</td>
                        <td width="8%" align="center">删除</td>
                    </tr>
                    <!--  循环输出所有商品 -->
                    <c:forEach items="${li}" var="p">
                        <tr onmouseover="this.style.backgroundColor = 'white'"
                            onmouseout="this.style.backgroundColor = '#F5FAFE';">
                            <td style="CURSOR: hand; HEIGHT: 22px" align="center" width="200">${p.id}</td>
                            <td style="CURSOR: hand; HEIGHT: 22px" align="center" width="18%">${p.name}</td>
                            <td style="CURSOR: hand; HEIGHT: 22px" align="center" width="8%">${p.price}</td>
                            <td style="CURSOR: hand; HEIGHT: 22px" align="center" width="8%">${p.category}</td>
                            <td style="CURSOR: hand; HEIGHT: 22px" align="center" width="8%">${p.num}</td>
                            <td style="CURSOR: hand; HEIGHT: 22px" align="center" width="8%">${p.description}</td>
                            <td align="center" style="HEIGHT: 22px" width="7%">
                                <a href="${pageContext.request.contextPath}/modifyBook?id=${p.id}&type=admin">编辑</a>
                            </td>
                            <td align="center" style="HEIGHT: 22px" width="7%">
                                <a href="${pageContext.request.contextPath}/deleteBook?id=${p.id}"
                                   onclick="javascript:return p_del()">删除</a>
                            </td>
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