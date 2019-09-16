<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%
    String path = request.getContextPath();
%>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link rel="stylesheet" href="<%=path%>/css/pintuer.css">
    <link rel="stylesheet" href="<%=path%>/css/admin.css">

    <script src="<%=path%>/js/jquery1.js"></script>
    <script src="<%=path%>/js/pintuer.js"></script>
    <script src="<%=path%>/js/xadmin.js"></script>
    <script src="<%=path%>/layui/layui.js"></script>

</head>
<body>
<div class="panel admin-panel">
    <div class="body-content">
        <form method="post" action="<%=path%>/zc/wj.action" enctype="multipart/form-data">
            <p></p>
            <div style="width:100%;">
                <table border="1" align="center">
                    <tr>
                        <td>
                <span class="sp">上传文件：
                </span>
                       <input type="file" name="uploadFile">
                        </td>
                    </tr>
                    <tr></tr>
                    <tr>
                        <td>
                <span class="sp">用户账户：
                </span><input type="text" name="user.uid" class="sp1">
                            <span id="uid1" class="sp">&nbsp;&nbsp;</span>
                        </td>
                    </tr>
                    <tr></tr>

                    <tr>
                        <td>
                <span class="sp">用户密码：
                </span><input type="password" name="upass" class="sp1">
                            <span id="upass1" class="sp">&nbsp;&nbsp;</span>
                        </td>
                    </tr>
                    <tr></tr>
                    <tr>
                        <td>
                            <span class="sp">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;性别：
                            </span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <input type="radio" name="sex" class="sp1" checked="checked">男
                            &nbsp;&nbsp;
                            <input type="radio" name="sex" class="sp1">女
                        </td>
                    </tr>
                    <tr></tr>
                    <tr>
                        <td>
                            <span class="sp">兴趣爱好：</span>
                            <input type="checkbox" name="hobby" class="sp1">听歌&nbsp;
                            <input type="checkbox" name="hobby" class="sp1">跳舞&nbsp;
                            <input type="checkbox" name="hobby" class="sp1">打球&nbsp;
                            <input type="checkbox" name="hobby" class="sp1">踢球&nbsp;
                            <input type="checkbox" name="hobby" class="sp1">旅游&nbsp;
                        </td>
                    </tr>
                    <tr></tr>
                    <tr>
                        <td>
                <span class="sp">手机号码：
                </span><input type="text" name="uphone" class="sp1">
                            <span id="uphone1" class="sp">&nbsp;&nbsp;</span>
                        </td>
                    </tr>
                    <tr></tr>
                    <tr>
                        <td>
                            <span class="sp">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;学历：
                </span><input type="text" name="xl" class="sp1">
                            <span id="xl1" class="sp">&nbsp;&nbsp;</span>
                        </td>
                    </tr>
                    <tr></tr>
                    <tr>
                        <td>
                            <span class="sp">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;职业：
                </span><input type="text" name="zl" class="sp1">
                            <span id="zl1" class="sp">&nbsp;&nbsp;</span>
                        </td>
                    </tr>
                </table>
                <p></p>
                <div align="center">
                    <input type="submit" class="sp" value="注册"></input>&nbsp;&nbsp;
                    <input type="button" class="sp" value="返回" onclick="x_admin_close()"></input>
                </div>

            </div>
        </form>
    </div>
</div>
</body>
</html>