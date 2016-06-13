<%@ Page Title="" Language="C#" MasterPageFile="~/mobile/MobileSite1.Master" AutoEventWireup="true" CodeBehind="numbercenter.aspx.cs" Inherits="CakeProJect.mobile.numbercenter" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>会员中心_马卡烤箱官网</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <div style="width:100%; height:46px; clear:both;margin-left: 0;display: block;float: left; background-color:#FFF;font-size:24px; font-weight:bold; color:#e68b71; font-family:'微软雅黑'; line-height:46px; text-align:center;"><a href="http://m.makacake.com/"><img style="float:left;"  src="images/back_01.gif" longdesc="返回"  ></a>
  我的马卡烤箱
  <a href="cart"><img style="float:right;" src="images/cart_02.gif" longdesc="购物车"></a>
  </div>
  <div style="position:relative;">
  <img style="width:100%;" src="images/center_02.gif">
  <div style="width: 50%; font-size: 18px; position: absolute; left:25%; bottom: 22%; line-height: 30px;">
      <%=strName %> 
  <br>
  会员等级：<%=GradeName %>
  <br>
  马卡币：<span style=" color:#e68b71;"><%=makabi %></span></div>
  </div>
  
  <div style=" clear:both;width:88%; background-color:#fff; padding-right:5%; padding-left:5%; margin-top:20px; margin-left:1%; margin-right:1%;">
  <div style=" border-bottom:1px solid #dcdcdc; width:100%; font-size:16px; height:45px; line-height:45px;">
  <img src="images/center.gif" style="width:30px; height:40px; float:left; ">&nbsp;
  邀请好友有奖
  <a href="#">
  <img src="images/center_01_03.gif" style="width:30px; height:40px; float:right; ">
  </a>
  </div>
  
    <div style=" border-bottom:1px solid #dcdcdc; width:100%; font-size:16px; height:45px; line-height:45px;">
  <img src="images/center_09.gif" style="width:30px; height:40px; float:left; ">&nbsp;
  待付款订单
  <a href="#">
  <img src="images/center_01_03.gif" style="width:30px; height:40px; float:right; ">
  </a>
  </div>
  
    <div style=" border-bottom:1px solid #dcdcdc; width:100%; font-size:16px; height:45px; line-height:45px;">
  <img src="images/center_14.gif" style="width:30px; height:40px; float:left; ">&nbsp;
  全部订单
  <a href="#">
  <img src="images/center_01_03.gif" style="width:30px; height:40px; float:right; ">
  </a>
  </div>
  
  
    <div style=" border-bottom:1px solid #dcdcdc; width:100%; font-size:16px; height:45px; line-height:45px;">
  <img src="images/center_14-05.gif" style="width:30px; height:40px; float:left; ">&nbsp;
  管理地址
  <a href="#">
  <img src="images/center_01_03.gif" style="width:30px; height:40px; float:right; ">
  </a>
  </div>
  
  
      <div style=" border-bottom:1px solid #dcdcdc; width:100%; font-size:16px; height:45px; line-height:45px;">
  <img src="images/center_14-06.gif" style="width:30px; height:40px; float:left; ">&nbsp;  <a href="memberhelp">
  会员权益说明

  <img src="images/center_01_03.gif" style="width:30px; height:40px; float:right; ">
  </a>
  </div>
  
  </div>
  <div id="bntoutlogin" style="width:98%; height:45px; line-height:45px; background-color:#e97c5d; font-size:20px; color:#ffffff; text-align:center; margin-top:20px; margin-bottom:20px; clear:both; margin-left:1%; margin-right:1%;">退出登录</div>
        <script type="text/javascript">
            $(function () {
                $("#bntoutlogin").click(function () {
                    $.post("mapi/outloginapi.ashx", { outlogin: "outlogin"}, function (data) {
                        if(data=="true")
                            window.location.href = "/mobile/login";
                    })})})
            </script>
</asp:Content>
