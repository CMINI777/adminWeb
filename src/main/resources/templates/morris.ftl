<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Title</title>

    <!-- 自适应:告诉浏览器响应屏幕宽度 -->
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <!-- Bootstrap 3.3.7 -->
    <link rel="stylesheet" href="/static/adminLTE/bootstrap/css/bootstrap.min.css">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="/static/adminLTE/plugins/font-awesome-4.7.0/css/font-awesome.min.css">
    <!-- Ionicons -->
    <link rel="stylesheet" href="/static/adminLTE/plugins/ionicons-2.0.1/css/ionicons.min.css">
    <!-- Theme style -->
    <link rel="stylesheet" href="/static/adminLTE/dist/css/AdminLTE.min.css">
    <!-- AdminLTE皮肤。 从css 中选择皮肤，而不是下载它们以减少负载 -->
    <link rel="stylesheet" href="/static/adminLTE/dist/css/skins/_all-skins.min.css">
    <!-- HTML5 Shim和Respond.js 是为了IE支持HTML5元素和媒体查询 -->
    <!--[if lt IE 9]>
    <script src="/static/adminLTE/plugins/adaptationIE/html5shiv.min.js"></script>
    <script src="/static/adminLTE/plugins/adaptationIE/respond.min.js"></script>
    <![endif]-->
    <!-- alarm css -->
    <link rel="stylesheet" href="/static/css/alarm.css">
</head>
<body style="background: #ecf0f5;">
<!-- Main content -->
<section class="content">
    <div class="box box-warning box-solid">
        <div class="box-header with-border">
            <h3 class="box-title">实时故障统计</h3>

            <span style="margin-left:5%;margin-right:1%;">按设备点统计:</span>
            <select id="devicesite" class="form-control input-sm" style="width: 10%;display: inline-block;">
                <option value="">请选择</option>
                <option value="shebei1">设备点1</option>
            </select>
            <span style="margin-left:5%;margin-right:1%;">按设备类型统计:</span>
            <select id="devicesite" class="form-control input-sm" style="width: 10%;display: inline-block;">
                <option value="">请选择</option>
                <option value="shebei1">设备点1</option>
            </select>

            <div class="box-tools pull-right">
                <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
                </button>
            </div>
            <!-- /.box-tools -->
        </div>
        <!-- /.box-header -->
        <div class="box-body">
            <div class="row">
                <div class="col-md-6">

                    <!-- DONUT CHART -->
                    <div class="box box-warning">
                        <div class="box-header with-border">
                            <h3 class="box-title">故障设备统计</h3>


                        </div>
                        <div class="box-body">
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="chart-responsive">
                                        <div class="chart" id="sales-chart" style="height: 300px; position: relative;"></div>
                                    </div>
                                    <!-- ./chart-responsive -->
                                </div>
                                <!-- /.col -->
                                <!-- <div class="col-md-4" id="chart_legend">
                                </div> -->
                                <!-- /.col -->
                            </div>
                        </div>
                        <!-- /.box-body -->
                    </div>
                    <!-- /.box -->

                </div>
                <!-- /.col (LEFT) -->
                <div class="col-md-6">
                    <!-- DONUT CHART -->
                    <div class="box box-warning">
                        <div class="box-header with-border">
                            <h3 class="box-title">故障级别统计</h3>


                        </div>
                        <div class="box-body">
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="chart-responsive">
                                        <div class="chart" id="sales-chart2" style="height: 300px; position: relative;"></div>
                                    </div>
                                    <!-- ./chart-responsive -->
                                </div>
                                <!-- /.col -->
                                <!-- <div class="col-md-4" id="chart_legend2">
                                </div> -->
                                <!-- /.col -->
                            </div>
                        </div>
                        <!-- /.box-body -->
                    </div>
                    <!-- /.box -->


                </div>
                <!-- /.col (RIGHT) -->
            </div>
            <!-- /.row -->
        </div>
        <!-- /.box-body -->
    </div>

    <div class="box box-warning">
        <div class="box-header with-border">
            <h3 class="box-title">实时故障报警提示</h3>
        </div>
        <!-- /.box-header -->
        <div class="box-body">
            <div>
                <div id="toolbar" class="btn-group">
                    <button id="btn_add" type="button" class="btn btn-warning">
                        按等级
                    </button>
                    <button id="btn_edit" type="button" class="btn btn-warning">
                        按发生时段
                    </button>
                    <button id="btn_delete" type="button" class="btn btn-warning">
                        按类型
                    </button>
                </div>
            </div>
            <div class="row">
                <div class="col-md-2 alarm-prompt">
                    <div class="alarm-prompt-title background-red">
                        <span>运行故障</span>
                    </div>
                    <div class="alarm-prompt-content">
						<span class="alarm-prompt-content-name">
							华尔街站A01股票机
						</span>
                        <span class="alarm-prompt-content-type color-red">极其严重</span>
                        <span class="alarm-prompt-content-date">(<font class="color-red">1</font>天<font class="color-red">3</font>小时)</span>
                    </div>
                    <div class="alarm-prompt-operation background-red">
                        <div class="alarm-prompt-operation-left">
                            <a href="javascript:;" class="glyphicon glyphicon-wrench alarm-prompt-operation-a"></a>
                        </div>
                        <div class="alarm-prompt-operation-right">
                            <a href="javascript:;" class="glyphicon glyphicon-exclamation-sign alarm-prompt-operation-a"></a>
                        </div>
                    </div>
                </div>

                <div class="col-md-2 alarm-prompt">
                    <div class="alarm-prompt-title background-orangered">
                        <span>运行故障</span>
                    </div>
                    <div class="alarm-prompt-content">
						<span class="alarm-prompt-content-name">
							华尔街站A02股票机
						</span>
                        <span class="alarm-prompt-content-type color-red">较严重</span>
                        <span class="alarm-prompt-content-date">(<font class="color-red">1</font>天<font class="color-red">3</font>小时)</span>
                    </div>
                    <div class="alarm-prompt-operation background-orangered">
                        <div class="alarm-prompt-operation-left">
                            <a href="javascript:;" class="glyphicon glyphicon-wrench alarm-prompt-operation-a"></a>
                        </div>
                        <div class="alarm-prompt-operation-right">
                            <a href="javascript:;" class="glyphicon glyphicon-exclamation-sign alarm-prompt-operation-a"></a>
                        </div>
                    </div>
                </div>

                <div class="col-md-2 alarm-prompt">
                    <div class="alarm-prompt-title background-coral">
                        <span>运行故障</span>
                    </div>
                    <div class="alarm-prompt-content">
						<span class="alarm-prompt-content-name">
							华尔街站A03股票机
						</span>
                        <span class="alarm-prompt-content-type color-coral">普通</span>
                        <span class="alarm-prompt-content-date">(<font class="color-coral">1</font>天<font class="color-coral">3</font>小时)</span>
                    </div>
                    <div class="alarm-prompt-operation background-coral">
                        <div class="alarm-prompt-operation-left">
                            <a href="javascript:;" class="glyphicon glyphicon-wrench alarm-prompt-operation-a"></a>
                        </div>
                        <div class="alarm-prompt-operation-right">
                            <a href="javascript:;" class="glyphicon glyphicon-exclamation-sign alarm-prompt-operation-a"></a>
                        </div>
                    </div>
                </div>

                <div class="col-md-2 alarm-prompt">
                    <div class="alarm-prompt-title background-orange">
                        <span>运行故障</span>
                    </div>
                    <div class="alarm-prompt-content">
						<span class="alarm-prompt-content-name">
							华尔街站A04股票机
						</span>
                        <span class="alarm-prompt-content-type color-orange">较轻微</span>
                        <span class="alarm-prompt-content-date">(<font class="color-orange">1</font>天<font class="color-orange">3</font>小时)</span>
                    </div>
                    <div class="alarm-prompt-operation background-orange">
                        <div class="alarm-prompt-operation-left">
                            <a href="javascript:;" class="glyphicon glyphicon-wrench alarm-prompt-operation-a"></a>
                        </div>
                        <div class="alarm-prompt-operation-right">
                            <a href="javascript:;" class="glyphicon glyphicon-exclamation-sign alarm-prompt-operation-a"></a>
                        </div>
                    </div>
                </div>

                <div class="col-md-2 alarm-prompt">
                    <div class="alarm-prompt-title background-gold">
                        <span>运行故障</span>
                    </div>
                    <div class="alarm-prompt-content">
						<span class="alarm-prompt-content-name">
							华尔街站A05股票机
						</span>
                        <span class="alarm-prompt-content-type color-gold">轻微</span>
                        <span class="alarm-prompt-content-date">(<font class="color-gold">1</font>天<font class="color-gold">3</font>小时)</span>
                    </div>
                    <div class="alarm-prompt-operation background-gold">
                        <div class="alarm-prompt-operation-left">
                            <a href="javascript:;" class="glyphicon glyphicon-wrench alarm-prompt-operation-a"></a>
                        </div>
                        <div class="alarm-prompt-operation-right">
                            <a href="javascript:;" class="glyphicon glyphicon-exclamation-sign alarm-prompt-operation-a"></a>
                        </div>
                    </div>
                </div>
            </div>
            <!-- /.row -->
        </div>
        <!-- /.box-body -->
    </div>
</section>
<!-- /.content -->

<script src="/static/adminLTE/plugins/jQuery/jquery.min.js"></script>
<!-- Bootstrap 3.3.7 -->
<script src="/static/adminLTE/bootstrap/js/bootstrap.min.js"></script>
<!-- AdminLTE App -->
<script src="/static/adminLTE/dist/js/adminlte.js"></script>
<!-- morris-->
<script src="/static/adminLTE/plugins/morris/raphael-min.js"></script>
<script src="/static/adminLTE/plugins/morris/morris.min.js"></script>
<!-- 本页js -->
<script src="/static/js/morris.js"></script>
</body>
</html>