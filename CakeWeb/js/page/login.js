define(function(require,exports,module){
/*通过 require 引入依赖*/
require('zepto');
require('iscroll');
var Popping = require('js/modules/popping.js');
  
;(function($){
	//错误提示
    $('#cake_register').off('touchstart').on('touchstart', function () {
        var mobile = $("#txtMobile").val();
        if (mobile == "") {
            hideLoading();
            var errorwaring = new Popping().init({
                content: '手机号不能为空！',
                hideTime: 3000
                //hasBtns:true
            });
            return false;
        }
        if (!checkMobile(mobile)) {
            hideLoading();
            var errorwaring = new Popping().init({
                content: '手机号格式不正确！',
                hideTime: 3000
                //hasBtns:true
            });
            return false;
        }
        var pwd = $("#txtPwd").val();
        var pwd1 = $("#txtPwd1").val();
        if (pwd == "" || pwd1 == "") {
            hideLoading();
          //  w.Show("密码不能为空！");
            $("#txtPwd1").val("");
            var errorwaring = new Popping().init({
                content: '密码不能为空！',
                hideTime: 3000
                //hasBtns:true
            });
            return false;
           
        }


        if (pwd != pwd1) {
            hideLoading();
           // w.Show("两次密码不一致！");
            $("#txtPwd").val("");
            $("#txtPwd1").val("");
            var errorwaring = new Popping().init({
                content: '两次密码不一致！',
                hideTime: 3000
                //hasBtns:true
            });
            return false;
        }
        registerpersonal();
       
        
	});
})(Zepto)

});
