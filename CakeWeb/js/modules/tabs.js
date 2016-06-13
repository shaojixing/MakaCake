/*
 * Tabs组件
 * 2015-08-03 16:40
 * params:cfg
 * */
define(function(require,exports,module){
	/*通过 require 引入依赖*/
	require('zepto');

	function Tabs(){
		this.cfg = {
			tabsTops: '',
			tabsMains: '',
			thisClass: 'select',
			event: 'click',
			callback: null
		};
	}	
	
	Tabs.prototype = {
		init: function(cfg){
			var $this = this;
			$this.cfg = $.extend($this.cfg,cfg);
			var tabsTop = $($this.cfg.tabsTops);
			var tabsMain = $($this.cfg.tabsMains);
			tabsMain.hide().eq(0).show();
			tabsTop.eq(0).addClass($this.cfg.thisClass);			
			tabsTop.each(function(index){
				$(this).off($this.cfg.event).on($this.cfg.event,function(){
					tabsMain.hide().eq(index).show();
					tabsTop.removeClass($this.cfg.thisClass).eq(index).addClass($this.cfg.thisClass);
				});
			});
		}
	}
	module.exports = Tabs;
});