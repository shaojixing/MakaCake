﻿<%@ Page Title="" Language="C#" MasterPageFile="~/ckaesite.Master" AutoEventWireup="true" CodeBehind="address.aspx.cs" Inherits="makacake.address" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="css/cart.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="allcort">
<div class="header">
	<a href="javasrcipt:;" class="return">返回</a>
	<span>添加收货地址</span>
</div>
<div id="wrapper">
	<div id="scroller">
		<div class="container">
			<div class="pd8">
				<!--输入框begin-->
				<div class="cake_login">
					<div class="cakeadd_input fix">
						<span class="fl">深圳市</span>
						<div class="cakeaddress fr">
							<i>南山区</i>
							<select>
								<option>南山区</option>
								<option>宝安区</option>
							</select>
						</div>
					</div>
					<div class="cakelogin_input">
						<input type="text" placeholder="详细地址" />
					</div>
					<div class="cakelogin_input">
						<input type="password" placeholder="寄件人姓名" />
					</div>
					<div class="cakelogin_input">
						<input type="password" placeholder="手机号码" />
					</div>
				</div>
				<div class="cakelogin_operate fix">
					<div class="cakelogin_auto"><input type="checkbox" name="" id="check_auto" checked="checked" /><span id="login_auto">设为默认地址</span></div>
				</div>
				<!--输入框end-->
				<!--按钮begin-->
				<div class="cakebtn">
					<a href="javascript:;" class="cakebtn_bg">配送到此地址</a>
				</div>
				<!--按钮end-->
			</div>
			<!--底部begin-->
			<footer>
				<div class="cakephone">
					<a href="tel:3652 0763" mce_href="tel:3652 0763">3652 0763</a>
				</div>
				<div class="cakestatement">
					© 2016 www.Makacake.com     沪ICP备08011593号
				</div>
			</footer>
			<!--底部end-->
		</div>
	</div>
</div>
</div>
<!--JS begin-->
<script src="js/seajs/sea.js"></script>
<script>
// seajs 配置
seajs.config({
	debug: true,
	base: "./",
	alias: {
	  "zepto": "js/lib/zepto/zepto.js",
	  "iscroll": "js/lib/iscroll/iscroll.js"
	}
});
// 加载入口模块
seajs.use("js/page/common");
seajs.use("js/page/cart");
</script>
</asp:Content>