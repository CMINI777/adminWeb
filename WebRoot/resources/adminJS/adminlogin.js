$(function () {
	$('#remeberMe').iCheck({//选择框--记住我
	    checkboxClass: 'icheckbox_square-blue',
	    radioClass: 'iradio_square-blue',
	    increaseArea: '20%' // optional
	});
	
	function login(){
	    //验证用户名密码是否为空
	    if($('#loginname').val().length==0||$('#password').val().length==0){
		    alert("用户名密码不能为空！");
		    return false;
		}
	    var param=$('#loginform').serialize();
	    alert(param)
//		$.ajax({
//			url:'doLogin.do',
//			data:param,
//			cache:false,
//			type:"post",
//			dataType:"json",
//			success:function(data) {
//				if(data.success){
//					window.location.href=data.info;
//				}else{
//					if(data.num==-101||data.num==-102){
//						$("#spansq").css('display','block');//=================该页面暂无该元素
//					}else{
//						alert(data.info);
//						bindKeyDownOnDoc();
//					}
//					$('#loginbtn').attr('disabled',false);
//				}
//			},
//			error:function(errdata, request, settings){
//				alert("后台发生错误登录失败！");
//				$('#loginbtn').attr('disabled',false);
//			}
//		});
	}
	
	$('#loginbtn').click(function(){//点击登录按钮
		login();
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