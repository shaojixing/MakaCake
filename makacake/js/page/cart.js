define(function(require,exports,module){
/*通过 require 引入依赖*/
require('zepto');
require('js/modules/mobiscroll.js');
var ConfirmPop = require('js/modules/confirmPop.js');
  
;(function($){
		//购物车JS
		//点击增加数量
		$('.buynum .toadd').off('touchstart').on('touchstart',function(){
			var i = parseInt($(this).parent().find('input').val());
			$(this).parent().find('input').val(i+1);
		});
		//点击减少数量
		$('.buynum .toreduce').off('touchstart').on('touchstart',function(){
			var i = parseInt($(this).parent().find('input').val());
			if(i==1){
				return false;
			}else{
				
				$(this).parent().find('input').val(i-1)
			}
		});
		$('.theshoplist .toclose').on('touchstart',function(){
			$('.dr_blackwall,.shopDel').show();
		});
		
		
		//地址JS
		//点击获取select内容
		$('.cakeaddress').each(function(index){
			$(this).find('i').html($(this).find('select').val());
			$(this).find('select').off('change').on('change',function(){
				$(this).parent('.cakeaddress').find('i').html($(this).val())
			});
		});
		//修改默认地址
		$('.addresslist li').each(function(index){
			$(this).on('touchstart',function(){
				$(this).addClass('adress_choose').siblings().removeClass('adress_choose');
			});
		});
		$('.todel').on('touchstart',function(){
			$('.dr_blackwall,.sureDel').show();
			return false;
		});
		
		
		//结算中心JS
		//获取val值
		$('.birthday_same .check_dagou i').parent().find('input:first-child').val($('.birthday_same .check_click').html());
		$('.birthday_same .check_dagou').find('i').on('touchstart',function(){
				$(this).addClass('check_click').siblings().removeClass('check_click');
				$(this).parent().find('input:first-child').val($(this).html());
		});
		tocheck();
		$('#birthday_card .check_dagou').find('i').on('touchstart',function(){
				$(this).addClass('check_click').siblings().removeClass('check_click');
				$(this).parent().find('input:first-child').val($(this).html());
				tocheck();
		});
		function tocheck(){
			if($('#Cardask').val()=='需要'){
				$('.elsehide').show();
			}else{
				$('.elsehide').hide();
			}
		}
		//选择配件
		$('.elsehide').find('i').on('touchstart',function(){
				$(this).addClass('check_click').siblings().removeClass('check_click');
		});
		//选择优惠券
		$('.cartPrice_first span').on('touchstart',function(){
				$(this).toggleClass('check_click');
		});
		//选择支付方式
		$('.payul li').on('touchstart',function(){
				$(this).addClass('pay_choose').siblings().removeClass('pay_choose');
		});
		$('.cartyhq').on('touchstart',function(){
				$('.dr_blackwall,.yhqway').show();
		});
		//调用日期控件
		var currYear = (new Date()).getFullYear();	
		var opt={};
		opt.date = {preset : 'date'};
		opt.datetime = {preset : 'datetime'};
		opt.time = {preset : 'time'};
		opt.default = {
			theme: 'android-ics light', //皮肤样式
	        display: 'modal', //显示方式 
	        mode: 'scroller', //日期选择模式
					dateFormat: 'yyyy-mm-dd',
					lang: 'zh',
	        startYear: currYear - 40, //开始年份
	        endYear: currYear //结束年份
		};
  	$("#cakeDate").mobiscroll($.extend(opt['date'], opt['default']));
  	//调用时间控件
  	$("#cakeTime").mobiscroll($.extend(opt['time'], opt['default']));
  	
  	
})(Zepto)
});
//显示证书预览
function showbView(){
	$('#bvmName').html($('#male').val());
	$('#bvwName').html($('#female').val());
	$('.dr_blackwall,.dr_bookview').show();
}
