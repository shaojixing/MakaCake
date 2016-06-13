<%@ Page Title="" Language="C#" MasterPageFile="~/mobile/MobileSite1.Master" AutoEventWireup="true" CodeBehind="productdetail.aspx.cs" Inherits="CakeProJect.mobile.productdetail" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title><%=producttitle %>_产品详情页面_马卡烤箱官网</title>
    <link href="SpryAssets/SpryTabbedPanels.css" rel="stylesheet" type="text/css" />
<script src="SpryAssets/SpryTabbedPanels.js" type="text/javascript"></script>
        <link href="mcss/mb_same.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="gridContainer clearfix">
  <div style="width:100%; height:46px; clear:both;margin-left: 0;display: block;float: left; background-color:#FFF;font-size:24px; font-weight:bold; color:#e68b71; font-family:'微软雅黑'; line-height:46px; text-align:center;"><a href="http://m.makacake.com/"><img style="float:left;"  src="images/back_01.gif" longdesc="返回"  ></a>
  商品详情
  <a href="http://m.makacake.com/"><img style="float:right;" src="images/cart_02.gif" longdesc="购物车"></a>
  </div>
        		<div id="slideBox" class="slideBox slideBox5">
					<div class="bd">
						<div class="tempWrap" style="overflow:hidden; position:relative;"><ul style="width: 3198px; position: relative; overflow: hidden; padding: 0px; margin: 0px; transition-duration: 200ms; -webkit-transition-duration: 200ms; -webkit-transform: translate(-1599px, 0px) translateZ(0px);">
                                    <li style="display: table-cell; vertical-align: top; width: 100%;">
								    <img alt="<%=producttitle %>" src="<%=Imgurl1 %>">
							        </li>
                                
						<li style="display: table-cell; vertical-align: top; width: 533px;">
								    <img alt="<%=producttitle %>" src="<%=Imgurl2 %>">
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
<div style="width:96%; margin-left:4%">
<div style="width:100%; font-size:20px; line-height:50px; font-weight:bold;"> <%= producttitle%></div>
    <div style="width:100%; font-size:16px; line-height:35px;"> <%= productdec%> </div>
<div style="width:100%; font-size:20px; line-height:30px; color:#e47b5d;" ><span id="strprice"><%= price%></span> 元</div>
    <input type="hidden" value="<%= price%>" id="mprice" />
    <input type="hidden" value="" id="mid" />
<div style="width:100%; font-size:14px; line-height:45px; "> 
现在订购最早 今天 21:30 配送,每日最晚配送时间22:00
</div>

<div class="spec">
      <asp:DataList runat="server" ID="dllist" >
                               <ItemTemplate>
                                   <div for="spec_value_<%#Eval("Id") %>" rel="<%#Eval("Id") %>" class="spec_item" id="spec_<%#Eval("Id") %>" onClick="javascript:setSpec(<%#Eval("Id") %>,<%#Eval("Price") %>);">
					<div class=" ui-radio"><input style="display:none;" type="radio" name="spec_0" value="<%#Eval("Id") %>" id="spec_value_Id"></div>
					<%#Eval("Specification") %>.0磅:约 <%#Eval("Size") %>(cm) [<%#Eval("Price") %>元]										</div>
                                   </ItemTemplate>
          </asp:DataList>

								<input type="hidden" name="spec_list" value="3">
						</div>

<div style="width:100%; font-size:14px; line-height:50px; clear:both;">
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
</div>
</div>
 <div id="TabbedPanels1" class="TabbedPanels" style="margin-top:20px;clear:both;">
    <ul class="TabbedPanelsTabGroup">
      <li class="TabbedPanelsTab" tabindex="0">商品详情</li>
      <li class="TabbedPanelsTab" tabindex="0">用户评论</li>
    </ul>
    <div class="TabbedPanelsContentGroup">
      <div id="strcontent" runat="server" class="TabbedPanelsContent" style="font-size:16px; line-height:30px; padding-bottom:50px; padding-top:20px; margin-bottom:50px;">

      </div>
      <div class="TabbedPanelsContent" style="font-size:16px; padding-bottom:50px; padding-top:20px; line-height:30px; margin-bottom:50px;"> 
                <asp:DataList runat="server" ID="DataList1" >
                               <ItemTemplate>
                                   <div style="width:100%; border-bottom:1px solid #BBB; padding-bottom:20px; padding-top:20px;">
<div style=" color:#e97c5d;">
<%#Eval("UserName") %> <%#Eval("CreateDate") %> 
</div>
<div>蛋糕口味：<%#Eval("CommentLevel") %></div>
<div><%#Eval("CommentContent") %></div>
                                       </div>
                                   </ItemTemplate>
                    </asp:DataList>
					</div>
      </div>
      </div>

  <div id="btn_add" style="width:100%; display: block;">
		<a href="javascript:;" class="btn ui-link" onClick="javascript:addToCart(<%=PId%>)">放入购物车</a>
	</div>
</div>
<script type="text/javascript">
var TabbedPanels1 = new Spry.Widget.TabbedPanels("TabbedPanels1");
function setSpec(key,price)
{
	$(".spec_item").removeClass('on');
	
	$("#spec_"+key).addClass('on');
	
	$(".spec_item").find('input').attr('checked',false);
	
	//document.getElementById('spec_value_'+key).checked=true;
	var mprice = document.getElementById('strprice');
	mprice.innerText = price;
	document.getElementById('mprice').value = price;
	document.getElementById('mid').value = key;
	//changePrice();
}
function addNumber() {
    var mprice = 1;
    mprice = parseInt($("#number").val());
    mprice = mprice + 1;
    //  alert(mprice);
    // $("#number").val()= mprice;
    document.getElementById('number').value = mprice;
}
function detractNumber() {
    var mprice = 1;
    mprice = parseInt($("#number").val());
    if(mprice>1)
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
function addToCart(pid)
{
    var mid = document.getElementById('mid').value;
    var mprice = document.getElementById('strprice').innerText;
    var number = document.getElementById('number').value;
    alert("mid=" + mid + "mprice=" + mprice + "number=" + number);

    $.post("mapi/cartapi.ashx", {action:"add", mid: mid, mprice: mprice, number: number,pid:pid }, function (data) {
        alert(data);
        if (data == "sucss")
        {
            window.location.href = "mycart";
        }
    })
}
</script>

</asp:Content>
