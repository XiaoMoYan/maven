<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<%
    String path=request.getContextPath();
%>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>后台管理中心</title>
    <link href="<%=path%>/css/pintuer.css" rel="stylesheet" rev="stylesheet" type="text/css" media="all" />
    <link href="<%=path%>/css/admin.css" rel="stylesheet" rev="stylesheet" type="text/css" media="all" />
    <script type="text/javascript" src="<%=path%>/js/jquery1.js"></script>
</head>
<body style="background-color:#f2f9fd;">
<div class="header bg-main">
    <div class="logo margin-big-left fadein-top">
        <h1><img src="<%=path%>/images/y.jpg" class="radius-circle rotate-hover" height="50" alt="" />后台管理中心</h1>
    </div>

    <div class="head-l"><a class="button button-little bg-green" href="" target="_blank"><span class="icon-home"></span>
      ${sessionScope.user.uid} </a> &nbsp;&nbsp;
        <a href="##" class="button button-little bg-blue"><span class="icon-wrench"></span> 清除缓存</a> &nbsp;&nbsp;
        <a class="button button-little bg-red" href="login.html"><span class="icon-power-off"></span> 退出登录</a> </div>
</div>
<div class="leftnav">
    <div class="leftnav-title"><strong><span class="icon-list"></span>菜单列表</strong></div>
    <h2><span class="icon-user"></span>基本设置</h2>
    <ul style="display:block">
       <li><a href="<%=path%>/jsp/contro.jsp" target="right"><span class="icon-caret-right"></span>用户管理</a></li>
        <li><a href="<%=path%>/pass.html" target="right"><span class="icon-caret-right"></span>修改密码</a></li>
        <li><a href="<%=path%>/page.html" target="right"><span class="icon-caret-right"></span>单页管理</a></li>
        <li><a href="<%=path%>/adv.html" target="right"><span class="icon-caret-right"></span>首页轮播</a></li>
       <li><a href="<%=path%>/book.html" target="right"><span class="icon-caret-right"></span>留言管理</a></li>
        <li><a href="<%=path%>/column.html" target="right"><span class="icon-caret-right"></span>栏目管理</a></li>
    </ul>
    <h2><span class="icon-pencil-square-o"></span>栏目管理</h2>
    <ul>
       <li><a href="<%=path%>/list.html" target="right"><span class="icon-caret-right"></span>内容管理</a></li>
        <li><a href="<%=path%>/add.html" target="right"><span class="icon-caret-right"></span>添加内容</a></li>
       <li><a href="<%=path%>/cate.html" target="right"><span class="icon-caret-right"></span>分类管理</a></li>
   </ul>

</div>
<ul class="bread">
    <li><a href="{:U('Index/info')}" target="right" class="icon-home">首页</a></li>
    <li><a href="##" id="a_leader_txt">管理端</a></li>
</ul>
<div class="admin">
    <iframe scrolling="auto" rameborder="0" src="<%=path%>/jsp/info.jsp" name="right" width="100%" height="100%"></iframe>
</div>
</body>
</html>
