<%@ Page Title="" Language="C#" MasterPageFile="~/mobile/MobileSite1.Master" AutoEventWireup="true" CodeBehind="mycart.aspx.cs" Inherits="CakeProJect.mobile.mycart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>我的购物车_马卡烤箱官网</title>
    <link href="SpryAssets/SpryTabbedPanels.css" rel="stylesheet" type="text/css">
<script src="SpryAssets/SpryTabbedPanels.js" type="text/javascript"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="gridContainer clearfix">
  <div style="width:100%; height:46px; clear:both;margin-left: 0;display: block;float: left; background-color:#FFF;font-size:24px; font-weight:bold; color:#e68b71; font-family:'微软雅黑'; line-height:46px; text-align:center;"><a href="http://m.makacake.com/"><img style="float:left;"  src="images/back_01.gif" longdesc="返回"  ></a>
  购物车
  <a href="http://m.makacake.com/"><img style="float:right;" src="images/cart_02.gif" longdesc="购物车"></a>
  </div>

<ul class="cart_list" id="cart_list">
     <asp:DataList runat="server" ID="DataList1" >
                               <ItemTemplate>
					<li id="cart_1206030" style="border:none;">
			<table width="100%" cellspacing="10" cellpadding="0">
			<tbody><tr>
				<td width="35%" align="left" valign="top">
					<a style="display:inline-block;" href="productdetail?wd=<%#Eval("ProductId") %> "><img  src="<%#Eval("ImgUrl") %>" style="width:224px;"></a>
				</td>
				<td valign="top">
					<a class="cart_goods_name" href="goods-133.html"><%#Eval("ProductName") %></a>
					<span class="cart_goods_attr">1.0磅:约13×13(cm)  454g</span>
										<a class="cart_goods_price" href="goods-133.html"><%#Eval("ProductPrice") %>元</a>
										<span class="cart_goods_tips">每磅蛋糕赠送5套叉碟</span>										<br>		
									</td>
				<td width="4%">
					<a href="javascript:;" style="display:inline-block;" onClick="if(confirm('您确定要删除吗？'))deleteCart('1206030')"><img width="20" src="images/btn_delete.png"></a>
				</td>
			</tr>
			</tbody></table>
			</li>
                                   </ItemTemplate>
         </asp:DataList>
			</ul>
            
            <div style=" line-height:40px; height:40px; font-size:18px;width:100%;border-bottom:1px solid #d9e2dd;">
            是否需要增加以下配件
            </div>
            <ul class="accessory_list" id="accessory_list">
                 <asp:DataList runat="server" ID="DataList2" >
                               <ItemTemplate>
				<li>
			
			<table width="100%">
				<tbody><tr>
					<td width="25%" align="left" valign="top"><a style="display:inline-block;" href="productdetail/?wd=<%#Eval("Id") %>"><img width="95%" style="border:1px solid #BBB;" src="<%#Eval("ImgUrl1") %>"></a></td>
					<td align="left" valign="top" style="padding:10px;">
						<table width="100%">
							<tbody><tr>
								<td width="50%">
									<a class="accessory_goods_name" style="color:#5C5D61;" href="goods-41.html"><%#Eval("ProductTitle") %></a>
								</td>
								<td width="50%" align="left">
									<a class="accessory_goods_price" style="color:#5C5D61;" href="{accessory.url}"><%#Eval("Price") %>元/1人份</a>
								</td>
							</tr>
						</tbody></table>
						<br>
						<table width="100%">
							<tbody><tr>
								<td width="50%">
						
                               <table width="20%" cellspacing="0" cellpadding="0" class="order_qty" style="width:150px;">
						<tbody>
							<td width="6%" style="border-right:1px solid #BBB; width:50px;">
								<a href="javascript:;" onClick="detractNumber('number');changePrice();" class="ui-link"><img height="34"  src="images/btn_detract.png"></a>
							</td>
							<td width="8%" style="background-color:#FFF; vertical-align:middle; text-align:center; width:50px;">
								<input type="text" id="number" class="number" name="number" value="1" readonly>
							</td>
							<td width="6%" style="border-left:1px solid #BBB; width:50px;">
								<a href="javascript:;" onClick="addNumber('number');changePrice();" class="ui-link"><img height="34"  src="images/btn_add.png"></a>
							</td>
						</tr>
					</tbody>
                    </table>
								</td>
								<td width="50%" align="left">
																		<a class="btn9" href="javascript:;" onClick="javascript:if(confirm('会员您好，我们每磅蛋糕会赠送5套叉碟，您是否确定购买额外叉碟？'))addAccessoryToCart(<%#Eval("Id") %>,<%#Eval("Price") %>);">添加</a>
																	</td>
							</tr>
						</tbody></table>
					</td>
				</tr>
			</tbody></table>
		</li>
                                   </ItemTemplate>
                     </asp:DataList>
			</ul>
                 <div style=" text-align:center; margin-top:30px; line-height:30px; height:50px; font-size:18px;width:100%;">
            订单金额满230元免费送货上门，订单金额未满230元以下将收取18元配送费。</div>  
              <div style="width:100%; margin-top:30px; clear:both; font-size:18px; text-align:center; line-height:45px;float:left; background-color:#FFF; border:1px solid #d9e2dd;">
              <div style="width:48%; height:45px; float:left;border-right:1px solid #d9e2dd;">应付金额：<span style=" color:#e97c5d;" ><span id="myprice"><%=myprice%></span>元</span></div>
              <div style="width:25%;color:#e97c5d; height:45px;float:left;"><a href="productlist.aspx">继续购物</a></div>
                            <div style=" color:#FFF;float:right; width:25%; height:45px; background-color:#e97c5d"><a href="numbercenter">提交订单</a></div>
	</div>
      
    </div>
    <script type="text/javascript">
        function addAccessoryToCart(pid,price)
        {
            var number = document.getElementById('number').value;
            price = parseInt(price) * parseInt(number);
            $.post("mapi/cartapi.ashx", { action: "add", mid: 0, mprice: price, number: number, pid: pid }, function (data) {
                alert(data);
                if (data == "sucss") {
                    window.location.href = "mycart";
                }
            })
        }
        function addNumber() {
            var mprice = 1;
            var price = 0;
            mprice = parseInt($("#number").val());
            mprice = mprice + 1;
            price = parseInt(document.getElementById('mprice').innerText) * myprice;
            //  alert(mprice);
            // $("#number").val()= mprice;
            document.getElementById('number').value = mprice;
            document.getElementById('mprice').innerText = price;
        }
            function detractNumber() {
                var mprice = 1;
                mprice = parseInt($("#number").val());
                if (mprice > 1)
                    mprice = mprice - 1;
                //  alert(mprice);
                // $("#number").val()= mprice;
                document.getElementById('number').value = mprice;
            }

            function changePrice() {
                var mprice = parseInt(document.getElementById('mprice').value);
                var sprice = parseInt($("#number").val());
                mprice = mprice * sprice;

                document.getElementById('strprice').innerText = mprice;
            }
            function deleteCart(carid)
            {
                $.post("mapi/cartapi.ashx", { action:"del",carid:carid}, function (data) {
                    alert(data);
                    if (data == "sucss") {
                        window.location.href = "mycart";
                    }
                })
            }

    </script>
</asp:Content>
