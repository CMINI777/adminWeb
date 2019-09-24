$(function () {
//	$('#example').DataTable({
// 	   "ajax": "resources/adminJS/dataTable2.txt",
//        "columns": [
//{ "": "" },
//{ "": "" },
//            { "data": "name" },
//            { "data": "IP" },
//            { "data": "CPU" },
//            { "data": "dataSize" },
//            { "data": "operatingSystem" },
//            { "data": "status" }
//        ]
//	});
           var table = $('#example').DataTable({
               "dom": '<"top"f >rt<"bottom"ilp><"clear">',//dom定位
               "dom": 'tiprl',//自定义显示项
               //"dom":'<"domab"f>',
               "scrollY": "220px",//dt高度
               "lengthMenu": [
                   [8, 6, 8, -1],
                   [4, 6, 8, "All"]
               ],//每页显示条数设置
               "lengthChange": true,//是否允许用户自定义显示数量
               "bPaginate": true, //翻页功能
               "bFilter": false, //列筛序功能
               "searching": true,//本地搜索
               "ordering": true, //排序功能
               "Info": true,//页脚信息
               "autoWidth": true,//自动宽度
               "oLanguage": {//国际语言转化
                   "oAria": {
                       "sSortAscending": " - click/return to sort ascending",
                       "sSortDescending": " - click/return to sort descending"
                   },
                   "sLengthMenu": "显示 _MENU_ 记录",
                   "sZeroRecords": "对不起，查询不到任何相关数据",
                   "sEmptyTable": "未有相关数据",
                   "sLoadingRecords": "正在加载数据-请等待...",
                   "sInfo": "当前显示 _START_ 到 _END_ 条，共 _TOTAL_ 条记录。",
                   "sInfoEmpty": "当前显示0到0条，共0条记录",
                   "sInfoFiltered": "（数据库中共为 _MAX_ 条记录）",
                   "sProcessing": "<img src='../resources/user_share/row_details/select2-spinner.gif'/> 正在加载数据...",
                   "sSearch": "模糊查询：",
                   "sUrl": "",
                   //多语言配置文件，可将oLanguage的设置放在一个txt文件中，例：Javascript/datatable/dtCH.txt
                   "oPaginate": {
                       "sFirst": "首页",
                       "sPrevious": " 上一页 ",
                       "sNext": " 下一页 ",
                       "sLast": " 尾页 "
                   }
               },
 
               "columnDefs": [
                   {
                       orderable: false,
 
                       targets: 0 },
                   {
                       orderable: false,
 
                       targets: 1 }
               ],//第一列与第二列禁止排序
 
               "order": [
                   [0, null]
               ],//第一列排序图标改为默认
               initComplete: function () {//列筛选
                   var api = this.api();
                   api.columns().indexes().flatten().each(function (i) {
                       if (i != 0 && i != 1) {//删除第一列与第二列的筛选框
                           var column = api.column(i);
                           var $span = $('<span class="addselect">▾</span>').appendTo($(column.header()))
                           var select = $('<select><option value="">All</option></select>')
                                   .appendTo($(column.header()))
                                   .on('click', function (evt) {
                                       evt.stopPropagation();
                                       var val = $.fn.dataTable.util.escapeRegex(
                                               $(this).val()
                                       );
                                       column
                                               .search(val ? '^' + val + '$' : '', true, false)
                                               .draw();
                                   });
                           column.data().unique().sort().each(function (d, j) {
                               function delHtmlTag(str) {
                                   return str.replace(/<[^>]+>/g, "");//去掉html标签
                               }
 
                               d = delHtmlTag(d)
                               select.append('<option value="' + d + '">' + d + '</option>')
                               $span.append(select)
                           });
 
                       }
                   });
 
               }
 
           });
 
           //添加索引列
           table.on('order.dt search.dt',
                   function () {
                       table.column(0, {
                           search: 'applied',
                           order: 'applied'
                       }).nodes().each(function (cell, i) {
                           cell.innerHTML = i + 1;
                       });
                   }).draw();
 
           //自定义搜索
           $('.dsearch').on('keyup click', function () {
               var tsval = $(".dsearch").val()
               table.search(tsval, false, false).draw();
           });
 
           //checkbox全选
           $("#checkAll").on("click", function () {
               if ($(this).prop("checked") === true) {
                   $("input[name='checkList']").prop("checked", $(this).prop("checked"));
                   $('#example tbody tr').addClass('selected');
               } else {
                   $("input[name='checkList']").prop("checked", false);
                   $('#example tbody tr').removeClass('selected');
               }
           });
 
           //显示隐藏列
           $('.toggle-vis').on('change', function (e) {
               e.preventDefault();
               console.log($(this).attr('data-column'));
               var column = table.column($(this).attr('data-column'));
               column.visible(!column.visible());
           });
 
           //删除选中行
           $('#example tbody').on('click', 'tr input[name="checkList"]', function () {
               var $tr = $(this).parents('tr');
               $tr.toggleClass('selected');
               var $tmp = $('[name=checkList]:checkbox');
               $('#checkAll').prop('checked', $tmp.length == $tmp.filter(':checked').length);
 
           });
 
           $('#button').click(function () {
               table.row('.selected').remove().draw(false);
           });
 
           $('.showcol').click(function () {
               $('.showul').toggle();
 
           })
 
           //获取表格宽度赋值给右侧弹出层
           wt = $('.wt100').width();
           $('.showslider').css('right', -wt);
 
           //关闭右侧弹出层
           $('.closediv').click(function () {
               $(this).parent('.showslider').animate({
                   right: -wt
               }, 200)
               $('.clickdom').attr('isclick', true)
           });
 
 
       })
 
       //右侧弹出详情层
       /*  var flag=false;
        function clickDom(obj){
        var  $par=$(obj).parents('#example_wrapper').siblings('.showslider')
        var  isattr=$(obj).attr('isclick');
        if(isattr=="true"){
        if(flag){
        $par.animate({
        right:-wt
        },200)
        flag=!flag
        }
        else{
        $par.animate({
        right:0
        },200)
        flag=!flag
 
        }
        }
        $('.clickdom').attr('isclick',false)
        $(obj).attr('isclick',true)
 
 
        }
        */
       function clickDom(obj) {
           var $par = $(obj).parents('#example_wrapper').siblings('.showslider')
           var isattr = $(obj).attr('isclick');
           if (isattr == "false") {
 
           } else {
               $par.animate({
                   right: -wt
               }, 200)
               $par.animate({
                   right: 0
               }, 400)
               $('.clickdom').attr('isclick', true)
               $(obj).attr('isclick', false)
           }
 
       }