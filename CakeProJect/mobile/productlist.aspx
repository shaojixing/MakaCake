<%@ Page Title="" Language="C#" MasterPageFile="~/mobile/MobileSite1.Master" AutoEventWireup="true" CodeBehind="productlist.aspx.cs" Inherits="CakeProJect.mobile.productlist" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<title>所有商品_马卡龙烤箱官网</title>
<link href="SpryAssets/SpryMenuBarHorizontal.css" rel="stylesheet" type="text/css" />
<script src="SpryAssets/SpryMenuBar.js" type="text/javascript"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <div style="width:100%; height:46px; clear:both;margin-left: 0;display: block;float: left; background-color:#FFF;font-size:24px; font-weight:bold; color:#e68b71; font-family:'微软雅黑'; line-height:46px; text-align:center;"><a href="http://m.makacake.com/"><img style="float:left;"  src="images/back_01.gif" longdesc="返回"  ></a>
  所有商品
  <a href="http://m.makacake.com/"><img style="float:right;" src="images/cart_02.gif" longdesc="购物车"></a>
  </div>
<ul id="MenuBar1" class="MenuBarHorizontal">
  <li><a class="MenuBarItemSubmenu" href="#">蛋糕品类</a>
    <ul>
      <li><a href="#">鲜果蛋糕</a></li>
      <li><a href="#">慕斯蛋糕</a></li>
      <li><a href="#">芝士蛋糕</a></li>
    </ul>
  </li>
  <li><a class="MenuBarItemSubmenu" href="#">销量</a>
    <ul>
   
    </ul>
  </li>
  <li><a href="#">价格</a>
  
      <ul>
   
    </ul></li>
</ul>
<div style="clear:both;"></div>
     <asp:DataList runat="server" ID="dllist" RepeatColumns="3" RepeatDirection="Horizontal">
                               <ItemTemplate>
<div style="width:100%;height:100%; background-color:#FFF; margin-bottom:20px; clear:both;">
<img src="<%#Eval("Imgurl1") %>" style="float:left; display:inline; width:224px; width:45%; height:auto;">
<div style="float:right; width:47%; display:inline">
<div style="line-height:50px;font-size:24px; color:#4c7258; font-weight:bold; text-align:left;"><a href="productdetail?wd=<%#Eval("Id") %>"><%#Eval("ProductTitle") %></div>
<div style="font-size:14px; line-height:24px; vertical-align:middle; height:100%"><%#Eval("productdec") %>
<br>
<span style=" line-height:35px; font-size:18px; font-weight:bold; color:#e47b5d;"><%#Eval("price") %>元/磅</span>
</div>
</div>
</div>
<div style="clear:both; width:100%; height:10px; background-color:#ebf5ee;"></div>
                                   </ItemTemplate>
         </asp:DataList>
<div style="clear:both; width:100%; height:20px; "></div>

<script type="text/javascript">
var MenuBar1 = new Spry.Widget.MenuBar("MenuBar1", {imgDown:"SpryAssets/SpryMenuBarDownHover.gif", imgRight:"SpryAssets/SpryMenuBarRightHover.gif"});
</script>
</asp:Content>
