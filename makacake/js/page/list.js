//列表页JS
define(function(require,exports,module){
/*通过 require 引入依赖*/
require('zepto');
require('iscroll');
require('js/modules/TouchSlide.1.1.js');
;(function($){
	//商品分类页点击选择商品
	$('.shoplist li').each(function(index){
		$(this).off('touchstart').on('touchstart',function(){
			$(this).addClass('shoplist_click').siblings().removeClass('shoplist_click');
		});
	});
	//点击切换筛选
	$('.shopchoose li').each(function(index){
		$(this).off('touchstart').on('touchstart',function(){
			$(this).addClass('shopchoose_click').siblings().removeClass('shopchoose_click');
		});
		$('.shopchoose li').eq(0).off('touchstart').on('touchstart',function(){
			$(this).addClass('shopchoose_click').siblings().removeClass('shopchoose_click');
			$('#scrItem').show();
		});
	});
	$('#scrItem .popBg').off('touchstart').on('touchstart',function(){
		$(this).parent().hide();
	});
})(Zepto)

});
