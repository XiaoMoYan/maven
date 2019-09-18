<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
    String path=request.getContextPath();
%>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>用戶信息</title>
    <link rel="stylesheet" href="<%=path%>/css/font.css">
    <link rel="stylesheet" href="<%=path%>/css/xadmin.css">
    <script src="<%=path%>/layui/layui.js" charset="utf-8"></script>
    <script type="text/javascript" src="<%=path%>/js/xa.js"></script>
</head>
<body>
<div class="layui-fluid">
    <div class="layui-row layui-col-space15">
        <div class="layui-col-md12">
            <div class="layui-card">
                <div class="layui-card-body ">
                    <div class="demoTable">
                        <div class="layui-inline layui-show-xs-block">
                            <input class="layui-input"  autocomplete="off" placeholder="开始日" name="start" id="start">
                        </div>
                        <div class="layui-inline layui-show-xs-block">
                            <input class="layui-input"  autocomplete="off" placeholder="截止日" name="end" id="end">
                        </div>
                        <div class="layui-inline layui-show-xs-block">
                            <input type="text" name="uname"  placeholder="请输入用户名" autocomplete="off" class="layui-input" id="demoReload">
                        </div>

                        <button class="layui-btn" data-type="reload">搜索</button>
                    </div>

                </div>
                <div class="layui-card-header">
                    <button class="layui-btn layui-btn-danger" onclick="delAll()"><i class="layui-icon"></i>批量删除</button>
                    <button class="layui-btn" onclick="xadmin.open('注册用户','<%=path%>/jsp/register.jsp',600,500)">
                        <i class="layui-icon"></i>注册</button>
                </div>
                <div class="layui-card-body" align="center" >
                    <table class="layui-table" lay-filter="test" id="demo" align="center">
                        <thead>
                        </thead>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>

<%--表格数据--%>
<script>
    layui.use('table', function(){
        var table = layui.table;
        //第一个实例
        table.render({
            elem: '#demo'
            ,height: 295
            ,limit: 5
            ,id:'testReload'
            ,url: '<%=path%>/admin/listajax.action' //数据接口
            ,page: true //开启分页
            ,cols: [[ //表头
                {type:'checkbox',title:'id',width:80}
                ,{field: 'uid', title: '用户账号', width:120, sort: true}
                ,{field: 'uname', title: '用户名称', width:100}
                ,{field: 'usex', title: '性别', width:100, sort: true}
                ,{field: 'uxl', title: '学历', width:100}
                ,{field: 'ustate', title: '状态', width:100,templet: '#ustate'}
                ,{field: 'uzy', title: '职业', width: 100}
                ,{field: 'uphone', title: '电话', width: 150, sort: true}
                ,{field: 'uemail', title: '邮件', width: 100}
                ,{field: 'ucz', title: '操作', width: 150, sort: true,toolbar: '#ucz'}
            ]]
        });
        //监听行工具事件
        table.on('tool(test)', function(obj){
            var data = obj.data;
            //console.log(obj)
            if(obj.event === 'del'){
                layer.confirm('真的删除行么', function(index){
                    fal("<%=path%>/edit/delete.action",data.uid);
                    layer.close(index);
                    obj.del();
                });
            } else if(obj.event === 'edit'){
                layer.prompt({
                    formType: 2
                    ,value: data.email
                }, function(value, index){
                    obj.update({
                        email: value
                    });
                    layer.close(index);
                });
            }
        });
        var $ = layui.$, active = {
            reload: function(){
                var demoReload = $('#demoReload');
                //执行重载
                table.reload('testReload', {
                    page: {
                        curr: 1 //重新从第 1 页开始
                    }
                    ,where: {
                       uname:demoReload.val()
                    }
                }, 'data');
            }
        };

        $('.demoTable .layui-btn').on('click', function(){
            var type = $(this).data('type');
            active[type] ? active[type].call(this) : '';
        });

        function fal(url,uid) {
            $.ajax({
                async: true,
                type: "post",
                url: url,
                data: {"uid":uid},
                success: function (dat) {
                    if(dat==1){
                        layer.msg("修改成功");
                    }else{
                        layer.msg("修改失败");
                    }
                    table.reload('testReload', {

                        where:{
                        }
                    }, 'data');
                },
                error: function (dat) {
                    layer.msg('错误');
                }
            })
        }
    });
</script>

<script type="text/html" id="ucz">
    <div class = "layui-btn-container" >
        <a title="编辑"  onclick="x_admin_show('编辑','member-edit.html',600,400)" href="javascript:;">
            <i class="layui-icon">&#xe642;</i>
        </a>
        <a onclick="x_admin_show('修改密码','member-password.html',600,400)" title="修改密码" href="javascript:;">
            <i class="layui-icon">&#xe631;</i>
        </a>
        <a title="删除" class="layui-btn-xs" lay-event="del">
            <i class="layui-icon">&#xe640;</i></a>
    </div >
</script>

<script type="text/html" id="ustate">
    <a onclick="member_stop(this,'10001')" href="javascript:;">
        <input type = "checkbox" name = "sex" value = "{{d.id}}" lay-skin = "switch"lay-text = "启用|禁用">
    </a>
</script>



<script>
    layui.use(['laydate','form'], function(){
        var laydate = layui.laydate;
        var  form = layui.form;

        // 监听全选
        form.on('checkbox(checkall)', function(data){
            if(data.elem.checked){
                $('tbody input').prop('checked',true);
            }else{
                $('tbody input').prop('checked',false);
            }
            form.render('checkbox');
        });

        //执行一个laydate实例
        laydate.render({
            elem: '#start' //指定元素
        });

        //执行一个laydate实例
        laydate.render({
            elem: '#end' //指定元素
        });
    });

    /*用户-停用*/
    function member_stop(obj,id){
        layer.confirm('确认要停用吗？',function(index){
            if($(obj).attr('title')=='启用'){
                //发异步把用户状态进行更改
                $(obj).attr('title','停用')
                $(obj).find('i').html('&#xe62f;');
                $(obj).parents("tr").find(".td-status").find('span').addClass('layui-btn-disabled').html('停用');
                layer.msg('停用!',{icon: 5,time:1000});
            }else{
                $(obj).attr('title','启用')
                $(obj).find('i').html('&#xe601;');

                $(obj).parents("tr").find(".td-status").find('span').removeClass('layui-btn-disabled').html('启用');
                layer.msg('启用!',{icon: 5,time:1000});
            }

        });
    }
    function delAll (argument) {
        var ids = [];
        // 获取选中的id
        $('tbody input').each(function(index, el) {
            if($(this).prop('checked')){
                ids.push($(this).val())
            }
        });
        layer.confirm('确认要删除吗？'+ids.toString(),function(index){
            //捉到所有被选中的，发异步进行删除
            layer.msg('删除成功', {icon: 1});
            $(".layui-form-checked").not('.header').parents('tr').remove();
        });
    }
</script>
</div>
</body>
</html>