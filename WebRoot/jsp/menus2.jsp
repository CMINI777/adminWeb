<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html>
<head>
  <base href="<%=basePath%>">
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>bootstrap-table</title>
  <!-- 自适应:告诉浏览器响应屏幕宽度 -->
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  <!-- Bootstrap 3.3.7 -->
  <link rel="stylesheet" href="<%=basePath%>plugins/adminLTE/bootstrap/css/bootstrap.min.css">
  <!-- Bootstrap Table 核心 -->
  <link rel="stylesheet" href="<%=basePath%>plugins/adminLTE/plugins/bootstrap-table/bootstrap-table.css">
  <!-- 表格行内编辑 -->
  <link rel="stylesheet" href="<%=basePath%>plugins/adminLTE/plugins/bootstrap-table/extensions/bootstrap3-editable/css/bootstrap-editable.css">
</head>
<body style="width:98%;margin:10px auto;">

    <div class="panel-body" style="padding-bottom:0px;">
        <div class="panel panel-default">
            <div class="panel-heading">查询条件</div>
            <div class="panel-body">
                <form id="formSearch" class="form-horizontal">
                    <div class="form-group" style="margin-top:15px">
                        <label class="control-label col-sm-1" for="txt_search_menuname">菜单名称</label>
                        <div class="col-sm-3">
                            <input type="text" class="form-control" id="txt_search_menuname">
                        </div>
                        <label class="control-label col-sm-1" for="txt_search_menutype">菜单类型</label>
                        <div class="col-sm-3">
                            <input type="text" class="form-control" id="txt_search_menutype">
                        </div>
                        <div class="col-sm-4" style="text-align:left;">
                            <button type="button" style="margin-left:50px" id="btn_query" class="btn btn-primary">查询</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>       

        <div id="toolbar" class="btn-group">
            <button id="btn_add" type="button" class="btn btn-default""><!-- btn-info -->
                <span class="glyphicon glyphicon-plus" aria-hidden="true"></span>新增
            </button>
            <button id="btn_edit" type="button" class="btn btn-default">
                <span class="glyphicon glyphicon-pencil" aria-hidden="true"></span>修改<!-- glyphicon-edit -->
            </button>
            <button id="btn_delete" type="button" class="btn btn-default"><!--  btn-danger -->
                <span class="glyphicon glyphicon-remove" aria-hidden="true"></span>删除
            </button>
        </div>
        <table id="bootstrapTable"></table>
    </div>
    
<!-- 需要的JS脚本 -->
<!-- jQuery 3.1.1 -->
<script src="<%=basePath%>plugins/adminLTE/plugins/jQuery/jquery-3.1.1.min.js"></script>
<!-- Bootstrap 3.3.7 -->
<script src="<%=basePath%>plugins/adminLTE/bootstrap/js/bootstrap.min.js"></script>
<!-- Bootstrap Table 核心-->
<script src="<%=basePath%>plugins/adminLTE/plugins/bootstrap-table/bootstrap-table.js"></script>
<script src="<%=basePath%>plugins/adminLTE/plugins/bootstrap-table/locale/bootstrap-table-zh-CN.js"></script>
<!-- 导出-->
<script src="<%=basePath%>plugins/adminLTE/plugins/bootstrap-table/extensions/export/bootstrap-table-export.js"></script>
<script src="<%=basePath%>plugins/adminLTE/plugins/bootstrap-table/extensions/export/tableExport.js"></script>
<!-- 表格行内编辑-->
<script src="<%=basePath%>plugins/adminLTE/plugins/bootstrap-table/extensions/bootstrap3-editable/js/bootstrap-editable.min.js"></script>
<script src="<%=basePath%>plugins/adminLTE/plugins/bootstrap-table/extensions/editable/bootstrap-table-editable.js"></script>
<!-- 本页js -->
<script src="<%=basePath%>resources/adminJS/menus2.js"></script>
</body>
</html>