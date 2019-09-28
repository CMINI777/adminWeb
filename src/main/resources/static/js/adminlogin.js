$(function () {
    changeFooterH();
    function changeFooterH(){
        var mainContentH = document.documentElement.clientHeight;
        var footerOffsetTop = $('.footer-ele').offset().top;
        var footerH =  mainContentH - 40 - footerOffsetTop;
        $('.footer-div-ele').height(footerH);
    }
    window.onresize=function(){
        changeFooterH();
    };

    $('input').iCheck({
        checkboxClass: 'icheckbox_square-blue',
        radioClass: 'iradio_square-blue',
        increaseArea: '20%' /* optional */
    });

	function login(){
	    //验证用户名密码
	    if($('#loginname').val().length==0||$('#password').val().length==0){
            $("#message").html("用户名密码不能为空！");
            $("#dialogModal").modal('show');
		    return false;
		}
	    var param=$('#loginform').serialize();
		$.ajax({
			url:'executeLogin',
			data:param,
            type: "POST",
            async: false,
			success:function(data) {
				console.log(data);
                if(data.status == 200 && data.msg == "OK") {
                    window.location.href = data.data;
                } else {
                    $("#message").html("发生异常：" + data.msg);
                    $("#dialogModal").modal('show');
                }
                return false;
			},
			error:function(errdata, request, settings){
                $("#message").html("后台发生错误，登录失败！");
                $("#dialogModal").modal('show');
				$('#loginbtn').attr('disabled',false);
                return false;
			}
		});
	}
	
	$('#loginbtn').click(function(){//点击登录按钮
		login();
        return false;
	});
	
	//回车直接登录
	function bindKeyDownOnDoc(){
		$(document).keydown(function(e){
			if(e.keyCode==13||e.which==13){
				login();
				$(document).unbind('keydown');
			}
		});
	}
	bindKeyDownOnDoc();
});