/**
 * 添加表情
 */
define(function(require,exports,module){
/*通过 require 引入依赖*/
require('zepto');

var emotionBox = {
    EMOTION_BASE_URL: "./img/face/",
    init: function(e) {

        this.bindEvent();
    },
    bindEvent: function() {
        var e = this;
        $(".bbs_actionbq").off("touchstart").on("touchstart", function() {
            var t = $(this);
            var n = t.find(".emotionlist");
            var main_height = $('.bbs_action').height();
            n.length ? n.fadeIn() : e.createBox(t);
            $('.bbs_action').height(main_height+$('.detailbox').height() + 10);
            $(".emotionlist li a").off("click").on("click", function() {
                var t = $(this);
                var n = t.find("img")[0].title;
                e.commentinsertemotion(t, n);
                $('.bbs_action').height(main_height);
                $('.bbs_actionjp').hide();
                $('.bbs_actionbq').show();
                return false;
            }),
            $(".emotionlist .closed,.bbs_actionjp").off("touchstart").on("touchstart", function() {
                $(this).parents(".emotionlist").hide();
                $('.bbs_action').height(main_height);
                $('.bbs_actionjp').hide();
                $('.bbs_actionbq').show();
                return false;
            });
            $("#inputReview").off("touchstart").on("touchstart", function() {
                $('.emotionlist .closed').parents(".emotionlist").hide();
                $('.bbs_actionjp').show();
                $('.bbs_actionbq').hide();
                $('.bbs_action').height(main_height);
                $(this).focus();
                return false;
            });
            $('.bbs_actionjp').show();
            $('.bbs_actionbq').hide();
           return false;
        });         
    },
    createBox: function(e) {
        var t = "";
        var n = e.parent();
        $.each(this.lists, function() {
            var e = this.name;
            var n = emotionBox.EMOTION_BASE_URL + this.url;
            t += '<li><a href="javascript:void(0);" ><img title="' + e + '" alt="' + e + '" src="' + n + '"></a></li>';
        });
        list = $("<div class='bq emotionlist'></div>").html('<div class="jt"></div><div class="detailbox"><div class="closed"><a href="javascript:void(0);"></a></div><div class="detail"><ul node-type="inner" class="faces_list clearfix"></ul></div></div>');
        list.find("ul").html(t);
        n.find(".emotionlist").remove();
        n.append(list);
        list.fadeIn(100, function() {
            n.find(".emotionlist").show();
            list.show();
        });
    },
    commentinsertemotion: function(e, t) {
        e.parents(".bbs_action").find("#inputReview").insertAtCaret("[" + t + "]");
        $(".emotionlist").remove();
    },
    lists: {
        smilea: {
            name: "呵呵",
            url: "smilea_thumb.gif"
        },
        tootha: {
            name: "嘻嘻",
            url: "tootha_thumb.gif"
        },
        laugh: {
            name: "哈哈",
            url: "laugh.gif"
        },
        tza: {
            name: "可爱",
            url: "tza_thumb.gif"
        },
        kl: {
            name: "可怜",
            url: "kl_thumb.gif"
        },
        kbsa: {
            name: "挖鼻屎",
            url: "kbsa_thumb.gif"
        },
        cj: {
            name: "吃惊",
            url: "cj_thumb.gif"
        },
        shamea: {
            name: "害羞",
            url: "shamea_thumb.gif"
        },
        zy: {
            name: "挤眼",
            url: "zy_thumb.gif"
        },
        bz: {
            name: "闭嘴",
            url: "bz_thumb.gif"
        },
        bs2: {
            name: "鄙视",
            url: "bs2_thumb.gif"
        },
        lovea: {
            name: "爱你",
            url: "lovea_thumb.gif"
        },
        sada: {
            name: "泪",
            url: "sada_thumb.gif"
        },
        heia: {
            name: "偷笑",
            url: "heia_thumb.gif"
        },
        qq: {
            name: "亲亲",
            url: "qq_thumb.gif"
        },
        sb: {
            name: "生病",
            url: "sb_thumb.gif"
        },
        mb: {
            name: "太开心",
            url: "mb_thumb.gif"
        },
        ldln: {
            name: "懒得理你",
            url: "ldln_thumb.gif"
        },
        yhh: {
            name: "右哼哼",
            url: "yhh_thumb.gif"
        },
        zhh: {
            name: "左哼哼",
            url: "zhh_thumb.gif"
        },
        x: {
            name: "嘘",
            url: "x_thumb.gif"
        },
        cry: {
            name: "衰",
            url: "cry.gif"
        },
        wq: {
            name: "委屈",
            url: "wq_thumb.gif"
        },
        t: {
            name: "吐",
            url: "t_thumb.gif"
        },
        k: {
            name: "打哈欠",
            url: "k_thumb.gif"
        },
        bba: {
            name: "抱抱",
            url: "bba_thumb.gif"
        },
        angrya: {
            name: "怒",
            url: "angrya_thumb.gif"
        }
//      ,
//      yw: {
//          name: "疑问",
//          url: "yw_thumb.gif"
//       }
        //,
        // cza: {
        //     name: "馋嘴",
        //     url: "cza_thumb.gif"
        // },
        // 88 : {
        //     name: "拜拜",
        //     url: "88_thumb.gif"
        // },
        // sk: {
        //     name: "思考",
        //     url: "sk_thumb.gif"
        // },
        // sweata: {
        //     name: "汗",
        //     url: "sweata_thumb.gif"
        // },
        // sleepya: {
        //     name: "困",
        //     url: "sleepya_thumb.gif"
        // },
        // sleepa: {
        //     name: "睡觉",
        //     url: "sleepa_thumb.gif"
        // },
        // money: {
        //     name: "钱",
        //     url: "money_thumb.gif"
        // },
        // sw: {
        //     name: "失望",
        //     url: "sw_thumb.gif"
        // },
        // cool: {
        //     name: "酷",
        //     url: "cool_thumb.gif"
        // },
        // hsa: {
        //     name: "花心",
        //     url: "hsa_thumb.gif"
        // },
        // hatea: {
        //     name: "哼",
        //     url: "hatea_thumb.gif"
        // },
        // gza: {
        //     name: "鼓掌",
        //     url: "gza_thumb.gif"
        // },
        // dizzya: {
        //     name: "晕",
        //     url: "dizzya_thumb.gif"
        // },
        // bs: {
        //     name: "悲伤",
        //     url: "bs_thumb.gif"
        // },
        // crazya: {
        //     name: "抓狂",
        //     url: "crazya_thumb.gif"
        // },
        // h: {
        //     name: "黑线",
        //     url: "h_thumb.gif"
        // },
        // yx: {
        //     name: "阴险",
        //     url: "yx_thumb.gif"
        // },
        // nm: {
        //     name: "怒骂",
        //     url: "nm_thumb.gif"
        // },
        // hearta: {
        //     name: "心",
        //     url: "hearta_thumb.gif"
        // },
        // unheart: {
        //     name: "伤心",
        //     url: "unheart.gif"
        // },
        // pig: {
        //     name: "猪头",
        //     url: "pig.gif"
        // },
        // ok: {
        //     name: "ok",
        //     url: "ok_thumb.gif"
        // },
        // ye: {
        //     name: "耶",
        //     url: "ye_thumb.gif"
        // },
        // good: {
        //     name: "good",
        //     url: "good_thumb.gif"
        // },
        // no: {
        //     name: "不要",
        //     url: "no_thumb.gif"
        // },
        // z2: {
        //     name: "赞",
        //     url: "z2_thumb.gif"
        // },
        // come: {
        //     name: "来",
        //     url: "come_thumb.gif"
        // },
        // sad: {
        //     name: "弱",
        //     url: "sad_thumb.gif"
        // },
        // lazu: {
        //     name: "蜡烛",
        //     url: "lazu_thumb.gif"
        // },
        // cake: {
        //     name: "蛋糕",
        //     url: "cake.gif"
        // },
        // clock: {
        //     name: "钟",
        //     url: "clock_thumb.gif"
        // },
        // m: {
        //     name: "话筒",
        //     url: "m_thumb.gif"
        // }
    }
}

$.fn.insertAtCaret = function(e) {
    return this.each(function() {
        var t = this;
        if (document.selection) t.focus(),
            sel = document.selection.createRange(),
            sel.text = e,
            t.focus();
        else if (t.selectionStart || t.selectionStart == "0") {
            var n = t.selectionStart,
                r = t.selectionEnd,
                i = t.scrollTop;
            t.value = t.value.substring(0, n) + e + t.value.substring(r, t.value.length),
                t.focus(),
                t.selectionStart = n + e.length,
                t.selectionEnd = n + e.length,
                t.scrollTop = i
        } else t.value += e,
            t.focus()
    })
}

module.exports = emotionBox;
});

