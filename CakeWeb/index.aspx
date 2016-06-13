<%@ Page Title="" Language="C#" MasterPageFile="~/MobileSite1.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="CakeProJect.mobile.index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>马卡烤箱蛋糕官网_分享每个幸福时刻！</title>
    <link href="mcss/mb_same.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="header indexHead"><a href="http://m.makacake.com/"><img class="login" src="images/login_01.png" longdesc="马卡烤箱"  ></a>
  <a href="mycart.aspx"><img class="cart" src="images/cart_02.png" longdesc="购物车" /></a>
  </div>
		<div id="slideBox" class="slideBox slideBox5">
					<div class="bd">
						<div class="tempWrap" style="overflow:hidden; position:relative;"><ul style="width: 100%; position: relative; overflow: hidden; padding: 0px; margin: 0px; transition-duration: 200ms; -webkit-transition-duration: 200ms; -webkit-transform: translate(-1599px, 0px) translateZ(0px);">
                                    <li style="display: table-cell; vertical-align: top; width: 100%;">
								   <a href="share.aspx"><img alt="" src="images/banner02.jpg" ></a> 
							        </li>
                                
						<li style="display: table-cell; vertical-align: top;">
								     <a href="productdetail.aspx?wd=3"><img alt="草莓圣诞" src="images/banner01.jpg" ></a>
							        </li>
						                                                                  </ul></div>
                        						
					</div>
					<div class="hd">
						<ul><li class="">1</li><li class="">2</li><li class="on">3</li><li class="">4</li></ul>
					</div>
			
</div>
<script src="mjs/TouchSlide.1.1.js"></script>
<script type="text/javascript">
    TouchSlide({
        slideCell: "#slideBox",
        titCell: ".hd ul", //开启自动分页 autoPage:true ，此时设置 titCell 为导航元素包裹层
        mainCell: ".bd ul",
        effect: "leftLoop",
        autoPage: true, //自动分页
        autoPlay: true, //自动播放
        interTime: 4000
    });
</script>

    <div style="width:100%; max-width:640px; background-color:#FFF; clear:both;">
        <table style="width:100%;">
            <tr>
                <td style="width:25%; vertical-align:middle; text-align:center;"><a href="productlist.aspx"><img src="images/3.png" style="width:35px; height:26px;"/></a></td>
                  <td style="width:25%; vertical-align:middle; text-align:center;"><a href="productlist.aspx"> <img src="images/4.png" style="width:35px; height:26px;"/></a></td>
                  <td style="width:25%; vertical-align:middle; text-align:center;">  <a href="memberhelp.aspx"><img src="images/1.png" style="width:35px; height:26px;"/></a></td>
                  <td style="width:25%; vertical-align:middle; text-align:center;">  <a href="numbercenter.aspx"> <img src="images/2.png" style="width:35px; height:26px;" /></a></td>
            </tr>
            <tr>
                <td style="width:25%; vertical-align:middle; text-align:center;">所有蛋糕</td>
                  <td style="width:25%; vertical-align:middle; text-align:center;">商品分类</td>
             <td style="width:25%; vertical-align:middle; text-align:center;">免费试吃</td>
                  <td style="width:25%; vertical-align:middle; text-align:center;">会员请进</td>
                      </tr>
        </table> 
      </div>

<div style="width:100%; max-width:640px;">
<table class="indexlist">
    <tr>
        <td colspan="2"><a href="productdetail.aspx?wd=7"><img src="images/DSC_0377.jpg" /></a></td>
        <td colspan="2"><a href="productdetail.aspx?wd=3"><img src="images/DSC_0324.jpg" /></a></td>
    </tr>
        <tr>
        <td colspan="2" class="indextitle">春夏秋冬</td>
        <td colspan="2" class="indextitle">鲜果风车 </td>
    </tr>
            <tr>
        <td class="indexdec"> 春天该很好，你若尚在场!...</td>
                <td class="indexprice">￥298</td>
              
        <td class="indexdec"> 总有你对味！ </td>
                <td class="indexprice">￥288</td>
    </tr>
        <tr>
        <td colspan="2"><a href="productdetail.aspx?wd=4"><img src="images/DSC_0296.jpg" /></a></td>
        <td colspan="2"><a href="productdetail.aspx?wd=5"><img src="images/001.jpg" /></a></td>
    </tr>
        <tr>
        <td colspan="2" class="indextitle">开心麻花</td>
        <td colspan="2" class="indextitle">草芒之辈 </td>
    </tr>
            <tr>
        <td class="indexdec"> 笑的跟朵花似的！&nbsp;&nbsp;&nbsp;&nbsp; </td>
                <td class="indexprice">￥168</td>
              
        <td class="indexdec" > 草芒搭配，天生一对！&nbsp;&nbsp;&nbsp;&nbsp;  </td>
                <td class="indexprice">￥168</td>
    </tr>
     <tr>
        <td colspan="2"><a href="productdetail.aspx?wd=6"><img src="images/B01.jpg" /></a></td>
        <td colspan="2"><a href="productdetail.aspx?wd=1"><img src="images/01.jpg" /></a></td>
    </tr>
        <tr>
        <td colspan="2" class="indextitle">这就是光芒</td>
        <td colspan="2" class="indextitle">草莓圣诞 </td>
    </tr>
            <tr>
        <td class="indexdec"> 有了你，世界都有了光！&nbsp;&nbsp;&nbsp; </td>
                <td class="indexprice">￥288</td>
              
        <td class="indexdec">每天都是圣诞节&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                <td  class="indexprice">￥168</td>
    </tr>

</table>
</div>
</asp:Content>
