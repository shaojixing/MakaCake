﻿<%@ Page Title="" Language="C#" MasterPageFile="~/mobile/MobileSite1.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="CakeProJect.mobile.login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>会员登录_马卡龙烤箱官网</title>
    <script src="SpryAssets/SpryTabbedPanels.js" type="text/javascript"></script>
    <link href="SpryAssets/SpryTabbedPanels.css" rel="stylesheet" type="text/css" />
    <script src="mjs/Wrong.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <div style="width:100%; height:46px; clear:both;margin-left: 0;display: block;float: left; background-color:#FFF;font-size:24px; font-weight:bold; color:#e68b71; font-family:'微软雅黑'; line-height:46px; text-align:center;"><a href="javascript:history.go(-1)"><img style="float:left;"  src="images/back_01.gif" longdesc="返回"  ></a>
  会员登录
  <a href="cart"><img style="float:right;" src="images/cart_02.gif" longdesc="购物车"></a>
  </div>
  
    <div id="TabbedPanels1" class="TabbedPanels">
    <ul class="TabbedPanelsTabGroup">
      <li class="TabbedPanelsTab" tabindex="0">个人用户登录</li>
      <li class="TabbedPanelsTab" tabindex="0">企业用户登录</li>
    </ul>
    <div class="TabbedPanelsContentGroup">
      <div class="TabbedPanelsContent">
      <div class="zc_border">
<div class="wa_position haveborder clear">
							<input type="text" class="dl_txt" placeholder="请输入您的手机号码" id="txtMobile">
							<span class="iconfont"></span>
						</div>
						<div class="wa_position haveborder clear">
							<input type="password" class="dl_txt" placeholder="请输入密码" id="txtPwd" maxlength="20">
							<span class="iconfont"></span>
						</div>
                        						
					</div>
          
                      <div class="the_bt">
						<button type="button" id="btnLogin">个人登录</button>
					</div>
              <div class="success" style="display:none"></div>
                        <div class="wrong" style="display:none">
				            <span></span>
				            <i class="iconfont">&#xe608;</i>
			            </div>
      </div>
     
      <div class="TabbedPanelsContent"> 
            <div class="zc_border">
                        <div class="wa_position haveborder">
							<input type="text" class="dl_txt" placeholder="请输入您的手机号码" id="txtpMobile" />
							<span class="iconfont">&#xe607;</span>
						</div>
						<div class="wa_position haveborder clear">
							<input type="password" class="dl_txt" placeholder="请输入密码" id="txtpPwd" maxlength="20" />
							<span class="iconfont"></span>
						</div>					
					</div>
                      <div class="the_bt">
						<button type="button" id="btnComLogin">企业登录</button>
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
          $(document).ready(function () {
              w = new Wrong();
          });
          $(function () {
              $("#btnComLogin").click(function () {
              var pmobile = $("#txtMobile").val();
              var ppwd = $("#txtPwd").val();
              if (pmobile == "") {
                  w.Exit();
                  w.Show("请输入您的手机号!");
                  return false;
              }
              if (ppwd == "") {
                  w.Exit();
                  w.Show("请输入您的手机号!");
                  return false;
              }
              $.post("mapi/loginapi.ashx", { mobile: pmobile, pwd: ppwd }, function (data) {
                
                  if (data != "sucess") {
                      w.Show("请输入您正确的登录名或密码！");
                      $("#txtPwd").val("");
                      return false;
                  }
                  var returnUrl = "";
                  if (returnUrl != "") {
                      window.location.href = returnUrl;
                  } else {
                      window.location.href = "numbercenter";
                  }
                  $(":input").val("");
              })
              })
          })

          $(function () {
              $("#btnLogin").click(function () {

                  var mobile = $("#txtMobile").val();
                  var pwd = $("#txtPwd").val();
                
                  if (mobile == "") {
                      w.Exit();
                      w.Show("请输入账号!");
                      return false;
                  }
                  if (pwd == "") {
                      w.Exit();
                      w.Show("请输入密码!");
                      return false;
                  }
                  $.post("mapi/loginapi.ashx", { mobile: mobile, pwd: pwd }, function (data) {
                      switch (data)
                      {
                          case "sucess": window.location.href = "numbercenter";
                              break;
                          case "fail": w.Show("请输入正确的登录名或密码");
                              return false;
                          case "false": w.Show("你手机号已登录，如有异常请清理浏览器缓存重新登录！");
                               window.location.href = "http://m.makacake.com/";
                      }
                      var returnUrl = "";
                      if (returnUrl != "") {
                          window.location.href = returnUrl;
                      } else {
                          window.location.href = "http://m.makacake.com/";
                      }
                      $(":input").val("");
                  })
              })
          })


    </script>

</asp:Content>