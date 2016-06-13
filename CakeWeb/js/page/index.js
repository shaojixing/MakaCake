define(function(require,exports,module){
/*通过 require 引入依赖*/
require('zepto');
require('iscroll');
require('js/modules/TouchSlide.1.1.js');
  
;(function($){
		//banner轮播图
    TouchSlide({
        slideCell: "#index-slide",
        titCell: ".hd ul", //开启自动分页 autoPage:true ，此时设置 titCell 为导航元素包裹层
        mainCell: ".bd ul",
        effect: "leftLoop",
        autoPage: true,//自动分页
        autoPlay: true, //自动播放
        interTime: 4000
    });
})(Zepto)

});
