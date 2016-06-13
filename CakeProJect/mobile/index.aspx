<%@ Page Title="" Language="C#" MasterPageFile="~/mobile/MobileSite1.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="CakeProJect.mobile.index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>首页_马卡烤箱官网</title>
    <link href="mcss/mb_same.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="width:100%; height:46px; clear:both;margin-left: 0;display: block;float: left; background-color:#FFF"><a href="http://m.makacake.com/"><img style="float:left;" src="images/login_01.gif" longdesc="马卡烤箱"  ></a>
  <a href="cart"><img style="float:right;" src="images/cart_02.gif" longdesc="购物车" /></a>
  </div>

  <div class="banner1" >
		<div id="slideBox" class="slideBox slideBox5">
					<div class="bd">
						<div class="tempWrap" style="overflow:hidden; position:relative;"><ul style="width: 3198px; position: relative; overflow: hidden; padding: 0px; margin: 0px; transition-duration: 200ms; -webkit-transition-duration: 200ms; -webkit-transform: translate(-1599px, 0px) translateZ(0px);">
                                    <li style="display: table-cell; vertical-align: top; width: 100%;">
								    <img alt="Love Line 系列 简奢款 30分F色" src="images/pu_03.gif">
							        </li>
                                
						<li style="display: table-cell; vertical-align: top; width: 533px;">
								    <img alt="Love Line 系列 简奢款 30分F色" src="images/index_02.gif">
							        </li></ul></div>
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
 </div>
    <div style="width:100%; height:auto; background-color:#FFF; clear:both;">
   <a href="productlist"><img src="images/3.gif" style="width:23%;"/></a>
    <a href="productlist"> <img src="images/4.gif" style="width:23%;"/></a>
      <a href="numbercenter"><img src="images/1.gif" style="width:23%;"/></a>
      <a href="numbercenter"> <img src="images/2.gif" style="width:22%;" /></a>
      </div>
      <div style="width:100%; height:auto; margin:0 auto; margin-top:10px; padding-bottom:30px; clear:both; ">
<img src="images/alli_01_17.gif" style=" width:47.5%;float:left;" />
<img src="images/alli_01_17.gif" style="width:47.5%;float:left; margin-left:5%;" />
            </div>
          <div style="width:100%; height:auto; margin:0 auto; margin-top:10px; padding-bottom:30px; clear:both; ">
<img src="images/alli_01_17.gif" style=" width:47.5%;float:left;" />
<img src="images/alli_01_17.gif" style="width:47.5%;float:left; margin-left:5%;" />
            </div>
</asp:Content>
