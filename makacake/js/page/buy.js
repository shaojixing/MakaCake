//购买详情页JS
define(function(require,exports,module){
/*通过 require 引入依赖*/
require('zepto');
require('iscroll');
require('js/modules/TouchSlide.1.1.js');
;(function($){
	//banner轮播图
    TouchSlide({
        slideCell: "#cake-slide",
        titCell: ".hd ul", //开启自动分页 autoPage:true ，此时设置 titCell 为导航元素包裹层
        mainCell: ".bd ul",
        effect: "leftLoop",
        autoPage: true,//自动分页
        autoPlay: true, //自动播放
        interTime: 4000
    });
    //商品详情页
    //点击选中参数
    $('.size_choose li').each(function(index){
    	$(this).off('touchstart').on('touchstart',function(){
			$(this).addClass('size_click').siblings().removeClass('size_click');
		});
    });
    //点击增加数量
	$('#toadd').off('touchstart').on('touchstart',function(){
		var i = parseInt($('.buynum input').val());
		$('.buynum input').val(i+1)
	});
	//点击减少数量
	$('#toreduce').off('touchstart').on('touchstart',function(){
		var i = parseInt($('.buynum input').val());
		if(i==1){
			return false;
		}else{
			
			$('.buynum input').val(i-1)
		}
	});
	//点击tab切换内容
	$('.cakecort_bottom .cakecort_otherchoose a').each(function(index){
		$(this).off('touchstart').on('touchstart',function(){
			$(this).addClass('choose_click').siblings().removeClass('choose_click');
			$('.cakebottom_same').eq(index).show().siblings().hide();	
		});
	});
	//点击出现登录弹窗
	$('#joinshop').off('touchstart').on('touchstart',function(){
		$('.login_tc,.dr_blackwall').show();
	});
})(Zepto)

});
