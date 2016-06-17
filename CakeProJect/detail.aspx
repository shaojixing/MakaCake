<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="detail.aspx.cs" Inherits="CakeProJect.detail" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="css/common.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <table class="gridtable">
            <tr>
                <td> 订单号：</td>
                <td><input  runat="server" id="txtordercode"/></td>
                   <td> 手机号码：</td> <td><input  runat="server" id="txtmobile"/></td>
       <td> 收货地址：</td> <td><input  runat="server" id="txtaddress"/></td>
            </tr>

        <tr>
            <td colspan="6" >
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
     </td>
            </tr>
         </table>
        
    </form>
</body>
</html>
