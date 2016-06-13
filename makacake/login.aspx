﻿<%@ Page Title="" Language="C#" MasterPageFile="~/ckaesite.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="makacake.login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="css/login.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="allcort">
<div class="header">
	<a href="javasrcipt:;" class="tohome fl"></a>
	<span>登录</span>
	<a href="javascript:;" class="header_right shopcart_r">
		<span>1</span>
	</a>
</div>
<div id="wrapper">
	<div id="scroller">
		<div class="container">
			<div class="pd8">
				<!--登录切换-->
				<div class="cake_loginchoose">
					<a href="javascript:;" class="login_click">个人用户登录</a>
					<a href="javascript:;">企业用户登录</a>
				</div>
				<!--登录切换end-->
				<!--登录框begin-->
				<div class="cake_login">
					<div class="cakelogin_input">
						<input type="text" placeholder="请输入您的手机号码" />
					</div>
					<div class="cakelogin_input">
						<input type="password" placeholder="请输入密码" />
					</div>
				</div>
				<div class="cakelogin_operate fix">
					<div class="cakelogin_auto fl"><input type="checkbox" name="" id="check_auto" checked="checked" /><span id="login_auto">自动登录</span></div>
					<a href="javascript:;" class="fr">忘记密码？</a>
				</div>
				<!--登录框end-->
				<!--登录按钮begin-->
				<div class="cakelogin_btn cakebtn">
					<a href="javascript:;" class="cakebtn_bg">登录</a>
					<a href="javascript:;" class="cakebtn_border">注册</a>
				</div>
				<!--登录按钮end-->
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
seajs.use("js/page/login");
</script>
</asp:Content>
