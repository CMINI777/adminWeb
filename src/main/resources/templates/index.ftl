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
    <!-- 多Tab页css-->
    <link rel="stylesheet" href="/static/adminLTE/plugins/tab/style.min.css">
    <!-- HTML5 Shim和Respond.js 是为了IE支持HTML5元素和媒体查询 -->
    <!--[if lt IE 9]>
    <script src="/static/adminLTE/plugins/adaptationIE/html5shiv.min.js"></script>
    <script src="/static/adminLTE/plugins/adaptationIE/respond.min.js"></script>
    <![endif]-->
    <style>.leftmenu-refresh{position: absolute;right: 10px;top: 50%;margin-top: -7px;cursor: pointer;}.leftmenu-refresh:hover{color: #fff;}.sidebar>div.header {color: #4b646f;background: #1a2226;}.sidebar>div.header {overflow: hidden;text-overflow: clip;}.sidebar>div.header {white-space: nowrap;overflow: hidden;}.sidebar div.header {padding: 10px 25px 10px 15px;font-size: 12px;}.sidebar>div {position: relative;margin: 10px 0px 0px 0px;padding: 0;}</style>
</head>
<!--
body标签选项：
=================
应用一个或多个以下类来获取
期望的效果
|---------------------------------------------------------|
| 皮肤| 皮肤蓝色|
|| 皮肤黑色|
|| 皮肤紫色
|| 皮肤黄色|
|| 皮肤红色|
|| 皮肤绿色|
|---------------------------------------------------------|
|布局选项| 固定|
|| 盒装布局|
|| 左侧边栏切换|
|| 切换右侧边栏幻灯片|
|| 切换右边栏皮肤|
|---------------------------------------------------------|
-->
<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">

    <!-- 主标题（页面上部开始） -->
    <header class="main-header">
        <!-- Logo -->
        <a href="javascript:;" class="logo">
            <!-- 侧边栏 50x50像素的小型logo -->
            <span class="logo-mini"><b>迷你</span>
            <!-- 常规状态和移动设备的logo -->
            <span class="logo-lg"><b>迷你管理系统</span>
        </a>

        <!-- 标题导航 -->
        <nav class="navbar navbar-static-top" role="navigation">
            <!-- 侧栏切换按钮-->
            <a href="javascript:;" class="sidebar-toggle" data-toggle="push-menu" role="button">
                <span class="sr-only">切换导航</span>
            </a>
            <!-- 导航栏右侧菜单 -->
            <div class="navbar-custom-menu">
                <ul class="nav navbar-nav">
                    <!-- 消息：样式可以在dropdown.less中找到-->
                    <li class="dropdown messages-menu">
                        <!-- 菜单切换按钮 -->
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                            <i class="fa fa-envelope-o"></i>
                            <span class="label label-success">4</span>
                        </a>
                        <ul class="dropdown-menu">
                            <li class="header">你有4条消息</li>
                            <li>
                                <!-- 内部菜单：包含消息 -->
                                <ul class="menu">
                                    <li><!-- start 信息 -->
                                        <a href="#">
                                            <div class="pull-left">
                                                <!-- 用户图片 -->
                                                <img src="/static/adminLTE/dist/img/avatar5.png" class="img-circle" alt="User Image">
                                            </div>
                                            <!-- 消息标题和时间戳 -->
                                            <h4>
                                                管理员
                                                <small><i class="fa fa-clock-o"></i> 5 分钟</small>
                                            </h4>
                                            <!-- The message -->
                                            <p>请您确认接收一条洗车订单信息?</p>
                                        </a>
                                    </li>
                                    <!-- end 信息 -->
                                </ul>
                                <!-- /.menu -->
                            </li>
                            <li class="footer"><a href="javascript:;">查看所有消息</a></li>
                        </ul>
                    </li>
                    <!-- /.messages-menu -->

                    <!-- 通知菜单 -->
                    <li class="dropdown notifications-menu">
                        <!-- 菜单切换按钮 -->
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                            <i class="fa fa-bell-o"></i>
                            <span class="label label-warning">10</span>
                        </a>
                        <ul class="dropdown-menu">
                            <li class="header">您有10个通知</li>
                            <li>
                                <!-- 内部菜单：包含通知 -->
                                <ul class="menu">
                                    <li><!-- start notification -->
                                        <a href="javascript:;">
                                            <i class="fa fa-users text-aqua"></i>今天有5名新成员参加
                                        </a>
                                    </li>
                                    <!-- end notification -->
                                </ul>
                            </li>
                            <li class="footer"><a href="javascript:;">查看全部</a></li>
                        </ul>
                    </li>
                    <!-- 任务菜单 -->
                    <li class="dropdown tasks-menu">
                        <!-- Menu Toggle Button -->
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                            <i class="fa fa-flag-o"></i>
                            <span class="label label-danger">9</span>
                        </a>
                        <ul class="dropdown-menu">
                            <li class="header">你有9个任务</li>
                            <li>
                                <!-- Inner menu: contains the tasks -->
                                <ul class="menu">
                                    <li><!-- Task item -->
                                        <a href="javascript:;">
                                            <!-- Task title and progress text -->
                                            <h3>
                                                开发新功能
                                                <small class="pull-right">20%</small>
                                            </h3>
                                            <!-- The progress bar -->
                                            <div class="progress xs">
                                                <!-- Change the css width attribute to simulate progress -->
                                                <div class="progress-bar progress-bar-aqua" style="width: 20%" role="progressbar"
                                                     aria-valuenow="20" aria-valuemin="0" aria-valuemax="100">
                                                    <span class="sr-only">20% 完成</span>
                                                </div>
                                            </div>
                                        </a>
                                    </li>
                                    <!-- end task item -->
                                </ul>
                            </li>
                            <li class="footer">
                                <a href="javascript:;">查看所有任务</a>
                            </li>
                        </ul>
                    </li>
                    <!--用户帐户菜单 -->
                    <li class="dropdown user user-menu">
                        <!-- Menu Toggle Button -->
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                            <!-- The user image in the navbar-->
                            <img src="/static/adminLTE/dist/img/avatar5.png" class="user-image" alt="User Image">
                            <!-- hidden-xs hides the username on small devices so only the image appears. -->
                            <span class="hidden-xs">管理员</span>
                        </a>
                        <ul class="dropdown-menu">
                            <!-- The user image in the menu -->
                            <li class="user-header">
                                <img src="/static/adminLTE/dist/img/avatar5.png" class="img-circle" alt="User Image">

                                <p>
                                    后台管理员
                                    <small>迷你</small>
                                </p>
                            </li>
                            <!-- Menu Body -->
                            <li class="user-body">
                                <div class="row">
                                    <div class="col-xs-4 text-center">
                                        <a href="javascript:;">关注</a>
                                    </div>
                                    <div class="col-xs-4 text-center">
                                        <a href="javascript:;">详情</a>
                                    </div>
                                    <div class="col-xs-4 text-center">
                                        <a href="javascript:;">好友</a>
                                    </div>
                                </div>
                                <!-- /.row -->
                            </li>
                            <!-- Menu Footer-->
                            <li class="user-footer">
                                <div class="pull-left">
                                    <a href="javascript:;" class="btn btn-default btn-flat">工作</a>
                                </div>
                                <div class="pull-right">
                                    <a href="logout" class="btn btn-default btn-flat">退出</a>
                                </div>
                            </li>
                        </ul>
                    </li>
                    <!-- Control Sidebar Toggle Button -->
                    <li>
                        <a href="javascript:;" data-toggle="control-sidebar"><i class="fa fa-gears"></i></a>
                    </li>
                </ul>
            </div>
        </nav>
    </header>


    <!--左侧列。 包含徽标和侧边栏 （页面左部开始）-->
    <aside class="main-sidebar">

        <!-- 侧边栏：风格可以在sidebar.less中找到 -->
        <section class="sidebar">

            <!-- 侧栏用户面板（可选） -->
            <div class="user-panel">
                <div class="pull-left image">
                    <img src="/static/adminLTE/dist/img/avatar5.png" class="img-circle" alt="User Image">
                </div>
                <div class="pull-left info">
                    <p>管理员</p>
                    <!-- Status -->
                    <a href="javascript:;"><i class="fa fa-circle text-success"></i> 在线</a>
                </div>
            </div>

            <div class="header">功能菜单<i class="fa fa-refresh leftmenu-refresh"></i></div>

            <!-- 边栏菜单 -->
            <ul class="sidebar-menu" data-widget="tree">
            </ul>
            <!-- /.边栏菜单 -->
        </section>
        <!-- /.侧边栏 -->
    </aside>

    <!--主页内容 （页面中部开始） -->
    <div class="content-wrapper">
        <div class="row content-tabs" style="margin-left: 5px;">
            <button class="roll-nav roll-left J_tabLeft"><i class="fa fa-backward"></i>
            </button>
            <nav class="page-tabs J_menuTabs">
                <div class="page-tabs-content">
                    <a href="javascript:;" class="active J_menuTab" data-id="menus2">首页</a>
                </div>
            </nav>
            <button class="roll-nav roll-right J_tabRight"><i class="fa fa-forward"></i>
            </button>
            <div class="btn-group roll-nav roll-right">
                <button class="dropdown J_tabClose" data-toggle="dropdown" aria-expanded="false">关闭操作<span class="caret"></span>
                </button>
                <ul role="menu" class="dropdown-menu dropdown-menu-right">
                    <li class="J_tabShowActive">
                        <a>定位当前选项卡</a>
                    </li>
                    <li class="divider"></li>
                    <li class="J_tabCloseAll">
                        <a>关闭全部选项卡</a>
                    </li>
                    <li class="J_tabCloseOther">
                        <a>关闭其他选项卡</a>
                    </li>
                </ul>
            </div>
        </div>
        <div class="row J_mainContent" id="content-main" width="100%" height="100%" style="margin-left: 5px;">
            <iframe class="J_iframe" name="iframe0" width="100%" height="100%" src="menus2" frameborder="0" data-id="menus2" seamless=""></iframe>
        </div>
    </div>

    <!-- 页脚（页面底部开始） -->
    <footer class="main-footer">
        <!-- To the right -->
        <div class="pull-right hidden-xs">
            迷你项目
        </div>
        <!-- Default to the left -->
        <strong>Copyright &copy; 2017 <a href="https://github.com/CMINI777/adminWeb">CMINI777</a>.</strong> 版权所有
    </footer>


    <!-- 控制侧栏（页面右部开始） -->
    <aside class="control-sidebar control-sidebar-dark">
        <!-- Create the tabs -->
        <ul class="nav nav-tabs nav-justified control-sidebar-tabs">
            <li><a href="#control-sidebar-home-tab" data-toggle="tab"><i class="fa fa-home"></i></a></li>
            <li><a href="#control-sidebar-settings-tab" data-toggle="tab"><i class="fa fa-gears"></i></a></li>
        </ul>
        <!-- Tab panes -->
        <div class="tab-content">
            <!-- Home tab content -->
            <div class="tab-pane" id="control-sidebar-home-tab">
                <h3 class="control-sidebar-heading">近期活动</h3>
                <ul class="control-sidebar-menu">
                    <li>
                        <a href="javascript:;">
                            <i class="menu-icon fa fa-birthday-cake bg-red"></i>

                            <div class="menu-info">
                                <h4 class="control-sidebar-subheading">开发任务</h4>

                                <p>开发任务</p>
                            </div>
                        </a>
                    </li>
                </ul>
                <!-- /.control-sidebar-menu -->

                <h3 class="control-sidebar-heading">任务进度</h3>
                <ul class="control-sidebar-menu">
                    <li>
                        <a href="javascript:;">
                            <h4 class="control-sidebar-subheading">
                                开发任务
                                <span class="pull-right-container">
                    <span class="label label-danger pull-right">70%</span>
                  </span>
                            </h4>

                            <div class="progress progress-xxs">
                                <div class="progress-bar progress-bar-danger" style="width: 70%"></div>
                            </div>
                        </a>
                    </li>
                </ul>
                <!-- /.control-sidebar-menu -->

            </div>
            <!-- /.tab-pane -->
            <!-- Stats tab content -->
            <div class="tab-pane" id="control-sidebar-stats-tab">统计标签内容</div>
            <!-- /.tab-pane -->
            <!-- Settings tab content -->
            <div class="tab-pane" id="control-sidebar-settings-tab">
                <form method="post">
                    <h3 class="control-sidebar-heading">常规设置</h3>

                    <div class="form-group">
                        <label class="control-sidebar-subheading">
                            报告面板使用
                            <input type="checkbox" class="pull-right" checked>
                        </label>

                        <p>
                            有关此常规设置选项的一些信息
                        </p>
                    </div>
                    <!-- /.form-group -->
                </form>
            </div>
            <!-- /.tab-pane -->
        </div>
    </aside>
    <!-- 添加侧边栏的背景。 这个div必须被放置紧随控制侧栏 -->
    <div class="control-sidebar-bg"></div>
</div>
<!-- ./wrapper -->

<script src="/static/adminLTE/plugins/jQuery/jquery.min.js"></script>
<!-- Bootstrap 3.3.7 -->
<script src="/static/adminLTE/bootstrap/js/bootstrap.min.js"></script>
<!-- AdminLTE App -->
<script src="/static/adminLTE/dist/js/adminlte.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="/static/adminLTE/dist/js/demo.js"></script>

<link rel="stylesheet" href="/static/adminLTE/plugins/layui/css/layui.css">
<script src="/static/adminLTE/plugins/layui/layui.js"></script>
<!-- 多Tab页js -->
<script src="/static/adminLTE/plugins/tab/contabs.min.js"></script>
<script src="/static/adminLTE/plugins/tab/tabs.js"></script>
<script src="/static/adminLTE/plugins/tab/hplus-tab.js"></script>
<!-- 本页js -->
<script src="/static/js/index.js"></script>
</body>
</html>