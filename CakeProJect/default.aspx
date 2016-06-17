<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="CakeProJect._default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="jquery-easyui-1.4.5/themes/default/easyui.css" rel="stylesheet" />
	<link rel="stylesheet" type="text/css" href="jquery-easyui-1.4.5/themes/icon.css">
	<script type="text/javascript" src="jquery-easyui-1.4.5/jquery.min.js"></script>
	<script type="text/javascript" src="jquery-easyui-1.4.5/jquery.easyui.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
   	<h2>
           <img src="images/login_01.png" width="120" /></h2>
	
	
	<div class="easyui-layout" style="width:100%;height:1100px;">
		
		<div data-options="region:'south',split:true" style="height:60px;"></div>

		<div data-options="region:'west',split:true" title="菜单" style="width:150px;">
            <a href="javascript:f('index.aspx')" class="easyui-linkbutton c2" style="width:100%">订单管理</a>
             <a href="javascript:f('productlist.aspx')" class="easyui-linkbutton c2" style="width:100%">产品管理</a>
             <a href="javascript:f('memberlist.aspx')" class="easyui-linkbutton c2" style="width:100%">用户管理</a>
		</div>
		<div data-options="region:'center',title:'工作区',iconCls:'icon-ok'" style="height:1100px; width:800px;">
			<div  style="width:100%;height:1100px; overflow:hidden;">
              <iframe id='ifContext' src='index.aspx' style="height:100%; width:100%;"></iframe>
                </div>
		</div>
	</div>
    </form>
    <script>
        function f(mysrc)
        {
            this.ifContext.src = mysrc;
        }

    </script>
</body>
</html>
