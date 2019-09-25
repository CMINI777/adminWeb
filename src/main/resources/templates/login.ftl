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
        #particles {position: absolute;top: 0;z-index: -1;width: 100%;height: 100%;}
        #particles canvas {display: block;}
    </style>
</head>
<body class="hold-transition login-page" style="background: #f7fafc;">
<div class="login-box">
    <div class="login-logo">
        <a href="javascript:;"><b style="color: #3c8dbc;">迷你管理系统</b></a>
    </div>
    <!-- /.login-logo -->
    <div class="login-box-body" style="border: 1px solid #d5d5d5;border-radius: 3px;background: rgba(255,255,255,0.5);">
        <p class="login-box-msg">用户登录</p>

        <form id="loginform" name="loginform" action="/account/executeLogin" method="post">
            <div class="form-group has-feedback">
                <input type="text" id="loginname" name="loginname" class="form-control" placeholder="用户名" style="border-radius: 3px;">
                <span class="glyphicon glyphicon-user form-control-feedback"></span>
            </div>
            <div class="form-group has-feedback">
                <input type="password" id="password" name="password" class="form-control" placeholder="密码" style="border-radius: 3px;">
                <span class="glyphicon glyphicon-lock form-control-feedback"></span>
            </div>
            <div class="row">
                <div class="col-xs-8">
                    <div class="checkbox icheck">
                        <label>
                            <input type="checkbox" id="rememberMe" name="rememberMe" style="position: relative;margin-left: 0px;"> 记住我
                        </label>
                    </div>
                </div>
            </div>
            <div class="social-auth-links text-center" style="margin:0px 0px 10px 0px">
                <p></p>
                <button type="submit" class="btn btn-primary btn-block btn-flat" id="loginbtn" style="border-radius: 3px;">登录</button>
            </div>
        </form>
        <a href="" style="font-size: 12px;font-weight: 500;">忘记密码</a><br>
    </div>
    <!-- /.login-box-body -->
</div>
<!-- /.login-box -->

<!-- 粒子特效 -->
<div id="particles">
    <canvas class="particles-js-canvas-el" id="canvas" style="width: 100%; height: 100%;"></canvas>
</div>

<!-- jQuery 3.1.1 -->
<script src="/static/adminLTE/plugins/jQuery/jquery-3.1.1.min.js"></script>
<!-- particles(canvas粒子特效) -->
<script src="/static/js/particles/app.js"></script>
<!-- Bootstrap 3.3.7 -->
<script src="/static/adminLTE/bootstrap/js/bootstrap.min.js"></script>
<!-- iCheck -->
<script src="/static/adminLTE/plugins/iCheck/icheck.min.js"></script>
</body>
</html>