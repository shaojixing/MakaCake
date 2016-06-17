<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="cartlist.aspx.cs" Inherits="CakeProJect.cartlist" %>

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
        
          <td> 关键词：</td><td><asp:TextBox ID="txtword" runat="server"></asp:TextBox></td>
           
             <td> <asp:Button ID="Button2" runat="server" Text="查询" style="height: 21px"  />
       </td>
      </tr>
        <tr><td colspan="3">
            <table class="gridtable">
                <tr>
                    <th>ID</th>
                    <th>产品名称</th>
                    <th>产品价格</th>
                    <th>数量</th>
                    <th>磅数</th>
                     <th>创建日期</th> 
                </tr>
            <asp:Repeater ID="cartdata" runat="server">
                <ItemTemplate>

                     <tr>
                    <td><%#Eval("Id") %></td>
                    <td><%#Eval("ProductName") %></td>
                    <td><%#Eval("ProductPrice") %></td>
                    <td><%#Eval("ProductNumber") %></td>
                    <td><%#Eval("Specification") %></td>
                         <td><%#Eval("CreateDate") %></td>
                </tr>
                </ItemTemplate>
                

            </asp:Repeater>
          </table>
      </td></tr>
        </table>
    </form>
</body>
</html>
