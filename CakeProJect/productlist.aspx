﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="productlist.aspx.cs" Inherits="CakeProJect.productlist" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>产品列表</title>
<link href="css/common.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
          
            <table class="gridtable">
                <tr>
                     <th>ID</th>
                    <th>产品名称</th>
                    <th>产品价格</th>
                    <th>销售量</th>
                    <th>查看</th>

                </tr>
            <asp:Repeater ID="productdata" runat="server">
                <ItemTemplate>

                     <tr>
                    <td><%#Eval("Id") %></td>
                    <td><%#Eval("ProductTitle") %></td>
                    <td><%#Eval("Price") %></td>
                    <td><%#Eval("SaleNumber") %></td>
                     <td><a href="productdetial.aspx?pid=<%#Eval("Id") %>">查看</a></td>

                </tr>
                </ItemTemplate>
                

            </asp:Repeater>
          </table>
    </form>
</body>
</html>