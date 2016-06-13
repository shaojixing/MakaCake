<%@ Page Title="" Language="C#" MasterPageFile="~/MobileSite1.Master" AutoEventWireup="true" CodeBehind="share.aspx.cs" Inherits="CakeWeb.share" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <title>极致美味的裸蛋糕_马卡烤箱官网</title>
    <script src="http://tjs.sjs.sinajs.cn/open/api/js/wb.js" type="text/javascript" charset="utf-8"></script>
    <style>
        .bt_icon {
     
        }

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="header1"><div onclick="javascript:history.go(-1)"><img class="backimg"  src="images/back_01.png" longdesc="返回"  ><div class="backtxt">返回</div></div>
  邀请好友有奖
    <a href="mycar4t.aspx"><img class="cart" src="images/cart_02.png" longdesc="购物车" /></a>
  </div>
   <div style="width:100%; max-width:640px;margin:0 auto;">
<img style="width:100%; max-width:640px; " src="images/share02.jpg" /></div>
    <div style="width:100%; max-width:640px; margin:0 auto; background-color:#ffffff; color:#666666; font-size:18px;">
    <table style="width:100%; max-width:640px; vertical-align:middle; background-color:#ffffff; " >
         <tr>
            <td align="center" valign="middle" style="height:70px; line-height:50px;">立即分享</td>
             <td></td>
              <td></td>
              <td></td>
         </tr>
        <tr>
            <td align="center" valign="middle"><img src="images/wx_11.png" /></td>
              <td align="center" valign="middle"><img src="images/pyc_03.png" /></td>
              <td align="center" valign="middle"><a href="javascript:void(0);" onclick="window.open('http://service.weibo.com/share/share.php?url=http://m.makacake.com&title=极致美味裸蛋糕，立即分享赠送蛋糕尝鲜券给好友，您奖获得10元奖励。&pic=http://m.makacake.com/images/01.jpg&appkey=4138900276&ralateUid=5893353456&laguage=zh_cn');return false;"><img  src="images/wb-08.png"/></td>
              <td align="center" valign="middle"><a href="javascript:void(0);" onclick="window.open('http://sns.qzone.qq.com/cgi-bin/qzshare/cgi_qzshare_onekey?url='+encodeURIComponent(document.location.href)+'&desc=极致美味裸蛋糕，立即分享赠送蛋糕尝鲜券给好友，您奖获得10元奖励。&summary=马卡烤箱 ');return false;" title="分享到QQ空间"><img src="images/kj_05.png" alt="分享到QQ空间" /></a> </td>
        </tr>
                <tr>
            <td align="center" valign="middle">微信</td>
              <td align="center" valign="middle">朋友圈</td>
              <td align="center" valign="middle">微博</td>
              <td align="center" valign="middle">QQ空间 </td>
        </tr>
                     
    </table>
        <div class="bt_icon" id="likeBTN" style="display:none;"></div>
    <div style="border-bottom:1px solid #b2c4b7; width:95%; max-width:620px; margin:0 auto;height:50px;" ></div>
        <div style="width:100%; height:100px; line-height:100px; text-align:center;">已有1020位用户赠送给好友蛋糕券</div>
        </div>
</asp:Content>
