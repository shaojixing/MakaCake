<%@ Page Title="" Language="C#" MasterPageFile="~/MobileSite1.Master" AutoEventWireup="true" CodeBehind="orderlist.aspx.cs" Inherits="CakeWeb.orderlist" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
       <title>我的订单_马卡烤箱官网</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class="header1"><div onclick="javascript:history.go(-1)"><img class="backimg"  src="images/back_01.png" longdesc="返回"  ><div class="backtxt">返回</div></div>
  我的订单
<a href="mycart.aspx"><img class="cart" src="images/cart_02.png" longdesc="购物车" /></a>
</div>
    <div style="height:20px; width:100%; clear:both;"></div>
   <div style="width:100%">
      <asp:DataList runat="server" ID="dllist" >
                               <ItemTemplate>
    <div style="width:100%; background-color:#fff; line-height:35px;">
        
        <div style="padding-left:10px; padding-right:10px; max-width:619px;  width:100%;  border-bottom:1px solid #d9e2dd; height:55px;line-height:55px; background-color:#fff;  font-size:18px;">
            <div style=" float:left;">订单号：<span style="color:#e68b71"><%#Eval("OrderCode") %></span></div>

            <div style=" float:right;"> <a href="orderdetail.aspx?wd=<%#Eval("OrderCode") %>">详情  &nbsp;<img src="images/icon1.png" style="width:8px; height:14px;" /></a></div>
      </div>
        <div style="font-size:16px; padding:10px; max-width:619px; width:100%;border-bottom:1px solid #d9e2dd; clear:both;">
    订单状态：<%#Eval("OrderStatus") %>
            <br />
    收货地址：
            <br />
    送货时间：<%#Eval("bastdate") %>
            <br />

        </div>
       <div style="font-size:16px; height:75px; padding:10px;max-width:619px; width:100%; border-bottom:1px solid #d9e2dd;clear:both; background-color:#fff;  ">
       <div>午后的栗</div>
      <div style="float:left; display:inline-block; height:45px;">1.0磅:约13×13(cm) 454g   </div>   
           <div style="float:right; display:inline-block; height:45px;">198元×1     </div> 
       </div>
 <div style="font-size:16px; padding:10px;max-width:619px; width:100%;  border-bottom:1px solid #d9e2dd; clear:both;">
   支付方式：支付宝支付 <span style="color:#e68b71;"><a href="productdetail.aspx">修改</a></span>
     
    <div style="color:#e68b71;">应付款：<%#Eval("OrderPrice") %></div> 
        </div>

<div style="width:100%;   font-weight:bold; font-size:20px; height:70px; clear:both; margin-top:20px;">
      
    <div style=" float:right;  width:150px; margin-right:10px; margin-left:15px;">
       						<button style="width:100%;height:44px;line-height:44px;background:#e97c5d;border:none;color:#fff;" onclick="toPay(<%#Eval("OrderCode") %>)" type="button">去支付</button>

					</div>
        <div style=" float:right;  width:150px;">
       						<button style=" border:1px solid #e97c5d; width:100%;height:44px;line-height:44px;background:#fff;color:#e97c5d;" type="button">取消订单</button>

					</div>
        </div>
    </div>
        </ItemTemplate>
          </asp:DataList>
       </div>
     <script type="text/javascript">
       function toPay(ordercode)
            {
           window.location.href = "alipay/index.aspx?code=" + ordercode;
            }

    </script>
</asp:Content>
