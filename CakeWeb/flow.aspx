<%@ Page Title="" Language="C#" MasterPageFile="~/MobileSite1.Master" AutoEventWireup="true" CodeBehind="flow.aspx.cs" Inherits="CakeProJect.mobile.flow" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>结算中心_马卡烤箱官网</title>
<link href="mcss/style.css" rel="stylesheet" type="text/css" />
<link href="mcss/calendar.css" rel="stylesheet" type="text/css" />
<script src="mjs/calendar.js?lang=zh_cn"></script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <div class="header1"><div onclick="javascript:history.go(-1)"><img class="backimg"  src="images/back_01.png" longdesc="返回"  ><div class="backtxt">返回</div></div>
  结算中心
  <a href="mycart.aspx"><img class="cart" src="images/cart_02.png" longdesc="购物车" /></a>
  </div>
       <div id="shade" style="width: 481px; height: 1597px; display: none; left: 0px; top: 0px;"></div>    <div id="loading">
	<table width="100%">
		<tr>
			<td align="right">
				<img src="images/loading.gif" />
			</td>
			<td align="left">
				&nbsp;&nbsp;<span style="color:#555;">努力加载中....</span>
			</td>
            </tr>
	</table>
</div>
<div class="wrap">
	<div class="checkout_box">
		<a name="address"></a>
		<a name="pos_consingee"></a>
		<ul class="list5">
												<li id="shipping_consignee">
												<a class="a_more" href="address.aspx">点击填写收货地址和收货人</a>
											</li>
                                            
										
			
			<li>
            
            <div id="checkout_cart_goods" style=" background-color:#fff;">
                     <asp:DataList runat="server" ID="DataList1" >
                               <ItemTemplate>
							<table width="100%" cellpadding="10">
										<tbody><tr>
						<td width="30%"><a style="display:inline-block;" href="gooddetail.html?pid=<%#Eval("ProductId") %>"><img width="100%" src="<%#Eval("ImgUrl") %>"></a></td>
						<td valign="top">
							<table width="100%" cellpadding="0" cellspacing="0">
								<tbody><tr>
									<td>
										<p class="goods_name"><a href="gooddetail.html?pid=<%#Eval("ProductId") %>"><%#Eval("ProductName") %></a></p>
										<p class="goods_attr"><a href="gooddetail.html?pid=<%#Eval("ProductId") %>"><%#Eval("Specification") %>.0磅:约<%#Eval("Size") %></a></p>
									</td>
									<td align="right">
																				<%#Eval("ProductPrice") %>元																				<br>
										×<%#Eval("ProductNumber") %></td>
								</tr>
							</tbody></table>
						</td>
					</tr>
														</tbody></table>

                                   </ItemTemplate>
                         </asp:DataList>
					</div>
				<a name="pos_ship_date"></a>
				<a name="pos_ship_time"></a>
                
				<div style="margin:10px 0;clear:both;" id="ship_title">送货时间</div>
				<table width="100%" cellpadding="0" cellspacing="0">
					<tbody><tr>
						<td width="50%">
							<div id="best_date_box" style="overflow:hidden;float:left;">
								<input readonly="readonly" class="type1" type="text" value="请选择日期" size="10" maxlength="16" name="best_date" id="best_date">
								
								<div id="best_date_cover" onclick="clearShipTime();showCalendar(document.getElementById('best_date'), '%Y-%m-%d', false, false, 'calendar');"></div>
							</div>
						</td>
						<td>
							<div id="best_time_box">
								<input readonly="readonly" style="border:none;" class="type1" name="text_best_time" id="text_best_time" value="请选择时间">
								
									<select class="type1" name="best_time" id="best_time" onchange="setShipTime(this.value);">
	<option value="">请选择</option>
				<option value="10:00-10:30">10:00-10:30&nbsp;&nbsp;</option>
					<option value="-1">10:30-11:00&nbsp;&nbsp;</option>
					<option value="10:30-11:00">11:00-11:30&nbsp;&nbsp;</option>
					<option value="11:30-12:00">11:30-12:00&nbsp;&nbsp;</option>
					<option value="10:00-10:30">12:00-12:30&nbsp;&nbsp;</option>
					<option value="12:30-13:00&">12:30-13:00&nbsp;&nbsp;</option>
					<option value="13:00-13:30">13:00-13:30&nbsp;&nbsp;</option>
					<option value="14:00-14:30">14:00-14:30&nbsp;&nbsp;</option>
					<option value="14:30-15:00">14:30-15:00&nbsp;&nbsp;</option>
					<option value="15:00-15:30">15:00-15:30&nbsp;&nbsp;</option>
					<option value="15:30-16:00">15:30-16:00&nbsp;&nbsp;</option>
					<option value="16:00-16:30">16:00-16:30&nbsp;&nbsp;</option>
					<option value="16:30-17:00">16:30-17:00&nbsp;&nbsp;</option>
					<option value="17:00-17:30">17:00-17:30&nbsp;&nbsp;</option>
					<option value="17:30-18:00">17:30-18:00&nbsp;&nbsp;</option>
					<option value="18:00-18:30">18:00-18:30&nbsp;&nbsp;</option>
					<option value="18:30-19:00">18:30-19:00&nbsp;&nbsp;</option>
					<option value="19:00-19:30">19:00-19:30&nbsp;&nbsp;</option>
					<option value="19:30-20:00">19:30-20:00&nbsp;&nbsp;</option>
					<option value="20:00-20:30">20:00-20:30&nbsp;&nbsp;</option>
					<option value="20:30-21:00">20:30-21:00&nbsp;&nbsp;</option>
			</select>
							</div>
						</td>
					</tr>
				</tbody></table>
				<script type="text/javascript">
					loadCalendar(document.getElementById('best_date'), '%Y-%m-%d', false, false, 'calendar');
				</script>
			</li>
		</ul>
		
				<ul class="list5">
						<li style="border:none;">
				<a name="pos_card_birthday"></a>
				<table width="100%">
					<tbody><tr>
						<td width="*">生日牌（免费）</td>
						<td align="right" width="50">
							不需要
						</td>
						<td align="right" width="25">
							<a href="javascript:;" style="display:inline-block;" onclick="setCardBirthday();"><img width="22" id="btn_card_birthday_no" src="images/check_on.png"></a>
						</td>
						<td align="right" width="50">
							需要
						</td>
						<td align="right" width="25">
							<a href="javascript:;" style="display:inline-block;" onclick="setCardBirthday();"><img width="22" id="btn_card_birthday_yes" src="images/check_off.png"></a>
							<input type="hidden" name="need_card_birthday" id="need_card_birthday" value="0">
						</td>
					</tr>
				</tbody></table>
				<div id="card_birthday_note" style="display:none;">
					<dl>
						<dd>
							<a href="javascript:;" style="display:inline-block;" onclick="setCardBirthdayType(0);"><img width="25" class="card_birthday_type" id="card_birthday_type_0" src="images/check_on.png"></a>
							<a href="javascript:;" style="position:relative;top:-5px;" onclick="setCardBirthdayType(0);">&nbsp;&nbsp;生日快乐</a>
						</dd>
						<dd>
							<a href="javascript:;" style="display:inline-block;" onclick="setCardBirthdayType(1);"><img width="25" class="card_birthday_type" id="card_birthday_type_1" src="images/check_off.png"></a>
							<a href="javascript:;" style="position:relative;top:-5px;" onclick="setCardBirthdayType(1);">&nbsp;&nbsp;Happy Birthday</a>
						</dd>
						<dd>
							<a href="javascript:;" style="display:inline-block;" onclick="setCardBirthdayType(2);"><img width="25" class="card_birthday_type" id="card_birthday_type_2" src="images/check_off.png"></a>
							<a href="javascript:;" style="position:relative;top:-5px;" onclick="setCardBirthdayType(2);">&nbsp;&nbsp;其他内容（限10个字以内）</a>
							
						</dd>
						<dd>
							<div id="birthday_content">
								<input type="hidden" name="card_birthday" id="card_birthday" value="">
								<textarea name="textarea_card_birthday" id="textarea_card_birthday" maxlength="10" onfocus="cardBirthdayTypeSelect(2);" onchange="saveCardBirthday(2,this.value)" style="font-size:15px;"></textarea>
							</div>
						</dd>
					</dl>
				</div>
			</li>
				<!--<li style="border:none;">
				<a name="pos_card_message"></a>
				<table width="100%">
					<tbody><tr>
						<td width="*">祝福贺卡（免费）</td>
						<td align="right" width="50">
							不需要
						</td>
						<td align="right" width="25">
							<a href="javascript:;" style="display:inline-block;" onclick="setCardMessage();"><img width="22" id="btn_card_message_no" src="images/check_on.png"></a>
						</td>
						<td align="right" width="50">
							需要
						</td>
						<td align="right" width="25">
							<a href="javascript:;" style="display:inline-block;" onclick="setCardMessage();"><img width="22" id="btn_card_message_yes" src="images/check_off.png"></a>
							<input type="hidden" name="need_card_message" id="need_card_message" value="0">
						</td>
					</tr>
				</tbody></table>
				<div id="card_message_note" style="display:none;">
					<dl>
						<dd>
							<div id="message_content">
								<textarea name="card_message" id="card_message" onchange="saveCardMessage(this.value)" maxlength="150" style="font-size:15px;color:#999;" onfocus="if(this.value=='写下您的祝福语（150字以内）'){this.value='';}this.style.color='#000';">写下您的祝福语（150字以内）</textarea>
							</div>
						</dd>
					</dl>
				</div>
			</li>-->
				<li style="border:none;">
				<table width="100%">
					<tbody><tr>
						<td width="*">
							生日蜡烛（免费）						</td>
						<td align="right" width="50">
							不需要
						</td>
						<td align="right" width="25">
							<a href="javascript:;" style="display:inline-block;" onclick="setNeedCandle();"><img width="22" id="btn_need_candle_no" src="images/check_off.png"></a>
						</td>
						<td align="right" width="50">
							需要
						</td>
						<td align="right" width="25">
							<a href="javascript:;" style="display:inline-block;" onclick="setNeedCandle();"><img width="22" id="btn_need_candle_yes" src="images/check_on.png"></a>
							<input type="hidden" name="need_candle" id="need_candle" value="1">
						</td>
					</tr>
				</tbody></table>
				<div id="candle_info">
					<table width="100%">
						<tbody><tr>
							<td width="20%">
                                [生日蜡烛 kids candles] 	生日蜡烛(10只/盒) 一个蛋糕可免费赠送一盒蜡烛	
						
							</td>
							<td>
								 						</td>
						</tr>
					</tbody></table>
				</div>
			</li>
					</ul>
				
		<a name="rights"></a>
				<ul class="list5">

		</ul>
		
		<ul class="list5">
			<ul class="list5" style="border-top:1px dashed #d9e2dd;">
				<li>
					<div style="margin:10px 0;clear:both;">支付方式</div>
					<table width="100%" cellpadding="0" cellspacing="0">
																		<tbody><tr>
													<td width="50%" align="center">
								<a class="btn_payment on" id="payment_zhihubao" href="javascript:;" onclick="javascript:setPayment('zhihubao');">支付宝支付</a>
							</td>
																									<td width="50%" align="center">
								<a class="btn_payment off" id="payment_weixin" href="javascript:;" onclick="javascript:setPayment('weixin');">货到付款</a>
							</td>
												</tr></tbody></table>
                    <input type="hidden" value="zhihubao" id="paytype" /> 
				</li>
			</ul>
			<li style="border:none;">
				<a name="pos_postscript"></a>
                <div style="width:100%; clear:both; display:inline-block; height:40px; line-height:40px; border-bottom:1px solid #d9e2dd; padding-bottom:10px;">
				<div style="width:10%; float:left; text-align:center; width:80px;">买家留言：</div>
                <div style="width:60%;float:left;"> <textarea style="width:100%; background:none; border:none; line-height:30px; height:30px; " name="postscript" id="postscript" onchange="savePostscript(this.value)" placeholder="给卖家留言（45字以内）" style="font-size:15px;"></textarea></div></div>
                <div style=" font-size:18px;width:100%; clear:both; margin-bottom:15px; margin-top:15px; height:100px;border-bottom:1px solid #d9e2dd;">
                <div style="float:left; height:35px;"><a href="javascript:;" style="display:inline-block;" onclick="setNeedgo();"><img width="22" id="btn_need_no" src="images/check_on.png"></a>&nbsp;</div><div style="float:left">可用<%=makabi %>马卡币</div><div style="float:right; color:#e97c5d;">-￥<%=makaprice%></div>
                <div style="width:100%; height:35px; clear:both;">
                 <div style="float:left">商品金额 <span style="color:#bfcfc4">共<%=count %>件商品</span></div><div style="float:right; color:#e97c5d;">+￥<%=myprice %></div></div>
                    <div style="width:100%; height:35px;">
                   <div style="float:left">配送费</div><div style="float:right; color:#e97c5d;">+￥<%=fare %></div></div>
                    <input type="hidden" name="need_candle1" id="need_candle1" value="1">
                </div>
			</li>
		</ul>
		<div style="padding:10px;font-size:16px;line-height:30px;">请您再次确认信息，修改订单需要提前7小时拨打0755-36520763 客服服务时间为早9点-晚9点），临时修改地址可能会产生配送费。</div>
 
              <div style="width:100%; margin-top:30px; clear:both; font-size:18px; text-align:center; line-height:45px;float:left; background-color:#FFF; border:1px solid #d9e2dd;">
              <div style="width:68%; height:45px; float:left; text-align:right">应付金额：<span style=" color:#e97c5d;" id="sumprice"><%=sum %>元<span></div>
                            <div style=" color:#FFF;float:right; width:25%; height:45px; background-color:#e97c5d" onclick="GoPay();">提交订单</div>
	</div> 
		<br/>
	</div>
</div>
<script type="text/javascript">
function setCardMessage()
{
	var need=$("#need_card_message").val();
	
	if(need==0)
	{
		$("#btn_card_message_yes").attr('src','images/check_on.png');
		$("#btn_card_message_no").attr('src','images/check_off.png');
		$("#card_message_note").slideDown();
		$("#need_card_message").attr('value',1);
		$("#need_card_message_tip").html('需要');
		
		var card_message=$("#card_message").val();
		
		if(card_message=='限150字')
		{
			saveCardMessage('');
		}
		else{
			saveCardMessage(card_message);
		}
	}
	else{
		if(confirm('您确定不需要祝福贺卡吗？'))
		{
			$("#btn_card_message_yes").attr('src','images/check_off.png');
			$("#btn_card_message_no").attr('src','images/check_on.png');
			$("#card_message_note").slideUp();
			$("#need_card_message").attr('value',0);
			$("#need_card_message_tip").html('不需要');
			saveCardMessage('');
		}
	}
}
function saveCardMessage(card_message)
{
	if(card_message.length > 150)
	{
		showAlert('贺卡祝福语限150个字。');
		return false;
	}
	
	card_message=encodeURIComponent(card_message);

	
}
function setCardBirthday()
{
	var need=$("#need_card_birthday").val();
	
	if(need==0)
	{
		$("#btn_card_birthday_yes").attr('src','images/check_on.png');
		$("#btn_card_birthday_no").attr('src','images/check_off.png');
		$("#card_birthday_note").slideDown();
		setCardBirthdayType(0);
		$("#need_card_birthday").attr('value',1);
	}
	else{
		if(confirm('您确定不需要生日牌吗？'))
		{
			$("#btn_card_birthday_yes").attr('src','images/check_off.png');
			$("#btn_card_birthday_no").attr('src','images/check_on.png');
			$("#card_birthday_note").slideUp();
			$("#card_birthday").attr('value','');
			$("#need_card_birthday").attr('value',0);
			saveCardBirthday(2,'');
		}
	}
}
function setNeedCandle()
{
	var need=$("#need_candle").val();
	
	if(need==0)
	{
		$("#btn_need_candle_yes").attr('src','images/check_on.png');
		$("#btn_need_candle_no").attr('src','images/check_off.png');
		$("#need_candle").attr('value',1);
		$("#candle_info").slideDown();
		
	}
	else
	{
		if(confirm('您确定不需要生日蜡烛吗？'))
		{
			$("#btn_need_candle_yes").attr('src','images/check_off.png');
			$("#btn_need_candle_no").attr('src','images/check_on.png');
			$("#need_candle").attr('value',0);
			$("#candle_info").slideUp();
			
		}
	}
}
function setNeedgo() {
    var need = $("#need_candle1").val();

    if (need == 0) {
       // $("#btn_need_yes").attr('src', 'images/check_on.png');
        $("#btn_need_no").attr('src', 'images/check_off.png');
        $("#need_candle1").attr('value', 1);
       // $("#candle_info").slideDown();

    }
    else {
        $("#btn_need_no").attr('src', 'images/check_off.png');
        $("#btn_need_no").attr('src', 'images/check_on.png');
        $("#need_candle1").attr('value', 0);
          //  $("#candle_info").slideUp();
    }
}
function setCardBirthdayType(type)
{
	if(type==0)
	{
		$("#card_birthday_type_0").attr('src','images/check_on.png');
		$("#card_birthday_type_1").attr('src','images/check_off.png');
		$("#card_birthday_type_2").attr('src', 'images/check_off.png');
		saveCardBirthday(type,'生日快乐')
	}
	else if(type==1)
	{
	    $("#card_birthday_type_0").attr('src', 'images/check_off.png');
		$("#card_birthday_type_1").attr('src', 'images/check_on.png');
		$("#card_birthday_type_2").attr('src', 'images/check_off.png');
		saveCardBirthday(type,'Happy Birthday')
	}
	else if(type==2)
	{
	    $("#card_birthday_type_0").attr('src', 'images/check_off.png');
	    $("#card_birthday_type_1").attr('src', 'images/check_off.png');
		$("#card_birthday_type_2").attr('src', 'images/check_on.png');
		
		var card_birthday=$("#textarea_card_birthday").val();

		saveCardBirthday(type,card_birthday)
	}
}
function clearShipTime()
{

	//$("#best_time").attr('value','').attr('disabled',true);
}
function getShipTime()
{
	//showLoading();
	
	var best_date=$("#best_date").val();
	
	if(best_date=='' || best_date=='请选择日期')
	{
	    alert('请先选择日期。');
		return false;
	}

}
function setShipTime(best_time) {
    //alert(best_time);
    if (best_time == '' || best_time == '请选择时间') {
        alert('请选择时间。');
        return false;
    }

    $('#calendar_list').animate({ bottom: '-1000px' }, 500);

    $("#text_best_time").attr('value', $("#best_time").val());

    saveShipTime();
}
function saveShipTime() {
    var best_date = $("#best_date").val();
    var best_time = $("#best_time").val();

    if (best_date == '' || best_date == '请选择日期') {
        alert('请选择日期。');
        return false;
    }
    if (best_time == '' || best_time == '请选择时间' || best_time == '-1' || best_time == '-2') {
        alert('请选择时间。');
        return false;
    }

}
function setPayment(pay_id) {
    $(".btn_payment").removeClass('on').addClass('off');
    $("#payment_" + pay_id).removeClass('off').addClass('on');
    document.getElementById('paytype').value = pay_id;


}
function saveCardBirthday(card_birthday_type,card_birthday)
{
	if(card_birthday!='' && card_birthday!='Happy Birthday')
	{
		if(card_birthday.length > 10)
		{
			showAlert('生日牌限10个字。');
			return false;
		}
	}
	
	$("#card_birthday").attr('value',card_birthday);

	card_birthday=encodeURIComponent(card_birthday);

}
function setNeedAlbum()
{
	var need=$("#need_album").val();
	
	if(need==0)
	{
		$("#btn_need_album_yes").attr('src','themes/1d1c/images/check_on.png');
		$("#btn_need_album_no").attr('src','themes/1d1c/images/check_off.png');
		$("#need_album").attr('value',1);
		$("#album_info").slideDown();

		Ajax.call('flow.php?step=save_needalbum', 'need=1' , saveNeedAlbumResponse, 'POST', 'JSON');
	}
	
}

function GoPay() {
    showLoading();
    // alert(document.getElementById('best_date_cover').value);
    var card_birthday = document.getElementById('card_birthday').value;
    var best_date = $("#best_date").val();
    var paytype = $("#paytype").val();
    var remark = $("#postscript").val();
    //alert(best_date);
    //  var sum = $("#sumprice").val();
    //  alert("card_birthday=" + card_birthday + "best_date=" + best_date + "paytype=" + paytype);
    $.post("mapi/orderapi.ashx", { action: "add", card_birthday: card_birthday, paytype: paytype, remark: remark }, function (data) {
        // alert(data);
        switch (data) {
            case "fail":
                hideLoading();
                alert("添加失败！");
                break;
            case "addressfail":
                hideLoading();
                alert("请添加收货地址！");
                window.location.href = "flow.aspx#";
                break;
            case "cartisnull":
                hideLoading();
                alert("购物车为空！");
                window.location.href = "mycart.aspx#";
                break;
            default:
                hideLoading();
                mysms(data);
                if (paytype == "zhihubao") {
                    window.location.href = "alipay/index.aspx?code=" + data;
                }
                else {
                    window.location.href = "ordercomplete.aspx?wd=" + data;
                }

        }

    })
}
function mysms(orderid) {
    $.post("wx/api/smsapi.ashx", { ordercode: orderid }, function (data) {

    })
}
$(function () {

    $.post("mapi/addressapi.ashx", { action: "get" }, function (data) { 
        if (data != "fail") {

            document.getElementById('shipping_consignee').innerText = data;
           // $("#shipping_consignee").attr('display', 'none');
            
            //window.location.href = "mycart";
        }
    })
})

</script>
</asp:Content>
