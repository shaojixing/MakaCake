/*
 * 弹框组件
 * 2015-09-22 11:03
 * params:cfg
 * */
define(function(require,exports,module){
	/*通过 require 引入依赖*/
	require('zepto');

	function Popping(){
		this.cfg = {
			hasTitle: false,     //使弹窗居中
			title: '温馨提示',
			hascontent: true,
			content: '操作成功！',
			hasBtns: false,
			btns: {},
			hideTime: 3000,
			result: false,
			hasintegral:false,
			otherintegral:false,
			Addit:'+',
			callback: null
		};
	}	
	
	Popping.prototype = {
		init: function(cfg){
			var arg = $.extend(this.cfg,cfg);
			var popOpj = '<div class="popping" id="popObj"><div class="popMain fix" id="popMain">';
			if(arg.hasTitle){
				popOpj += '<h5>'+ arg.title +'</h5>';
			}
			if(arg.hascontent){
				popOpj += '<div class="popContent">'+ arg.content +'</div>';
			}
			//积分的时候
			if(arg.hasintegral){
				popOpj += '<p class="integralnum"><span>'+ arg.Addit +'</span><i>'+ arg.Num +'</i>'+ arg.Numword +'</p>';
			}else if(arg.otherintegral){
				popOpj += '<p class="integralnum integralnum_other"><span class="otherntegral">'+ arg.Addit +'</span><i>'+ arg.Num +'</i>'+ arg.Numword +'</p>';
			}
			//有按钮的时候
			if(arg.hasBtns){
				popOpj += '<div class="popBtns fix">';
				if(arg.btns.cancel && arg.btns.confirm){
					popOpj += '<a class="popBtn-ok" id="popBtnOk" href="javascript:;">'+ arg.btns.confirm+ '</a>';
					popOpj += '<a class="popBtn-qx" id="popBtnQx" href="javascript:;">'+ arg.btns.cancel+ '</a>';
				}else if(arg.btns.confirm){
					popOpj += '<a class="popBtn-ok" id="popBtnOk" href="javascript:;" style="float:inherit;">'+ arg.btns.confirm+ '</a>';
				}else if(arg.btns.cancel){
					popOpj += '<a class="popBtn-qx" id="popBtnQx" href="javascript:;" style="float:inherit;">'+ arg.btns.cancel+ '</a>';
				}
				popOpj += '</div>';
			}
			popOpj += '</div></div>';
			$('body').append(popOpj);
			var popObj = $('#popObj');
			var popMain = $('#popMain');
			/*if(arg.hasTitle){
				popMain.css('marginLeft', (-popMain.width()/2) + 'px');					
			}else{
				popMain.css('marginLeft', (-popMain.width()/2) - 3 + 'px');				
			}*/
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
	module.exports = Popping;
});

//调用代码范例
//  创建只有内容的弹框
//	var dlcgPop = new Popping().init({
//		content : '登录成功！'
//	});
//  创建带标题自动消失的弹框
//	var dlcgPop1 = new Popping().init({
//		hasTitle : true,
//		content : '用户名或密码错误！',
//		hideTime : 3000
//	});
//  创建带标题带按钮的弹框
//	var dlcgPop2 = new Popping().init({
//		hasTitle : true,
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