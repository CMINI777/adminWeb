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
  <title>首页</title>
  <!-- 自适应:告诉浏览器响应屏幕宽度 -->
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  <!-- Bootstrap 3.3.7 -->
  <link rel="stylesheet" href="<%=basePath%>plugins/adminLTE/bootstrap/css/bootstrap.min.css">
  <!-- DataTables -->
  <link rel="stylesheet" href="<%=basePath%>plugins/adminLTE/plugins/datatables/dataTables.bootstrap.css">
</head>

<body class="hold-transition skin-blue sidebar-mini">
	<table id="example" class="table table-hover table-bordered " cellspacing="0" width="100%">
        <thead>
            <tr>
                <th>Name</th>
                <th>Position</th>
                <th>Office</th>
                <th>Extn.</th>
                <th>Start date</th>
                <th>Salary</th>
            </tr>
        </thead>
        <tfoot>
            <tr>
                <th>Name</th>
                <th>Position</th>
                <th>Office</th>
                <th>Extn.</th>
                <th>Start date</th>
                <th>Salary</th>
            </tr>
        </tfoot>
    </table>

<!-- 需要的JS脚本 -->
<!-- jQuery 3.1.1 -->
<script src="<%=basePath%>plugins/adminLTE/plugins/jQuery/jquery-3.1.1.min.js"></script>
<!-- DataTables -->
<script src="<%=basePath%>plugins/adminLTE/plugins/datatables/jquery.dataTables.min.js"></script>
<script src="<%=basePath%>plugins/adminLTE/plugins/datatables/dataTables.bootstrap.min.js"></script>
<!-- page script -->
<script src="<%=basePath%>resources/adminJS/dataTable.js"></script>
</body>
</html>