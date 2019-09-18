<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%
    String path = request.getContextPath();
%>
<html>
<head>
<%--    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>--%>
<%--    <link rel="stylesheet" href="<%=path%>/css/pintuer.css">--%>
<%--    <link rel="stylesheet" href="<%=path%>/css/admin.css">--%>

<%--    <script src="<%=path%>/js/jquery1.js"></script>--%>
<%--    <script src="<%=path%>/js/pintuer.js"></script>--%>
<%--    <script src="<%=path%>/js/xadmin.js"></script>--%>
<%--    <script src="<%=path%>/layui/layui.js"></script>--%>

    <link rel="stylesheet" href="<%=path%>/css/font.css">
    <link rel="stylesheet" href="<%=path%>/css/xadmin.css">
    <script type="text/javascript" src="<%=path%>/layui/layui.js" charset="utf-8"></script>
    <script type="text/javascript" src="<%=path%>/js/xa.js"></script>

</head>
<body>
<div class="x-body">
    <form class="layui-form" method="post" action="<%=path%>/edit/fileact.action" enctype="multipart/form-data">
        <div class="layui-form-item">
            <label class="layui-form-label">
                <span class="x-red">*</span>上传图片
            </label>
            <div class="layui-input-inline">
                <div class="site-demo-upbar">
                    <input type="file" name="fileact">
                    <input type="submit" value="上传">
                </div>
            </div>
        </div>
    </form>
        <form class="layui-form" method="post" action="">
        <div class="layui-form-item">
            <label for="username" class="layui-form-label">
                <span class="x-red">*</span>用户账户
            </label>
            <div class="layui-input-inline">
                <input type="text" id="username" name="username" required="" lay-verify="required"
                       autocomplete="off" class="layui-input">
            </div>
            <div class="layui-form-mid layui-word-aux">
                <span class="x-red">*</span>将会成为您唯一的登入名
            </div>
        </div>
        <div class="layui-form-item">
            <label for="role" class="layui-form-label">
                <span class="x-red">*</span>角色
            </label>
            <div class="layui-input-inline">
                <select name="role" id="role">
                    <option value="">请选择角色</option>
                    <option value="超级管理员" name="1">管理员</option>
                    <option value="编辑人员" name="2">用户</option>
                </select>
            </div>
        </div>
        <div class="layui-form-item">
            <label for="L_pass" class="layui-form-label">
                <span class="x-red">*</span>密码
            </label>
            <div class="layui-input-inline">
                <input type="password" id="L_pass" name="pass" required="" lay-verify="pass"
                       autocomplete="off" class="layui-input">
            </div>
            <div class="layui-form-mid layui-word-aux">
                6到16个字符
            </div>
        </div>
        <div class="layui-form-item">
            <label for="L_repass" class="layui-form-label">
                <span class="x-red">*</span>确认密码
            </label>
            <div class="layui-input-inline">
                <input type="password" id="L_repass" name="repass" required="" lay-verify="repass"
                       autocomplete="off" class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <label for="phone" class="layui-form-label">
                <span class="x-red">*</span>手机
            </label>
            <div class="layui-input-inline">
                <input type="text" id="phone" name="phone" required="" lay-verify="phone"
                       autocomplete="off" class="layui-input">
            </div>
            <div class="layui-form-mid layui-word-aux">
                <span class="x-red">*</span>将会成为您唯一的登入名
            </div>
        </div>
        <div class="layui-form-item">
            <label for="L_email" class="layui-form-label">
                <span class="x-red">*</span>邮箱
            </label>
            <div class="layui-input-inline">
                <input type="text" id="L_email" name="email" required="" lay-verify="email"
                       autocomplete="off" class="layui-input">
            </div>
            <div class="layui-form-mid layui-word-aux">
                <span class="x-red">*</span>
            </div>
        </div>
        <div class="layui-form-item">
            <label for="L_repass" class="layui-form-label">
            </label>
            <button  class="layui-btn">
                <input type="submit" value="增加" class="layui-btn">
            </button>
            <button  class="layui-btn" lay-submit=""onclick="x_admin_close()">
                <input type="submit" value="返回" class="layui-btn">
            </button>
        </div>
    </form>
</div>
<script src="<%=path%>/layui/layui.js" charset="utf-8">
</script>
<script src="<%=path%>/js/x-layui.js" charset="utf-8">
</script>
<script>
    layui.use(['form','layer'], function(){
        $ = layui.jquery;
        var form = layui.form()
            ,layer = layui.layer;

        //自定义验证规则
        form.verify({
            nikename: function(value){
                if(value.length < 5){
                    return '昵称至少得5个字符啊';
                }
            }
            ,pass: [/(.+){6,12}$/, '密码必须6到12位']
            ,repass: function(value){
                if($('#L_pass').val()!=$('#L_repass').val()){
                    return '两次密码不一致';
                }
            }
        });

        //监听提交
        form.on('submit(add)', function(data){
            console.log(data);
            //发异步，把数据提交给php
            layer.alert("增加成功", {icon: 6},function () {
                // 获得frame索引
                var index = parent.layer.getFrameIndex(window.name);
                //关闭当前frame
                parent.layer.close(index);
            });
            return false;
        });


    });
</script>

</body>
<%--<body>--%>
<%--<div class="panel admin-panel">--%>
<%--    <div class="body-content">--%>
<%--        <form method="post" action="<%=path%>/zc/wj.action" enctype="multipart/form-data">--%>
<%--            <p></p>--%>
<%--            <div style="width:100%;">--%>
<%--                <table border="1" align="center">--%>
<%--                    <tr>--%>
<%--                        <td>--%>
<%--                <span class="sp">上传文件：--%>
<%--                </span>--%>
<%--                       <input type="file" name="uploadFile">--%>
<%--                        </td>--%>
<%--                    </tr>--%>
<%--                    <tr></tr>--%>
<%--                    <tr>--%>
<%--                        <td>--%>
<%--                <span class="sp">用户账户：--%>
<%--                </span><input type="text" name="user.uid" class="sp1">--%>
<%--                            <span id="uid1" class="sp">&nbsp;&nbsp;</span>--%>
<%--                        </td>--%>
<%--                    </tr>--%>
<%--                    <tr></tr>--%>

<%--                    <tr>--%>
<%--                        <td>--%>
<%--                <span class="sp">用户密码：--%>
<%--                </span><input type="password" name="upass" class="sp1">--%>
<%--                            <span id="upass1" class="sp">&nbsp;&nbsp;</span>--%>
<%--                        </td>--%>
<%--                    </tr>--%>
<%--                    <tr></tr>--%>
<%--                    <tr>--%>
<%--                        <td>--%>
<%--                            <span class="sp">--%>
<%--                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;性别：--%>
<%--                            </span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;--%>
<%--                            <input type="radio" name="sex" class="sp1" checked="checked">男--%>
<%--                            &nbsp;&nbsp;--%>
<%--                            <input type="radio" name="sex" class="sp1">女--%>
<%--                        </td>--%>
<%--                    </tr>--%>
<%--                    <tr></tr>--%>
<%--                    <tr>--%>
<%--                        <td>--%>
<%--                            <span class="sp">兴趣爱好：</span>--%>
<%--                            <input type="checkbox" name="hobby" class="sp1">听歌&nbsp;--%>
<%--                            <input type="checkbox" name="hobby" class="sp1">跳舞&nbsp;--%>
<%--                            <input type="checkbox" name="hobby" class="sp1">打球&nbsp;--%>
<%--                            <input type="checkbox" name="hobby" class="sp1">踢球&nbsp;--%>
<%--                            <input type="checkbox" name="hobby" class="sp1">旅游&nbsp;--%>
<%--                        </td>--%>
<%--                    </tr>--%>
<%--                    <tr></tr>--%>
<%--                    <tr>--%>
<%--                        <td>--%>
<%--                <span class="sp">手机号码：--%>
<%--                </span><input type="text" name="uphone" class="sp1">--%>
<%--                            <span id="uphone1" class="sp">&nbsp;&nbsp;</span>--%>
<%--                        </td>--%>
<%--                    </tr>--%>
<%--                    <tr></tr>--%>
<%--                    <tr>--%>
<%--                        <td>--%>
<%--                            <span class="sp">--%>
<%--                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;学历：--%>
<%--                </span><input type="text" name="xl" class="sp1">--%>
<%--                            <span id="xl1" class="sp">&nbsp;&nbsp;</span>--%>
<%--                        </td>--%>
<%--                    </tr>--%>
<%--                    <tr></tr>--%>
<%--                    <tr>--%>
<%--                        <td>--%>
<%--                            <span class="sp">--%>
<%--                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;职业：--%>
<%--                </span><input type="text" name="zl" class="sp1">--%>
<%--                            <span id="zl1" class="sp">&nbsp;&nbsp;</span>--%>
<%--                        </td>--%>
<%--                    </tr>--%>
<%--                </table>--%>
<%--                <p></p>--%>
<%--                <div align="center">--%>
<%--                    <input type="submit" class="sp" value="注册"></input>&nbsp;&nbsp;--%>
<%--                    <input type="button" class="sp" value="返回" onclick="x_admin_close()"></input>--%>
<%--                </div>--%>

<%--            </div>--%>
<%--        </form>--%>
<%--    </div>--%>
<%--</div>--%>
<%--</body>--%>
</html>