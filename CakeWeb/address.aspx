ww<%@ Page Title="" Language="C#" MasterPageFile="~/MobileSite1.Master" AutoEventWireup="true" CodeBehind="address.aspx.cs" Inherits="CakeProJect.mobile.address" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>我的购物车_马卡烤箱官网</title>
<link href="SpryAssets/SpryTabbedPanels.css" rel="stylesheet" type="text/css">
<script src="SpryAssets/SpryTabbedPanels.js" type="text/javascript"></script>
<script src="mjs/jquery.js" type="text/javascript"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="width:100%; height:46px; clear:both;margin-left: 0;display: block;float: left; background-color:#FFF;font-size:24px; font-weight:bold; color:#e68b71; font-family:'微软雅黑'; line-height:46px; text-align:center;"><a href="http://m.makacake.com/"><img style="float:left;"  src="images/back_01.gif" longdesc="返回"  ></a>
  收货地址
  <a href="mycart.aspx"><img class="cart" src="images/cart_02.png" longdesc="购物车" /></a>
  </div>
  
  <div class="zc_border" style="margin-top:55px;">
						<div class="wa_position haveborder clear">
							<input type="text" class="dl_txt" placeholder="街道,大厦/楼区（小区名）" id="txtlo">
							<span class="iconfont"></span>
						</div>
<div class="wa_position haveborder clear">
							<input type="text" class="dl_txt" placeholder="详细地址" id="txtaddress" maxlength="20">
							<span class="iconfont"></span>
						</div>
						<div class="wa_position haveborder clear">
							<input type="text" class="dl_txt" placeholder="收货人" id="txtName" maxlength="20">
							<span class="iconfont"></span>
						</div>
						<div class="wa_position haveborder clear">
							<input type="text" class="dl_txt" placeholder="联系电话" id="txtMobile" maxlength="20">
							<span class="iconfont"></span>
						</div>
                        						
                         <div class="the_bt">
						<button type="button" id="bntSave" onclick="addAddress();">添加</button>
					</div>
					</div>
    <script type="text/javascript">
      
        function addAddress()
        {
            var address1 = document.getElementById('txtlo').value;
            var address2 = document.getElementById('txtaddress').value;
            var name = document.getElementById('txtName').value;
            var mobile = document.getElementById('txtMobile').value;
            $.post("mapi/addressapi.ashx", { action: "add", address1: address1, address2: address2, name: name, mobile: mobile }, function (data) {
                //alert(data);
                if (data !="fail") {
                    window.location.href = "mycart.aspx";
                }
            })
        }

    </script>
</asp:Content>
