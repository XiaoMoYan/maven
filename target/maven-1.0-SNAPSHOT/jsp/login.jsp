<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%
String path=request.getContextPath();
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>系统登录</title>
    <link href="<%=path%>/css/login.css" rel="stylesheet" rev="stylesheet" type="text/css" media="all" />
    <link href="<%=path%>/css/demo.css" rel="stylesheet" rev="stylesheet" type="text/css" media="all" />
    <script type="text/javascript" src="<%=path%>/js/jquery1.42.min.js"></script>
    <script type="text/javascript" src="<%=path%>/js/jquery.SuperSlide.js"></script>
    <script type="text/javascript" src="<%=path%>/js/login.js"></script>
</head>

<body>


<div class="header">
    <h1 class="headerLogo"><a title="后台管理系统" target="_blank" href="#"><img alt="logo" src="<%=path%>/images/logo.gif"></a></h1>
    <div class="headerNav">
        <a target="_blank" href="#">华软官网</a>
        <a target="_blank" href="#">关于华软</a>
        <a target="_blank" href="#">开发团队</a>
        <a target="_blank" href="#">意见反馈</a>
        <a target="_blank" href="#">帮助</a>
    </div>
</div>

<div class="banner">

    <div class="login-aside">
        <div id="o-box-up"></div>
        <div id="o-box-down"  style="table-layout:fixed;">
            <div class="error-box"></div>

            <form class="registerform" action="<%=path%>/admin/back.action" method="post">
                <div class="fm-item">
                    <label  class="form-label">MISS系统登陆：</label>
                    <input type="text" maxlength="100" placeholder="请输入账号" required="required" id="uid" name="uid" class="i-text" onblur="return check()"  datatype="s6-18" errormsg="用户名至少6个字符,最多18个字符！"  >
                    <span id="uid1"></span>
                    <div class="ui-form-explain"></div>
                </div>

                <div class="fm-item">
                    <label class="form-label">登陆密码：</label>
                    <input type="password" maxlength="100" placeholder="请输入密码" id="upass" required="required" name="upass" onblur="return check1()" class="i-text" datatype="*6-16" nullmsg="请设置密码！" errormsg="密码范围在6~16位之间！">
                    <span id="upass1"></span>
                    <div class="ui-form-explain"></div>
                </div>
                <input type="checkbox" name="xb" value="111">111
                <input type="checkbox" name="xb" value="122">122
                <input type="checkbox" name="xb" value="121">121
                <input type="checkbox" name="xb" value="123">123
                <input type="checkbox" name="xb" value="231">231
<%--                				<div class="fm-item pos-r">--%>
<%--                                    <label class="form-label">验证码</label>--%>
<%--                                    <input type="text" value="输入验证码" maxlength="100" id="yzm" class="i-text yzm" nullmsg="请输入验证码！" >--%>
<%--                                    <div class="ui-form-explain"><img src="<%=path%>/login/images/yzm.jpg" class="yzm-img" /></div>--%>
<%--                                </div>--%>
                <div class="fm-item">
                    <label  class="form-label"></label>
                    <input type="submit" value="" tabindex="4" id="send-btn" class="btn-login">
                    <div class="ui-form-explain"></div>
                </div>
            </form>

        </div>

    </div>

    <div class="bd">
        <ul>
            <li style="background:url(<%=path%>/img/theme-pic1.jpg) #CCE1F3 center 0 no-repeat;"><a target="_blank" href="#"></a></li>
            <li style="background:url(<%=path%>/img/theme-pic2.jpg) #BCE0FF center 0 no-repeat;"><a target="_blank" href="#"></a></li>
        </ul>
    </div>

    <div class="hd"><ul></ul></div>
</div>
<script type="text/javascript">jQuery(".banner").slide({ titCell:".hd ul", mainCell:".bd ul", effect:"fold",  autoPlay:true, autoPage:true, trigger:"click" });</script>


<div class="banner-shadow"></div>

</body>
</html>
