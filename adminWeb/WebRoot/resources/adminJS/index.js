$(function () {
	
  function changeFrameHeight(){
    var mainContentH = document.documentElement.clientHeight ;
    $('.J_iframe').height(mainContentH);
  }
  window.onresize=function(){  
    changeFrameHeight();  
  };

});