/*
 * 确认弹框组件
 * 2016-03-14 11:03
 * params:cfg
 * */
define(function(require,exports,module){
	/*通过 require 引入依赖*/
	require('zepto');

	function ConfirmPop(){
		this.cfg = {
			content: '',
			hasBtns: false,
			btns: {},
			hideTime: 0,
			result: false,
			callback: null
		};
	}	
	
	ConfirmPop.prototype = {
		init: function(cfg){
			var arg = $.extend(this.cfg,cfg);
			var popOpj = '<div class="confirmPop cartgetit" id="popObj"><div class="popBg"></div><div class="conPopMain fix" id="popMain"><span class="conPopClose"></span>';
			if(arg.hasTitle){
				popOpj += '<h5>'+ arg.title +'</h5>';
			}
			if(arg.content){
				popOpj += '<div class="carthave_p">'+ arg.content +'</div>';
			}
			//有按钮的时候
			if(arg.hasBtns){
				popOpj += '<div class="conPopBtn fix">';
				if(arg.btns.cancel && arg.btns.confirm){
					popOpj += '<a class="popBtn-ok" id="popBtnOk" href="javascript:;">'+ arg.btns.confirm + '</a>';
					popOpj += '<a class="popBtn-qx" id="popBtnQx" href="javascript:;">'+ arg.btns.cancel + '</a>';
				}else if(arg.btns.confirm){
					popOpj += '<a class="popBtn-ok" id="popBtnOk" href="javascript:;" style="float:inherit;">'+ arg.btns.confirm + '</a>';
				}else if(arg.btns.cancel){
					popOpj += '<a class="popBtn-qx" id="popBtnQx" href="javascript:;" style="float:inherit;">'+ arg.btns.cancel + '</a>';
				}
				popOpj += '</div>';
			}
			popOpj += '</div></div>';
			$('body').append(popOpj);
			var popObj = $('#popObj');
			var popMain = $('#popMain');
			popObj.off('touchmove').on('touchmove',function(e){
				e.stopPropagation();
				e.preventDefault();
				return false;
			}).off('click').on('click',function(e){
				popObj.remove();
				return false;
			});
			
			//自动删除隐藏
			if(arg.hideTime){
				var hidetimer = null;
				if(hidetimer){clearTimeout(hidetimer)}
				hidetimer = setTimeout(function(){
					popObj.remove();
					if(arg.callback){
						arg.callback();
					}
				},arg.hideTime);
			}
			
			if(arg.callback){
				$('#popBtnOk').off('click').on('click',function(){
					arg.result = true;
					arg.callback(arg.result);
					popObj.remove();
					return false;
				});
				$('#popBtnQx').off('click').on('click',function(){
					arg.result = false;
					arg.callback(arg.result);
					popObj.remove();
					return false;
				});
            }
		}
	}
	module.exports = ConfirmPop;
});

//调用代码范例
//  创建带标题带按钮的弹框
//	var dlcgPop2 = new Popping().init({
//		content : '请确认是否删除？',
//		hasBtns: true,
//		btns: {
//			confirm : '确认',
//			cancel : '取消'
//		},
//		callback: function(res){
//			//alert(res);  //返回结果(确定返回:true,取消返回:false)
//		}
//	});