<%@ Page Title="" Language="C#" MasterPageFile="~/ckaesite.Master" AutoEventWireup="true" CodeBehind="login_enterprise.aspx.cs" Inherits="makacake.login_enterprise" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    	<link rel="stylesheet" href="css/member.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="allcort">
<div class="header">
	<a href="javasrcipt:;" class="tohome fl"></a>
	<span>会员权益说明</span>
	<a href="javascript:;" class="header_right shopcart_r">
		<span>1</span>
	</a>
</div>
<div id="wrapper">
	<div id="scroller">
		<div class="container">
			<div class="equityCort">
				<!--tab切换-->
				<div class="cake_equitychoose">
					<a href="javascript:;">个人会员</a>
					<a href="javascript:;" class="equity_click">企业会员</a>
				</div>
				<!--tab切换end-->
				<div class="equity_whrite">
					<div class="equity_all">
						<p>一、	企业会员（Company Member）</p>
						<p>Cake Party Time是马卡烤箱为您的团队精心提供的免费欧式烘焙品鉴，在紧张的工作之余，Cake Party Time是美妙的下午茶时光，除了体验美妙的欧式烘焙美食以及烘焙文化，每一个下午茶时光，也是促进团队沟通与建设的最好时刻，相信您一定会珍惜这一美好时光。</p>
						<p>申请规则：每个企业、政府机关、学校、事业单位等成员大于20人的机构，即可提交企业会员申请，需提联系人，并且最终由时刻品牌审核，一个企业或单位仅享有一个企业会员资质。</p>
						<p>享受权益：</p>
						<p>1、新企业会员有机会享有一次免费Cake Party Time欧式烘焙品鉴资格，品鉴会人数在20-100人之间。（注：为了保证每一个Cake Party Time品鉴会都有最好的欧式烘焙体验，新会员品鉴会的数量有限，每一个申请企业都需要时刻品牌审核。）</p>
						<p>2、每一个企业会员享有马卡烤箱8.5折购买优惠。（特价或活动商品不享受折扣优惠）</p>
						<p>3、凡是企业会员，每4999马卡币享有一次Cake Party Time免费品鉴机会，品鉴人员在100人以内，品鉴之后马卡币相应扣除5000马卡币。（包括折扣因素，每消费1元积1马卡币，如原价100元，折后消费85元积85马卡币）（企业马卡币不能直接兑换现金消费）</p>
						<p>4、企业会员享有年会、大型聚会等活动蛋糕专属定制服务。</p>
						<p>5、企业专专属员工生日蛋糕卡（员工专属卡不累计马卡币）</p>
					</div>
				</div>
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
</script>
</asp:Content>
