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
    <!-- iCheck -->
    <link rel="stylesheet" href="/static/adminLTE/plugins/iCheck/square/blue.css">
    <style type="text/css">
        html,body{height:0;}
        #particles {position: absolute;top: 0;z-index: -1;width: 100%;height: 100%;}
        #particles canvas {display: block;}
    </style>
</head>
<body class="hold-transition login-page" style="background: #f2f8fb"><!--#f7fafc;-->
<div class="login-box">
    <div class="login-logo">
        <a href="javascript:;"><strong style="color: #3c8dbc;">迷你管理系统</strong></a>
    </div>
    <!-- /.login-logo -->
    <div class="login-box-body" style="border: 1px solid #d5d5d5;border-radius: 3px;background: rgba(255,255,255,0.5);">
        <p class="login-box-msg" ><strong style="color: #3c8dbc;">用户登录</strong></p>

        <form id="loginform" name="loginform" action="" method="post">
            <div class="form-group has-feedback">
                <input type="text" id="loginname" name="loginname" class="form-control" placeholder="用户名" maxlength="10" style="border-radius: 3px;">
                <span class="glyphicon glyphicon-user form-control-feedback"></span>
            </div>
            <div class="form-group has-feedback">
                <input type="password" id="password" name="password" class="form-control" placeholder="密码" minlength="6" maxlength="10" style="border-radius: 3px;">
                <span class="glyphicon glyphicon-lock form-control-feedback"></span>
            </div>
            <div class="form-group has-feedback" style="margin-bottom: 0;">
                <div class="row">
                    <div class="col-xs-6">
                        <div class="checkbox icheck">
                            <label>
                                <input type="checkbox" id="rememberMe" name="rememberMe" style="position: relative;margin-left: 0px;"><span style="padding-left: 8px;">记住我</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-xs-6">
                        <div class="checkbox icheck">
                            <label style="float: right;">
                                <a href="javascript:;" >忘记密码</a><br>
                            </label>
                        </div>
                    </div>
                </div>
            </div>
            <div class="social-auth-links text-center" style="margin:0px 0px 15px 0px">
                <p></p>
                <button type="submit" class="btn btn-primary btn-block btn-flat" id="loginbtn" style="border-radius: 3px;">登录</button>
            </div>
        </form>
        <a href="javascript:;" >前往首页</a><br>
    </div>
    <!-- /.login-box-body -->
</div>

<!--提示信息对话框-->
<div class="modal fade" id="dialogModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" > <!-- data-backdrop="static" 禁止点击弹框后面内容 -->
    <form class="form-horizontal" role="form">
        <div class="modal-dialog modal-sm " > <!-- modal-sm 小的  modal-lg 大的 -->
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times; </button>
                    <h4 class="modal-title" id="myModalLabel">提示信息</h4>
                </div>
                <div class="modal-body" style="text-align: left;">
                    <h5 id="message"></h5>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-primary" id="okSubmit" data-dismiss="modal">关闭</button>
                </div>
            </div><!-- /.modal-content -->
        </div>
    </form>
</div>

<!-- 粒子特效 -->
<div id="particles">
    <canvas class="particles-js-canvas-el" id="canvas" style="width: 100%; height: 100%;"></canvas>
</div>

<!--footer-->
<footer class="footer-ele" style="text-align: center;">
    <div class="footer-div-ele" style="height: 100px;"></div>
    <p>Copyright &copy; 2017 <a href="https://github.com/CMINI777/adminWeb">CMINI777</a>. 版权所有</p>
</footer>

<!-- jQuery 3.1.1 -->
<script src="/static/adminLTE/plugins/jQuery/jquery-3.1.1.min.js"></script>
<!-- particles(canvas粒子特效) -->
<script src="/static/js/particles/app.js"></script>
<!-- Bootstrap 3.3.7 -->
<script src="/static/adminLTE/bootstrap/js/bootstrap.min.js"></script>
<!-- iCheck -->
<script src="/static/adminLTE/plugins/iCheck/icheck.min.js"></script>
<!-- 本页js -->
<script src="/static/js/adminlogin.js"></script>
</body>
</html>