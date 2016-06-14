/*
 * 共用JS入口模块
 * */
define(function(require,exports,module){
/*通过 require 引入依赖*/
require('zepto');
require('iscroll');
var Popping = require('js/modules/popping.js');
  
;(function($){
	//页面使用iScroll滚动条
	var myscroll;
	window.onload=function(){
		if($('#wrapper').size()){
			myscroll = new iScroll("wrapper",{
				bounce:false,
				checkDOMChanges:true
			});
			document.addEventListener('touchmove', function (e) { e.preventDefault(); }, false);				
		}
	}
	//点击tab切换登录方式
	$('.logintc_tab a').each(function(index){
		$(this).off('touchstart').on('touchstart',function(){
			$(this).addClass('choose_click').siblings().removeClass('choose_click');
			$('.login_tcsame').eq(index).show().siblings().hide();	
		});
	});
	//点击关闭弹窗
	$('.logintc_close').off('touchstart').on('touchstart',function(){
		$(this).parent().hide();
		$('.dr_blackwall').hide();
	});
	//登录错误提示
	$('#tc_register').off('touchstart').on('touchstart',function(){
		var errorwaring = new Popping().init({
			content : '密码不正确，请重新输入',
			hideTime : 3000
		});
		return false;
	});
	//点击切换筛选方式
	$('.changeway_list li').each(function(index){
    	$(this).off('touchstart').on('touchstart',function(){
			$(this).addClass('changeway_click').siblings().removeClass('changeway_click');
		});
   });
})(Zepto)

});

$(function () {
    $.post("mapi/cartapi.ashx", { action: "getnum" }, function (data) {
        $('.header_right span').html(data);
    });

});