$(document).ready(function() {

	var postServerParam = "id";//随意设置的变量，仅用于测试传参所用，与datatables无关
	/*
	 * 方式一
	 */
//	$('#example').dataTable({
//		 "aoColumns" : [{  
//             "mDataProp" : "id", 
//             "sDefaultContent" : "", //此列默认值为""，以防数据中没有此值，DataTables加载数据的时候报错  
//             "bVisible" : false //此列不显示  
//         }, {  
//             "mDataProp" : "name",
//             "sTitle" : "菜单名称",  
//             "sDefaultContent" : "",  
//             "sClass" : "center"  
//         }, {  
//             "mDataProp" : "url", 
//             "sTitle" : "访问地址",  
//             "sDefaultContent" : "",  
//             "sClass" : "center"  
//         }, {  
//             "mDataProp" : "icon",
//             "sTitle" : "图标",  
//             "sDefaultContent" : "",  
//             "sClass" : "center"  
//         }],  
//         "oLanguage": { //国际化配置  
//		     "sProcessing" : "正在获取数据，请稍后...",    
//		     "sLengthMenu" : "显示 _MENU_ 条",    
//		     "sZeroRecords" : "没有您要搜索的内容",    
//		     "sInfo" : "从 _START_ 到  _END_ 条记录 总记录数为 _TOTAL_ 条",    
//		     "sInfoEmpty" : "记录数为0",    
//		     "sInfoFiltered" : "(全部记录数 _MAX_ 条)",    
//		     "sInfoPostFix" : "",    
//		     "sSearch" : "搜索",    
//		     "sUrl" : "",    
//		     "oPaginate": {    
//		         "sFirst" : "第一页",    
//		         "sPrevious" : "上一页",    
//		         "sNext" : "下一页",    
//		         "sLast" : "最后一页"    
//		     }  
//		 },  
//		 "sAjaxSource" : "menus/get/" + postServerParam,  //ajax方式请求URI         
//         "fnServerData" : function(sSource, aDataSet, fnCallback) {//服务器端，数据回调处理 
//                $.ajax({  
//                    "dataType" : 'json',  
//                    "type" : "POST",  
//                    "url" : sSource,  
//                    "data" : { param: postServerParam},  //采用这种方式也可以传参，若是多个参数则以逗号分开{ param1: "1", param2: "2" }
//                    "success" : fnCallback  
//                });  
//         }  
//	}); 

	/*
	 * 方式二
	 */
	var table = $("#example").DataTable({
		"pagingType" : "full_numbers",//页数导航按钮
		"aLengthMenu":[10,20,40,60],//页显示条数
		"searching":false,//禁用搜索（写成true，则显示出datatables默认的搜索框）
		"lengthChange":true,//长度变化
		"paging": true,//开启表格分页
		"bProcessing" : true,//显示进度（例如：正在加载数据）
		"bServerSide" : true,//服务端模式（一般分页是由后台完成的，不是一次性加载数据，写成false的话则是在前端分页）
		"bAutoWidth" : false,//自适应宽度
		"sort" : "position",//排序
		"deferRender":true,//延迟渲染
		"bStateSave" : false, //在第三页刷新页面，会自动到第一页，改成true的话，则是当前页刷新后仍然在当前页
		"iDisplayLength" : 10,//一页显示多少条数据
		"iDisplayStart" : 0,//一页显示条数的开始值
		"dom": '<<\'#topPlugin\'>f>rt<"bottom"lip><"clear">',//可以生成操作表格上下方显示的dom
		"ordering": true,//全局排序 值为false的话是禁用
		"ajax": {
                "type": "POST",
                "url":"../menus/get/" + postServerParam,
                "data" : function(params){ 
                	var param = getparams();
                	params.param = param[0];
                }
        },
		"aoColumns" : [{
			"mData" : "id",
			"sTitle" : "<td><input type=\"checkbox\" name=\"allChecked\" /></td>",
			"orderable": false , // 禁用排序
			"sDefaultContent" : "",
			"sWidth" : "2%"
		        }, {
					"mData" : "name",
					"sTitle" : "菜单名称",
					"orderable" : false, // 禁用排序
					"sDefaultContent" : "",
					"sWidth" : "10%"
				}, {
					"mData" : "url",
					"sTitle" : "访问地址",
					"orderable" : true, 
					"sDefaultContent" : "",
					"sWidth" : "10%"
				},{
					"mData" : "icon",
					"sTitle" : "图标",
					"orderable" : true, 
					"sDefaultContent" : "",
					"sWidth" : "10%"
				},
				{
					"mData" : "parentid",
					"sTitle" : "上级菜单",
					"orderable" : true, 
					"sDefaultContent" : "",
					"sWidth" : "14%"
				}, 
				{
					"mData" : "memo",
					"sTitle" : "memo",
					"orderable" : true, 
					"sDefaultContent" : "",
					"sWidth" : "2%"
				}, 
				{
					"mData" : "menutype",
					"sTitle" : "菜单类型",
					"orderable" : true, 
					"sDefaultContent" : "",
					"sWidth" : "10%"
				}, {
					"mData" : "sortid",
					"sTitle" : "sortid",
					"orderable" : true, 
					"sDefaultContent" : "",
					"sWidth" : "10%"
				},
				{
					"mData" : "permissionid",
					"sTitle" : "权限",
					"orderable" : true, 
					"sDefaultContent" : "",
					"sWidth" : "10%"
				},
				{
					"mData" : "id",
					"sTitle" : "操作",
					"orderable" : false, // 禁用排序
					"sDefaultContent" : '',
					"sWidth" : "10%",
				    "render":function(data, type, full, meta){
				    	return	data='<button class="btn btn-warning btn-sm upOrderStatus" data-id='+data+'>编 辑</button> <button class="btn btn-danger btn-sm deleteOne" data-id='+data+'>删 除</button>';				    	
				    }	
				}],
		"columnDefs" : 
		[{
			"orderable" : false, // 禁用排序
			"targets" : [0], // 指定的列
			"data" : "id",
			"render" : function(data, type, full, meta) {
				return '<input type="checkbox" value="'+ data + '" name="id"/>';
			}
		 },
         {orderable: false,targets: 1 }
        ],//第一列与第二列禁止排序      
        "order": [
            [0, null]
        ],
		"oLanguage" : { // 国际化配置
			"sProcessing" : "正在获取数据，请稍后...",
			"sLengthMenu" : "显示 _MENU_ 条",
			"sZeroRecords" : "没有找到数据",
			"sInfo" : "从 _START_ 到  _END_ 条记录 总记录数为 _TOTAL_ 条",
			"sInfoEmpty" : "记录数为0",
			"sInfoFiltered" : "(全部记录数 _MAX_ 条)",
			"sInfoPostFix" : "",
			"sSearch" : "搜索",
			"sUrl" : "",
			"oPaginate" : {
				"sFirst" : "首页",
				"sPrevious" : "上一页",
				"sNext" : "下一页",
				"sLast" : "末页"
			}
		},
		initComplete:initComplete,
		drawCallback: function( settings ) {
			if (typeof ($('input[name=allChecked]')[0]) !== 'undefined') {
				$('input[name=allChecked]')[0].checked=false;//取消全选状态
			}     
	    }
		
	});
	
	/*
     * 表格加载渲染完毕后执行的方法
     */
    function initComplete(data){
    	//在表格上方topPlugin DIV中追加HTML
        var topPlugin='<button   class="btn btn-danger btn-sm" id="deleteAll">批量删除</button> '+ 
        	'<button   class="btn btn-primary btn-sm addBtn" >新 增</button> '+ 
        	'<button  class="btn btn-info btn-sm" id="reset">重置搜索条件</button>'+ 
        	'<div id="showcol">'+
        	'<button  class="btn btn-default btn-sm showcol" >列段显示/隐藏</button>'+
        	'</div>' ;	
        $("#topPlugin").append(topPlugin);
        
        //生成列段显示隐藏的元素
        var showlist = '<ul class="showul" >';
        if (typeof (data.aoColumns) !== 'undefined') {       	
        	$(data.aoColumns).each(function (index, obj) { 
        		if(index != 0){
        			showlist += '<li><input type="checkbox" checked="true" class="toggle-vis" data-column="'+index+'"/>'+obj.sTitle+'</li>';
        		}
        	});        	
        }
        showlist += '</ul>';
		$("#showcol").append(showlist);
		
	    //显示隐藏列
	    $('.toggle-vis').on('change', function (e) {
	        e.preventDefault();
	        console.log($(this).attr('data-column'));
	        var column = table.column($(this).attr('data-column'));
	        column.visible(!column.visible());
	    });
	    $('#showcol').click(function () {
	        $('.showul').toggle();
	    });
    }
    /*
     * 单条删除
     */
    $(document).delegate('.deleteOne','click',function() {
    	var id=$(this).data("id");
    	$("#delSubmit").val(id);
    	$("#deleteOneModal").modal('show');
 	});
    /*
     * 多条删除
     */
    $(document).delegate('#deleteAll','click',function() {
 	   var theArray=[];
 	   $("input[name=id]:checked").each(function() { 
 		      theArray.push($(this).val());
 	   });
 	   if(theArray.length<1){
 		   alert("请至少选择一个"); 
 	   }else{
 		  $("#delAllSubmit").val(theArray);
 		  $("#deleteAllModal").modal('show');
 	   } 		 
    });
    /*
     * 单条删除时的点击确认删除按钮
     */
    $(document).delegate('#delSubmit','click',function(){
        var id=$(this).val();
        $('#deleteOneModal').modal('hide');
        $.ajax({
        	url:"menus/delete/" + id,
            async:true,
            type:"GET",
            dataType:"json",
            cache:false,    //不允许缓存
            success: function(data){
                var obj = eval(data);
                if(obj==1)
                {
                    window.location.reload();
                }
                else
                {
                    alert("删除失败");
                }

            },
            error:function(data){
                alert("请求异常");
            }
        });
    });
    /*
     * 多条删除时的点击确认删除按钮
     */
    $(document).delegate('#delAllSubmit','click',function(){
        var id=$(this).val();
        $('#deleteOneModal').modal('hide');
        $.ajax({
        	url:"menus/delete/" + id,
            async:true,
            type:"GET",
            dataType:"json",
            cache:false,    //不允许缓存
            success: function(data){
                var obj = eval(data);
                if(obj==1)
                {
                    window.location.reload();
                }
                else
                {
                    alert("删除失败");
                }

            },
            error:function(data){
                alert("请求异常");
            }
        });
    });
	/*
	 * 多选选中和取消选中,同时选中第一个单元格单选框,并联动全选单选框
	 */
	$('#example tbody').on('click', 'tr', function(event) {
		var allChecked=$('input[name=allChecked]')[0];//关联全选单选框
		$($(this).children()[0]).children().each(function(){
			if(this.type=="checkbox" && (!$(event.target).is(":checkbox") && $(":checkbox",this).trigger("click"))){
				if(!this.checked){
					this.checked = true;
					addValue(this);
					var selected=table.rows('.selected').data().length;//被选中的行数
					//全选单选框的状态处理
					var recordsDisplay=table.page.info().recordsDisplay;//搜索条件过滤后的总行数
					var iDisplayStart=table.page.info().start;// 起始行数
					if(selected === table.page.len()||selected === recordsDisplay||selected === (recordsDisplay - iDisplayStart)){
						allChecked.checked = true;
					}
				}else{
					this.checked = false;
					cancelValue(this);
					if (typeof (allChecked) !== 'undefined') {
						allChecked.checked = false;
					}					
				}
			}
		});
		$(this).toggleClass('selected');//放在最后处理，以便给checkbox做检测
	});
	/*
	 * 全选按钮被点击事件
	 */
	$('input[name=allChecked]').click(function(){
		if(this.checked){
			$('#example tbody tr').each(function(){
				if(!$(this).hasClass('selected')){
					$(this).click();
				}
			});
		}else{
			$('#example tbody tr').click();
		}
	});    
	/*
	 * 单选框被选中时将它的value放入隐藏域
	 */
	function addValue(para) {
		var ids = $("input[name=ids]");
		if(ids.val() === ""){
			ids.val($(para).val());
		}else{
			ids.val(ids.val()+","+$(para).val());
		}
	}	
	/*
	 * 单选框取消选中时将它的value移除隐藏域
	 */
	function cancelValue(para){
		//取消选中checkbox要做的操作
		var ids = $("input[name=allChecked]");
		if (typeof (ids.val()) !== 'undefined') {
			var array = ids.val().split(",");
			ids.val("");
			for (var i = 0; i < array.length; i++) {
				if (array[i] === $(para).val()) {
					continue;
				}
				if (ids.val() === "") {
					ids.val(array[i]);
				} else {
					ids.val(ids.val() + "," + array[i]);
				}
			}
		}	
	}
	/*
	 * 点击新增按钮事件
	 */
	$(document).delegate('.addBtn','click',function() {
		$('#myModal-add-info').modal('show');
	});
	/*
	 * 点击新增页面中提交按钮事件
	 */
	$(document).delegate('#btnsubmit','click',function() {
		 window.location.reload();
	});
	/*
	 * 编辑
	 */
	$(document).delegate('.upOrderStatus','click',function() {
		var id=$(this).data("id");
		$("#titleId").html(id);
		$('#editOrderStatus').modal("show");
	});
	/*
	 * 点击编辑页面中提交按钮事件
	 */
	$(document).delegate('#btnedit','click',function() {
		window.location.reload();
	});
	/*
	 * 重置搜索条件
	 */
	$(document).delegate('#reset','click',function() {
	   $("#state").val("");
	   $("#menuname").val("");
	   $("#startTime").val("");
	   $("#endTime").val("");
	});
	/*
	 * 根据条件进行查询
	 */
	$(document).delegate('.search','click',function() {
		table.ajax.reload();
	});
	

});
function getparams(){
	var params = new Array();
	var deptname = $("#menuname").val();
	var state = $("#state").val();
	params[0] = deptname;
	params[1] = state;
	return params;
}