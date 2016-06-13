define(function(require,exports,module){
/*通过 require 引入依赖*/
require('zepto');
require('iscroll');
var Popping = require('js/modules/popping.js');
  
;(function($){
	//错误提示
	$('#cake_register').off('touchstart').on('touchstart',function(){
		var errorwaring = new Popping().init({
			content : '邮箱格式/手机号码不正确，请重新输入',
			hideTime : 3000
		});
		return false;
	});
})(Zepto)

});
