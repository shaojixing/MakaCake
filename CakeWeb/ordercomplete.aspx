<%@ Page Title="" Language="C#" MasterPageFile="~/MobileSite1.Master" AutoEventWireup="true" CodeBehind="ordercomplete.aspx.cs" Inherits="CakeWeb.ordercomplete" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>订单提交成功_马卡烤箱官网</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <div class="header1"><div onclick="javascript:history.go(-1)"><img class="backimg"  src="images/back_01.png" longdesc="返回"  ><div class="backtxt">返回</div></div>
  订单提交成功
  <a href="mycart.aspx"><img class="cart" src="images/cart_02.png" longdesc="购物车" /></a>
  </div>
    <div style="width:100%; max-width:640px; height:15px; clear:both;"></div>
    <div style="font-size:18px; color:#e47b5d; line-height:35px; width:100%; max-width:640px; margin-bottom:30px; clear:both;">

        <div style="color:#4c7258">感谢您的订购，您的订单已经提交成功。 </div>
       <div> <span style="color:#4c7258">订单号：</span><%=ordercode %> </div>
        温馨提示： 
        <br />
        请收货人保持电话畅通，配送员会在送达前与您确认送货时间，以节省您的宝贵时间，谢谢
    </div>
    <div style="width:330px; margin:0 auto; font-weight:bold; font-size:20px; clear:both;">
      
    <div style=" float:left; vertical-align:middle;  width:150px;">
						<div style=" border:1px solid #e97c5d; width:100%;height:44px;line-height:44px; vertical-align:middle; text-align:center; background:#fff;color:#e97c5d;" ><a href="orderdetail.aspx?wd=<%=ordercode %>" >查看订单</a></div>
       
					</div>
        <div style=" float:left; margin-left:30px; width:150px;">
						<button style="width:100%;height:44px;line-height:44px;background:#e97c5d;border:none;color:#fff;" type="button">去支付</button>
       
					</div>
        </div>

</asp:Content>
