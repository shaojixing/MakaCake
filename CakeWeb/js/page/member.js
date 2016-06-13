define(function(require,exports,module){
/*通过 require 引入依赖*/
require('zepto');
require('iscroll');
var Popping = require('js/modules/popping.js');

;(function($){ 
	//点击出现确认、取消弹窗
	$('#closeDetail').on('touchstart',function(){
		$('.samesure,.dr_blackwall').show();
	});
	//点击出现修改支付方式	
	$('#Tochange').on('touchstart',function(){
		$('.changeway,.dr_blackwall').show();
	});
	//星星评分
	$('.starlist i').each(function(index){
		$(this).on('touchstart',function(){
			$('.starlist i').removeClass('addstar');
			for (var i = 0; i <= index; i++) {
				$('.starlist i').eq(i).addClass('addstar');
			}		
		})
	});
})(Zepto)

});
