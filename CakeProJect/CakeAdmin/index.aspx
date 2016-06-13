<%@ Page Title="" Language="C#" MasterPageFile="~/CakeAdmin/AdminSite.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="CakeProJect.CakeAdmin.index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>后台首页</title>
        <script src="js/tab-view.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<div id="dhtmlgoodies_tabView1">
	<div class="dhtmlgoodies_aTab">
		<a href="#">js tab选项卡 mootools tab选项卡	</a>
	</div>
	<div class="dhtmlgoodies_aTab">
		第二个tab<br>
        <a href="#" onclick="createNewTab('dhtmlgoodies_tabView1','Dynamic','','externalfile.html',true);return false">Create new tab dynamically</a><br>	
	</div>
    </div>
    </asp:Content>

