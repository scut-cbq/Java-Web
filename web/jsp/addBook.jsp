<%@ page language="java" pageEncoding="UTF-8" %>
<HTML>
<HEAD>
    <meta http-equiv="Content-Language" content="zh-cn">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <LINK href="${pageContext.request.contextPath}/css/Style.css" type="text/css" rel="stylesheet">

</HEAD>
<body>
<form id="userAction_save_do" name="Form1"
      action="${pageContext.request.contextPath}/addBook" method="post"
      enctype="multipart/form-data">
    &nbsp;
    <table cellSpacing="1" cellPadding="5" width="100%" align="center"
           bgColor="#eeeeee" style="border: 1px solid #8ba7e3" border="0">
        <tr>
            <td class="ta_01" align="center" bgColor="#afd1f3" colSpan="4"
                height="26"><strong><STRONG>添加商品</STRONG> </strong>
            </td>
        </tr>
        <tr>
            <td align="center" bgColor="#f5fafe" class="ta_01">书名：</td>
            <td class="ta_02" bgColor="#ffffff"><input type="text" name="name" class="bg"/></td>
            <td align="center" bgColor="#f5fafe" class="ta_01">价格：</td>
            <td class="ta_02" bgColor="#ffffff">
                <input type="text" name="price" class="bg"/>
            </td>
        </tr>
        <tr>
            <td align="center" bgColor="#f5fafe" class="ta_01">库存：</td>
            <td class="ta_02" bgColor="#ffffff">
                <input type="text" name="num" class="bg"/>
            </td>
            <td align="center" bgColor="#f5fafe" class="ta_01">分类：</td>
            <td class="ta_02" bgColor="#ffffff">
                <select name="category" id="category">
                    <option value="" selected="selected">--选择类别--</option>
                    <option value="计算机">计算机</option>
                    <option value="外语">英语</option>
                    <option value="经营">美食</option>
                    <option value="励志">艺术</option>
                    <option value="社科">少儿</option>
                    <option value="学术">教育</option>
                    <option value="少儿">生活</option>
                    <option value="艺术">科技</option>
                </select>
            </td>
        </tr>
        <tr>
            <td align="center" bgColor="#f5fafe" class="ta_01">图片：</td>
            <td class="ta_01" bgColor="#ffffff" colspan="3">
                <input type="file" name="picture" size="30" value=""/>
            </td>
        </tr>
        <TR>
            <TD class="ta_01" align="center" bgColor="#f5fafe">描述：</TD>
            <TD class="ta_01" bgColor="#ffffff" colSpan="3">
                <textarea name="description" cols="30" rows="3" style="WIDTH: 96%"></textarea>
            </TD>
        </TR>
        <tr>
            <td class="ta_01" style="WIDTH: 100%" align="center"
                bgColor="#f5fafe" colSpan="4">
                <input type="submit" class="button_ok" value="确定">
                <FONT face="宋体">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</FONT>
                <input type="reset" value="重置" class="button_cancel">
                <FONT face="宋体">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </FONT>
                <INPUT class="button_ok" type="button" onclick="history.go(-1)" value="返回"/>
                <span id="Label1"></span>
            </td>
        </tr>
    </table>
</form>
</body>
</HTML>