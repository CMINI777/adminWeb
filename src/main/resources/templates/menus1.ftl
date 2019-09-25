<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Title</title>
    <!-- 自适应:告诉浏览器响应屏幕宽度 -->
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <!-- Bootstrap 3.3.7 -->
    <link rel="stylesheet" href="/static/adminLTE/bootstrap/css/bootstrap.min.css">
    <!-- DataTables -->
    <link rel="stylesheet" href="/static/adminLTE/plugins/datatables/dataTables.bootstrap.css">
    <!-- 为本页表格自定义的样式 -->
    <link rel="stylesheet" href="/static/css/mydatatables.css">
</head>
<body style="width:98%;margin:10px auto;">
<div class="panel panel-default">
    <div class="panel-body">
        <div class="col-md-12">
            <form class="form-horizontal" >
                <div class="form-group">
                    <label class="col-sm-2 control-label">菜单名称：</label>
                    <div class="col-sm-3">
                        <input type="text" class="form-control" id="menuname" name="menuname" style="width: 250px">
                    </div>
                    <label class="col-sm-2 control-label">菜单状态：</label>
                    <div class="col-sm-3">
                        <select class="form-control" style="width: 250px" id="state" name="state">
                            <option value="">请选择...</option>
                            <option value="1">有 效</option>
                            <option value="2">无 效</option>
                        </select>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label">创建开始时间：</label>
                    <div class="col-sm-3">
                        <input type="text" class="form-control" id="startTime" name="startTime" style="width: 250px" onclick="laydate({istime: true, format: 'YYYY-MM-DD hh:mm:ss'})">
                    </div>
                    <label class="col-sm-2 control-label">创建结束时间：</label>
                    <div class="col-sm-3">
                        <input type="text" class="form-control" id="endTime" name="endTime" style="width: 250px" onclick="laydate()">
                    </div>
                    <div class="col-sm-2">
                        <button  type="button" class="btn btn-success search" style="float: right;" >查 询</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>

<div>
    <!-- 表格 -->
    <table id="example" class="table table-bordered table-hover" >

    </table>
    <!--单个删除确认对话框-->
    <div class="modal fade" id="deleteOneModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" > <!-- data-backdrop="static" 禁止点击弹框后面内容 -->
        <form class="form-horizontal" role="form">
            <div class="modal-dialog modal-sm " > <!-- modal-sm 小的  modal-lg 大的 -->
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times; </button>
                        <h4 class="modal-title" id="myModalLabel">提示信息</h4>
                    </div>
                    <div class="modal-body" style="text-align: left;">
                        <h5>您确定要删除当前信息吗？</h5>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
                        <button type="button" class="btn btn-primary" id="delSubmit">确认</button>
                    </div>
                </div><!-- /.modal-content -->
            </div>
        </form>
    </div>
    <!--多个删除确认对话框-->
    <div class="modal fade" id="deleteAllModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <form class="form-horizontal" role="form">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        <h4 class="modal-title" id="myModalLabel">提示信息</h4>
                    </div>
                    <div class="modal-body" style="text-align: left;">
                        <h5>您确定要删除选中信息吗？</h5>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
                        <button type="button" class="btn btn-primary" id="delAllSubmit">确认</button>
                    </div>
                </div><!-- /.modal-content -->
            </div>
        </form>
    </div>



    <!--新增页面开始-->
    <div class="modal fade" id="myModal-add-info" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    <h4 class="modal-title" id="myModalLabel">新 增</h4>
                </div>
                <form class="form-horizontal" role="form" action="/category_add" method="post"  id="category_add">
                    <div class="modal-body">
                        <div class="form-group">
                            <label class="col-sm-3 control-label no-padding-right" >部门名称： </label>
                            <div class="col-sm-9">
                                <input type="text"  class="form-control" id="typename"  name="name" style="width: 250px" maxlength="15" placeholder="10个汉字以内" />
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label no-padding-right" >备注： </label>
                            <div class="col-sm-9">
                                <input type="text"   class=" sortNumber form-control"  name="sortNumber" id="sortNumber" style="width: 250px" maxlength="3"/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label no-padding-right" >状态：</label>
                            <div class="control-group">
                                <div class="radio col-sm-3" style="float: left">
                                    <label>
                                        <input  type="radio" class=" yn1" name="isYn"  value="1"  checked/>
                                        <span class="lbl">有效</span>
                                    </label>
                                </div>
                                <div class="radio col-sm-3" style="float: left">
                                    <label>
                                        <input  type="radio" class=" yn1" name="isYn"  value="0"/>
                                        <span class="lbl">无效</span>
                                    </label>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">关闭 </button>
                        <button type="button" class="btn btn-primary" id="btnsubmit">提交</button>
                    </div>
                </form>
            </div><!-- /.modal-content -->
        </div>
    </div>

    <!-- 编辑状态弹框 -->
    <div class="modal fade" id="editOrderStatus" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog ">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    <h4 class="modal-title" id="myModalLabel">编辑状态弹框 &nbsp;&nbsp;<span id="titleId"></span></h4>
                </div>
                <form class="form-horizontal" action="" method="post"  >
                    <div class="modal-body ">
                        <div class="form-group">
                            <label class="col-sm-4 control-label">请修改菜单状态：</label>
                            <input type="hidden" id="id" name="id" />
                            <div class="col-sm-5">
                                <select class="form-control orderStatus" style="width: 180px"  name="orderStatus">
                                    <option value="1">有 效</option>
                                    <option value="2">无 效</option>
                                </select>
                            </div>
                            <br>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">取消 </button>
                        <button type="button"  class="btn btn-primary"  id="btnedit">确定</button>
                    </div>
                </form>
            </div><!-- /.modal-content -->
        </div>
    </div>
</div>
<!-- 需要的JS脚本 -->
<!-- jQuery 3.1.1 -->
<script src="/static/adminLTE/plugins/jQuery/jquery-3.1.1.min.js"></script>
<!-- Bootstrap 3.3.7 -->
<script src="/static/adminLTE/bootstrap/js/bootstrap.min.js"></script>
<!-- DataTables -->
<script src="/static/adminLTE/plugins/datatables/jquery.dataTables.min.js"></script>
<script src="/static/adminLTE/plugins/datatables/dataTables.bootstrap.min.js"></script>
<!-- 日期控件 -->
<script type="text/javascript" src="/static/adminLTE/plugins/laydate/laydate.js"></script>
<!-- 本页js -->
<script src="/static/js/menus.js"></script>
</body>
</html>