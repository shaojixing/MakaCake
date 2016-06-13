<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="detail.aspx.cs" Inherits="CakeProJect.detail" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
        <style type="text/css">
table.gridtable {
	font-family: verdana,arial,sans-serif;
	font-size:11px;
	color:#333333;
	border-width: 1px;
	border-color: #666666;
	border-collapse: collapse;
}
table.gridtable th {
	border-width: 1px;
	padding: 8px;
	border-style: solid;
	border-color: #666666;
	background-color: #dedede;
}
table.gridtable td {
	border-width: 1px;
	padding: 8px;
	border-style: solid;
	border-color: #666666;
	background-color: #ffffff;
}
</style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
   订单号： <input  runat="server" id="txtordercode"/>
       手机号码： <input  runat="server" id="txtmobile"/>
        收货地址： <input  runat="server" id="txtaddress"/>

    </div>
           <div id="datalist" runat="server">
            <table class="gridtable">
                <tr>
                    <th>订单编号</th>
                    <th>产品名称</th>
                    <th>产品价格</th>
                    <th>产品数量</th>
                   

                </tr>
            <asp:Repeater ID="orderlist" runat="server">
                <ItemTemplate>
                     <tr>
                    <td><%#Eval("OrderCode") %></td>
                    <td><a target="_blank" href="http://m.makacake.com/productdetail.aspx?wd=<%#Eval("ProductId") %>"><%#Eval("ProductName") %></a></td>
                    <td><%#Eval("ProductPrice") %></td>
                          <td><%#Eval("ProductNumber") %></td>
                 

                </tr>
                </ItemTemplate>
                

            </asp:Repeater>
          </table>
     
        </div>
    </form>
</body>
</html>
