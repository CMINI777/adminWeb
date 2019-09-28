$(function () {

  function changeFrameHeight(){
    // var mainContentH = document.documentElement.clientHeight ;
    var divContentH = $('.content-wrapper').height()-42;
    $('.J_iframe').height(divContentH);
    $('#content-main').height(divContentH);
  }
  window.onresize=function(){
    changeFrameHeight();
  };
  var mainContentH = document.documentElement.clientHeight;
  var indexH = mainContentH - 141;
  $('.J_iframe').height(indexH);
  $('#content-main').height(indexH);//页面加载后给iframe默认高度

  var bottomMenuDataId = "";//用来保存最下面那个菜单按钮的dataid
  function getHtml(data,parentid){//递归生成左侧菜单HTML
      var viewdata = [] , temp;
      for(var i in data){
          var $li;
          var $menu_f_ul;
          if(data[i].parentid==parentid){
              temp = getHtml(data,data[i].id);
              var dataid=data[i].id;
              var icon=data[i].icon;
              if(typeof(icon)=="undefined"||icon==""){
                  icon="fa fa-circle-o";
              }
              if(temp.length>0){
                  $li = $('<li class="treeview" data-id="'+dataid+'"></li>');
                  var $menu_f = $('<a href="javascript:;">\n'+
                      '<i class="'+icon+'"></i> <span>'+data[i].name+'</span>\n'+
                      ' <span class="pull-right-container">\n'+
                      '<i class="fa fa-angle-left pull-right"></i>\n'+
                      '</span></a>');
                  $li.append($menu_f);
                  $menu_f_ul=$('<ul class="treeview-menu" data-id="'+dataid+'"></ul>');
                  $li.append($menu_f_ul);
                  $("ul.sidebar-menu").append($li);
                  $('.treeview ul[data-id="'+dataid+'"]').append(temp);
                  bottomMenuDataId = dataid;//每次循环都取得id并重复赋值，直至循环到最后一个，以获取到最下面那个菜单按钮（li标签）的data-id（要对应查询sortid为升序）
              }else{
                  if(typeof(data[i].url)=="undefined"||data[i].url==""||data[i].url==null){
                      $li=$('<li><a href="javascript:;" data-url="javascript:;" class="J_menuItem"><i class="'+icon+'"></i>'+data[i].name+'</a></li>');
                  }else{
                      $li=$('<li><a href="'+data[i].url+'" data-url="'+data[i].url+'" class="J_menuItem"><i class="'+icon+'"></i>'+data[i].name+'</a></li>');
                  }
              }
              viewdata.push($li);
          }
      }
      return viewdata;
  }

  function generateMenu(){
      $.getJSON("../static/commons/menu.json", function(data){
        getHtml(data.rows , "menu_root_id");
        contabs();
        //设置treeview-menu最大高度
        var bottomMenuOffsetTop = $('.treeview[data-id="'+bottomMenuDataId+'"]').offset().top; //获取最下面的菜单按钮距离 定位父级的距离
        var treeviewMenuH =  mainContentH - 91 - bottomMenuOffsetTop;
        $('.treeview-menu').attr({style:'max-height:'+treeviewMenuH+'px;overflow: auto;'});//添加css属性，当超出最大高度时出现滚动条，若不设置，则会出现菜单按钮超出文档可视窗口高度的问题
      });
  }
  generateMenu();

  $('.leftmenu-refresh').click(function(){//刷新菜单按钮点击事件
      $("ul.sidebar-menu").html("");
      generateMenu();
  });
});