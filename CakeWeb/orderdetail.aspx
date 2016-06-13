<%@ Page Title="" Language="C#" MasterPageFile="~/MobileSite1.Master" AutoEventWireup="true" CodeBehind="orderdetail.aspx.cs" Inherits="CakeWeb.orderdetail" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
           <title>订单详情_马卡烤箱官网</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="header1"><div onclick="javascript:history.go(-1)"><img class="backimg"  src="images/back_01.png" longdesc="返回"  ><div class="backtxt">返回</div></div>
  我的订单
<a href="mycart.aspx"><img class="cart" src="images/cart_02.png" longdesc="购物车" /></a>
</div>
        <div style="height:20px; width:100%; clear:both;"></div>
    <div style="width:100%; max-width:640px;background-color:#fff; height:100%;clear:both; line-height:30px;">
        
        <div style="padding-left:10px; padding-right:10px; width:100%; max-width:620px; border-bottom:1px solid #d9e2dd; height:55px;line-height:55px; background-color:#fff;  font-size:18px;">
            <div style=" float:left;">订单号：<span style="color:#e68b71"><%=ordercode %></span></div>

            <div style=" float:right;color:#e68b71;"> 取消订单</div>
      </div>
        <div style="font-size:16px; padding:10px; width:100%; max-width:620px; border-bottom:1px solid #d9e2dd; clear:both;">
    总金额：¥<%=orderprice %>
            <br />
    下单日期：<%=orderdate %>
            <br />
    支付方式：<%=paytype %>
                

        </div>
       <div style="font-size:16px;  padding:10px; width:100%; max-width:620px; border-bottom:1px solid #d9e2dd;clear:both; background-color:#fff;  ">
       收货地址：<%=orderaddress %>
           <br />
       收货人：<%=ordername %>   
           <br />
       联系电话：<%=ordermobile %>                
       </div>
 <div style="font-size:16px; padding:10px; width:100%; max-width:620px; border-bottom:1px solid #d9e2dd; clear:both;">
   配送时间：<%=bastdate %>     
        </div>
        
<div style="font-size:16px;  padding:10px; width:100%; max-width:620px; clear:both; background-color:#fff; border-bottom:1px solid #d9e2dd; ">
       <div>商品清单</div>
    
         <asp:DataList runat="server" ID="dllist" >
                               <ItemTemplate>
 <div style="height:24px;  clear:both;">
         <div style="float:left; display:inline-block; height:24px;"><%#Eval("ProductName") %> </div>   
           <div style="float:right; display:inline-block; height:24px;"><%#Eval("ProductPrice") %> 元     </div> 
    </div>
       <div style="height:24px;  clear:both; line-height:24px;">
      <div style="float:left; display:inline-block; height:24px; color:#b4c8ba;"> 磅数：<%#Eval("Specification") %> 磅   </div>   
           <div style="float:right; display:inline-block; height:24px;">数量：<%#Eval("ProductNumber") %>      </div> </div>
            </ItemTemplate>
             </asp:DataList>
          
     
     
       </div>
       
        <div style="font-size:16px; height:30px;  padding:10px; width:100%; max-width:620px; border-bottom:1px solid #d9e2dd;clear:both; background-color:#fff;  ">
      <div style="float:left; display:inline-block; height:30px;">生日牌 </div>   
           <div style="float:right; display:inline-block; height:30px;"><%=card %> </div> 
       </div>
         <div style="font-size:16px;padding:10px; height:30px;  width:100%; max-width:620px; border-bottom:1px solid #d9e2dd;clear:both; background-color:#fff;  ">
      <div style="float:left; display:inline-block; height:30px;">订单状态 </div>   
           <div style="float:right; display:inline-block; height:30px;"><%=orderstatus %>     </div> 
       </div>
               <%--  <div style="font-size:16px; padding:10px; height:30px;  width:100%; max-width:620px; border-bottom:1px solid #d9e2dd;clear:both; background-color:#fff;  ">
      <div style="float:left; display:inline-block; height:30px;">商品金额 </div>   
           <div style="float:right; display:inline-block; height:30px;">¥198.0     </div> 
       </div>--%>
                         <div style="font-size:16px; height:30px;  padding:10px; width:100%; max-width:620px; border-bottom:1px solid #d9e2dd;clear:both; background-color:#fff;  ">
      <div style="float:left; display:inline-block; height:30px;">配送费用 </div>   
           <div style="float:right; display:inline-block; height:30px;">+¥<%=fart %>     </div> 
       </div>
                                 <div style="font-size:16px;padding:10px; height:30px;  width:100%; max-width:620px; border-bottom:1px solid #d9e2dd;clear:both; background-color:#fff;  ">
      <div style="float:left; display:inline-block; height:30px;">马卡币折扣      </div>   
           <div style="float:right; display:inline-block; height:30px;">-¥<%=strmakabi %>     </div> 
       </div>
                                         <div style="font-size:16px; height:30px;  padding:10px; width:100%; max-width:620px; border-bottom:1px solid #d9e2dd;clear:both; background-color:#fff;  ">
      <div style="float:left; display:inline-block; height:30px;">订单备注      </div>   
           <div style="float:right; display:inline-block; height:30px;"><%=remark %>  </div> 
       </div>
                                                 <div style="font-size:16px; height:30px;  padding:10px; width:100%; max-width:620px; border-bottom:1px solid #d9e2dd;clear:both; background-color:#fff;  ">
      <div style="float:left; display:inline-block; height:30px;">订单总金额      </div>   
           <div style="float:right; display:inline-block; height:30px;">¥<%=orderprice %>       </div> 
       </div>

<div style="width:100%; max-width:640px;  font-weight:bold; font-size:20px; height:70px; clear:both; margin-top:20px;">

        <div style=" float:right;  width:140px;">
       						<button style="width:100%;height:44px;line-height:44px;background:#e97c5d;border:none;color:#fff;" type="button" onclick="toPay(<%=ordercode %>)" >去支付</button>

					</div>
          
    <div style=" float:right;  width:160px; margin-right:10px; font-weight:normal; margin-left:15px; height:44px;line-height:44px; color:#e68b71;">
       						应付金额：<%=orderprice %>  元
					</div>
        </div>
    </div>
    <script type="text/javascript">
       function toPay(ordercode)
            {

           window.location.href = "alipay/index.aspx?code=" + ordercode;
            }

    </script>
</asp:Content>
