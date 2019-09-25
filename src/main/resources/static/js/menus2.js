$(function () {

    //1.初始化Table
    var oTable = new TableInit();
    oTable.Init();

    //2.初始化Button的点击事件
    var oButtonInit = new ButtonInit();
    oButtonInit.Init();

    
});

var TableInit = function () {
    var oTableInit = new Object();
    //初始化Table
    oTableInit.Init = function () {
        $('#bootstrapTable').bootstrapTable({
            url: '../menus/bootstrapTableGet.do',         //请求后台的URL（*）
            method: 'post',                      //请求方式（*）
            contentType: "application/x-www-form-urlencoded",//发送到服务器的数据编码类型，若改为POST提交数据的方式则必须这样写
            toolbar: '#toolbar',                //工具按钮用哪个容器
            striped: true,                      //是否显示行间隔色
            cache: false,                       //是否使用缓存，默认为true，所以一般情况下需要设置一下这个属性（*）
            pagination: true,                   //是否显示分页（*）
            sortable: true,                     //是否启用排序
            sortOrder: "asc",                   //排序方式
            queryParams: oTableInit.queryParams,//传递参数（*）
            sidePagination: "server",           //分页方式：client客户端分页，server服务端分页（*）
            pageNumber:1,                       //初始化加载第一页，默认第一页
            pageSize: 5,                       //每页的记录行数（*）
            pageList: [5, 10, 25, 50, 100],        //可供选择的每页的行数（*）
            search: true,                       //是否显示表格搜索，此搜索是客户端搜索，不会进服务端，所以，个人感觉意义不大
            strictSearch: true,
            showColumns: true,                  //是否显示所有的列
            showRefresh: true,                  //是否显示刷新按钮
            minimumCountColumns: 2,             //最少允许的列数
            clickToSelect: true,                //是否启用点击选中行
            //height: 500,                        //行高，如果没有设置height属性，表格自动根据记录条数觉得表格高度
            uniqueId: "ID",                     //每一行的唯一标识，一般为主键列
            showToggle:true,                    //是否显示详细视图和列表视图的切换按钮
            cardView: false,                    //是否显示详细视图
            detailView: true,                   //是否显示父子表
            showExport: true,                     //是否显示导出按钮
            exportDataType: "basic",              //表示导出的模式是当前页、所有数据还是选中数据。   basic', 'all', 'selected'.
            rowStyle: function (row, index) {    //设置表格行样式：视情况使用
                //这里有5个取值代表5中颜色['active', 'success', 'info', 'warning', 'danger'];
                var strclass = "";
                if (row.name == "个人设置") {
                    strclass = 'success';//还有一个active
                }
                else if (row.name == "个人文件类型管理") {
                    strclass = 'danger';
                }
                else {
                    return {};
                }
                return { classes: strclass };  //按照bootstrap table的规则，必须返回一个json格式的对象
            },
            onEditableSave: function (field, row, oldValue, $el) {//表格行内编辑：视情况使用。四个参数field, row, oldValue, $el分别对应着当前列的名称、当前行数据对象、更新前的值、编辑的当前单元格的jQuery对象。
                $.ajax({
                    type: "post",
                    url: "menus/bootstrapTableEdit.do",
                    data: { param: row },  //这里也可以使用json形式的传参：JSON.stringify(row)
                    success: function (data, status) {
                        if (status == "success") {
                            alert("编辑成功");
                        }
                    },
                    error: function () {
                        alert("Error");
                    },
                    complete: function () {

                    }

                });
            },
            columns: [{
                checkbox: true
            }, {
                field: 'name',
                title: '菜单名称',
                align: 'center',    //指示如何对齐列数据
                width: '16%'      //列的宽度。 如果未定义，宽度将自动展开以适应其内容
            }, {
                field: 'url',
                title: '访问地址',
                editable:true    //允许编辑的列
            }, {
                field: 'icon',
                title: '图标'
            }, {
                field: 'parentid',
                title: '上级菜单'
            }, {
                field: 'menutype',
                title: '菜单类型',
                sortable: true, //排序列
            }, {
                field: 'sortid',
                title: 'sortid',
                visible:false  //隐藏列
            }]
            ,
            /**
             * 注册加载子表的事件。注意下这里的三个参数！(视情况使用)
             * 
             * index：父表当前行的行索引。
             * row：父表当前行的Json数据对象。
             * $detail：当前行下面创建的新行里面的td对象。
             * 第三个参数尤其重要，因为生成的子表的table在装载在$detail对象里面的。bootstrap table为我们生成了$detail这个对象，然后我们只需要往它里面填充我们想要的table即可。
             */
            onExpandRow: function (index, row, $detail) {
            	oTableInit.InitSubTable(index, row, $detail);
            }
        });
    };
    
    //初始化子表格(无线循环) 开始
    oTableInit.InitSubTable = function (index, row, $detail) {
        var parentid = row.id;
        var cur_table = $detail.html('<table></table>').find('table');
        $(cur_table).bootstrapTable({
            url: '../menus/bootstrapTableGet.do',
            method: 'post',
            contentType: "application/x-www-form-urlencoded",//发送到服务器的数据编码类型，若改为POST提交数据的方式则必须这样写
            queryParams: { name: parentid ,menutype: parentid,limit: 2, offset: 0},
            sidePagination: "server",
            clickToSelect: true,
            detailView: false,//父子表
            uniqueId: "id",
            pageSize: 5,
            pageList: [1, 5],
            columns: [{
                checkbox: true
            }, {
                field: 'name',
                title: '菜单名称'
            }, {
                field: 'url',
                title: '菜单URL'
            }, {
                field: 'parentid',
                title: '父级菜单'
            } ],
            //无线循环取子表，直到子表里面没有记录
            onExpandRow: function (index, row, $Subdetail) {
            	oTableInit.InitSubTable(index, row, $Subdetail);
            }
        });
    };//初始化子表格 结束
  
    
    //得到查询的参数
    oTableInit.queryParams = function (params) {
        var temp = {   //这里的键的名字和控制器的变量名必须一致，这边改动，控制器也需要改成一样的
            limit: params.limit,    //页面大小
            offset: params.offset,  //页码
            order: params.order,    //排序方式
            ordername: params.sort, //排序列
            name: $("#txt_search_menuname").val(),
            menutype: $("#txt_search_menutype").val()
        };
        return temp;
    };
    return oTableInit;
};


var ButtonInit = function () {
    var oInit = new Object();
    var postdata = {};

    oInit.Init = function () {
        //初始化页面上面的按钮事件
    	
    	//按条件查询
    	$("#btn_query").click( function () { 
    		$("#bootstrapTable").bootstrapTable('refresh');
    	});
    	
    	$("#btn_add").click( function () { 
    		alert("新增")
    	});
    };

    return oInit;
};