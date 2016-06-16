var loading_tt = 0;
function hideLoading() {
    clearTimeout(loading_tt);
    $("#loading").stop().hide();
    $("#shade").stop().hide();
    $(window).unbind('scroll');
}

function showLoading() {
    clearTimeout(loading_tt);

    $("#shade").css('width', $(window).width() + 'px');
    $("#shade").css('height', $(window).height() + $(document).scrollTop() + 'px');

    var obj_left = ($(window).width() - $("#loading").outerWidth()) / 2;
    var obj_top = ($(window).height() - $("#loading").outerHeight()) / 2 + $(document).scrollTop();

    $("#loading").css('left', obj_left + 'px');
    $("#loading").css('top', obj_top + 'px');

    $("#shade").stop().show();
    $("#loading").show();

    $(window).unbind('scroll').bind('scroll', function () {
        $("#shade").css('width', $(window).width() + 'px');
        $("#shade").css('height', $(window).height() + $(document).scrollTop() + 'px');

        var obj_left = ($(window).width() - $("#loading").outerWidth()) / 2;
        var obj_top = ($(window).height() - $("#loading").outerHeight()) / 2 + $(document).scrollTop();

        $("#loading").css('left', obj_left + 'px');
        $("#loading").css('top', obj_top + 'px');
    });

    loading_tt = setTimeout(function () {
        alert('服务器响应超时了，可能是服务器太拥挤或者网络不顺畅。');
        hideLoading();
    }, 20000);
}