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

});