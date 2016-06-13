/*
 * 表单验证组件
 * 2016-02-26 18:05
 * params:cfg
 * */
define(function(require,exports,module){
	/*通过 require 引入依赖*/
	require('zepto');

	function Validator(){
		this.cfg = {
			//hasTitle: false,     //
			callback: null
		};
	}	
	
	Validator.prototype = {
		init: function(cfg){
			var arg = $.extend(this.cfg,cfg);
		}
	}
	module.exports = Validator;
});

//调用代码范例
