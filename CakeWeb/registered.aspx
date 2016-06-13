<%@ Page Title="" Language="C#" MasterPageFile="~/MobileSite1.Master" AutoEventWireup="true" CodeBehind="registered.aspx.cs" Inherits="CakeProJect.mobile.registered" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>注册_马卡烤箱官网</title>
<link href="SpryAssets/SpryTabbedPanels.css" rel="stylesheet" type="text/css" />
<script src="SpryAssets/SpryTabbedPanels.js" type="text/javascript"></script>
    <script src="mjs/Wrong.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <div class="header1"><div onclick="javascript:history.go(-1)"><img class="backimg"  src="images/back_01.png" longdesc="返回"  ><div class="backtxt">返回</div></div>
  注册会员
   <a href="mycart.aspx"><img class="cart" src="images/cart_02.png" longdesc="购物车" /></a>
  </div>
  
    <div id="TabbedPanels1" class="TabbedPanels">
    <ul class="TabbedPanelsTabGroup">
      <li class="TabbedPanelsTab" tabindex="0">个人用户注册</li>
      <li class="TabbedPanelsTab" tabindex="0">企业用户注册</li>
    </ul>
    <div class="TabbedPanelsContentGroup">
      <div class="TabbedPanelsContent">
      <div class="zc_border">
<div class="wa_position haveborder clear">
							<input type="text" class="dl_txt" placeholder="请输入手机号" id="txtMobile">
							<span class="iconfont"></span>
						</div>
						<div class="wa_position haveborder clear">
							<input type="password" class="dl_txt" placeholder="请输入密码(长度大于6位)" id="txtPwd" maxlength="20">
							<span class="iconfont"></span>
						</div>
                        <div class="wa_position haveborder clear">
							<input type="password" class="dl_txt" placeholder="请再次输入密码" id="txtPwd1" maxlength="20">
							<span class="iconfont"></span>
						</div>
					</div>
            <div style="width:100%; text-align:right; font-size:16px; line-height:30px; "> <a href="login_personal.html">立即登陆>></a></div>
                      <div class="the_bt">
						<button type="button" id="btnRegister">注册</button>
					</div>
          <input type="hidden" id="code"  value="<%=code %>"/>
                                  <div class="success" style="display:none"></div>
                        <div class="wrong" style="display:none">
				            <span></span>
				            <i class="iconfont">&#xe608;</i>
			            </div> 
      </div>
      <div class="TabbedPanelsContent"> 
            <div class="zc_border">
<div class="wa_position haveborder clear">
							<input type="text" class="dl_txt" placeholder="请输入公司名称（全称）" id="txtpName">
							<span class="iconfont"></span>
						</div>
                        <div class="wa_position haveborder">
							<input type="text" class="dl_txt" placeholder="请输入您手机号码" id="txtpMobile">
							<span class="iconfont"></span>
						</div>
                                                <div class="wa_position haveborder">
							<input type="text" class="dl_txt" placeholder="请输入您企业邮箱" id="txtpEmail">
							<span class="iconfont"></span>
						</div>
                                                                        <div class="wa_position haveborder">
							<input type="text" class="dl_txt" placeholder="请输入您公司网址(选填)" id="txtpUrl">
							<span class="iconfont"></span>
						</div>
						<div class="wa_position haveborder clear">
							<input type="password" class="dl_txt" placeholder="请输入密码(长度大于6位)" id="txtpPwd" maxlength="20">
							<span class="iconfont"></span>
						</div>
                        						<div class="wa_position haveborder clear">
							<input type="password" class="dl_txt" placeholder="请再次输入密码" id="txtpPwd1" maxlength="20">
							<span class="iconfont"></span>
						</div>
					</div>
                      <div class="the_bt">
						<button type="button" id="btnComRegister">企业注册</button>
					</div>
                                  <div class="success" style="display:none"></div>
                        <div class="wrong" style="display:none">
				            <span></span>
				            <i class="iconfont">&#xe608;</i>
			            </div> 
      </div>
      </div>
    </div>
<script type="text/javascript">
var TabbedPanels1 = new Spry.Widget.TabbedPanels("TabbedPanels1");
</script>
     
    <script type="text/javascript">
        var w;
        var s;
        $(document).ready(function () {
            w = new Wrong();
            s = new Success();
        });
        var timer = null;

        $(function () {
            $("#btnRegister").click(function () {
             //   alert("1");
                var isShow = '1';
                var mobile = $("#txtMobile").val();
                if (mobile == "") {
                    w.Show("手机号不能为空");
                    return;
                }

                if (!checkMobile(mobile)) {
                    w.Show("手机号格式不正确");
                    return;
                }

               

                var pwd = $("#txtPwd").val();
                var pwd1 = $("#txtPwd1").val();
                if (pwd == "" || pwd1 == "") {
                    w.Show("密码不能为空！");
                    $("#txtPwd1").val("");
                    return;
                }
                
              //  alert(pwd + pwd1);
                if (pwd != pwd1) {
                    w.Show("两次密码不一致！");
                    $("#txtPwd").val("");
                    $("#txtPwd1").val("");
                    return;
                }
                var code = $("#code").val();
                $('#btnRegister').attr("disabled", true);
                $.post("mapi/registeredapi.ashx", { action: "personal", mobile: mobile, pwd: pwd, pwd1: pwd1,code:code }, function (data) {
                   // alert("2");
                    if (data == "sucess") {
                        s.Show("注册成功,即将进行跳转！");
                        $(":input").val("");
                        var returnUrl = "";
                        if (returnUrl != "") {
                            window.location.href = returnUrl;  
                        } else {
                            window.location.href = "numbercenter.aspx";
                        }
                        return;
                    }

                    $('#btnRegister').attr("disabled", false);
                    if (data == "fail") {
                        w.Show("注册失败！");
                        return;
                    }
                    if (data == "false")
                    {
                        w.Show("手机号已存在！");
                        return;
                    }

                });

            });
        })
        $(function () {

            $("#btnComRegister").click(function () {
               

                var mobile = $("#txtpMobile").val();
                if (mobile == "") {
                    w.Show("手机号不能为空");
                    return;
                }
                var email = $("#txtpEmail").val();
                if (email == "") {
                    w.Show("企业邮箱不能为空！");
                    return;
                }
                var pname = $("#txtpName").val();
                if (pname == "") {
                    w.Show("企业名称不能为空！");
                    return;
                }
                var purl = $("#txtpUrl").val();
                if (purl == "") {
                    purl = "无";
                }

                if (!checkMobile(mobile)) {
                    w.Show("手机号格式不正确");
                    return;
                }

                var pwd = $("#txtpPwd").val();
                var pwd1 = $("#txtpPwd1").val();
                if (pwd == "" || pwd1 == "") {
                    w.Show("密码不能为空！");
                    $("#txtPwd1").val("");
                    return;
                }

                if (pwd.length < 6 || pwd.length > 20 || pwd1.length < 6 || pwd1.length > 20) {
                    w.Show("密码长度必须在6到20个字符。");
                    return;
                }

                if (pwd != pwd1) {
                    w.Show("两次密码不一致！");
                    $("#txtpPwd").val("");
                    $("#txtpPwd1").val("");
                    return;
                }
                $('#btnComRegister').attr("disabled", true);
                $.post("mapi/registeredapi.ashx", {action:"company", mobile: mobile, pwd: pwd, pwd1: pwd1, purl: purl, pname: pname, email: email }, function (data) {
                    if (data == "sucess") {
                        s.Show("注册成功,即将进行跳转！");
                        $(":input").val("");
                        var returnUrl = "";
                        if (returnUrl != "") {
                            window.location.href = returnUrl;
                        } else {
                            window.location.href = "/";
                        }
                        return;
                    }

                    $('#btnComRegister').attr("disabled", false);
                    if (data == "fail") {
                        w.Show("注册失败！");
                        return;
                    }
                    if (data == "false")
                    {
                        w.Show("手机号已存在！");
                        return;
                    }
                });
            });
        })
    </script>
</asp:Content>
