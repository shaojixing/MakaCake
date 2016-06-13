﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="makacake.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">`
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
	<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no" />
	<title>首页</title>
	<link rel="stylesheet" href="css/common.css" />
	<link rel="stylesheet" href="css/index.css" />
</head>
<body>
    <form id="form1" runat="server">
   <div class="allcort">
<!--头部begin-->
<div class="header indexHead">
	<a href="javascript:;" class="header_right shopcart_r">
		<span>1</span>
	</a>
</div>
<!--头部end-->
<div id="wrapper">
	<div id="scroller">
		<div class="container">
			<div class="i-main">
				<!--轮播图begin-->
				<div id="index-slide" class="slideBox">
					<div class="bd">
						<div class="tempWrap">
							<ul>
								<li>
									<a href="javascript:;"><img alt="" src="img/index/banner.jpg"></a>
								</li>
								<li>
									<a href="javascript:;"><img alt="" src="img/index/banner.jpg"></a>
								</li>
								<li>
									<a href="javascript:;"><img alt="" src="img/index/banner.jpg"></a>
								</li>
								<li>
									<a href="javascript:;"><img alt="" src="img/index/banner.jpg"></a>
								</li>
							</ul>
						</div>
					</div>
					<div class="hd">
				        <ul class="fix">
							<li class="on"><span></span></li>
							<li class=""><span></span></li>
							<li class=""><span></span></li>
						</ul>
				    </div>
				</div>
				<!--轮播图end-->
				<!--分类菜单begin-->
				<div class="typeMenu">
					<a class="tmBg1" href="javascript:;">所有蛋糕</a>
					<a class="tmBg2" href="javascript:;">商品分类</a>
					<a class="tmBg3" href="javascript:;">免费试吃</a>
					<a class="tmBg4" href="javascript:;">会员请进</a>
				</div>
				<!--绿色背景-->
				<div class="greencort">
					<!--产品-->
					<div class="cakething_cort">
						<a href="javascript:;">
							<img src="img/common/democp.jpg" />
						</a>
						<a href="javascript:;">
							<img src="img/common/democp.jpg" />
						</a>
						<a href="javascript:;">
							<img src="img/common/democp.jpg" />
						</a>
						<a href="javascript:;">
							<img src="img/common/democp.jpg" />
						</a>
					</div>
					<!--产品end-->
					<!--点击更多-->
					<div class="clickmore">
						<span>更多请点击</span>
					</div>
					<!--点击更多end-->
				</div>
				<!--绿色背景end-->
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
seajs.use("js/page/index");
</script>
    </form>
</body>
</html>