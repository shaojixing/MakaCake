<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="product.aspx.cs" Inherits="CakeProJect.CakeAdmin.product" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
   请输入密钥：<input type="text"  id="pwd" runat="server"/>
    </div>
        <div>
                             <table>
                                       <tr>
                                           <td>订单编号</td>
                                            <td>手机号码</td>
                                            <td>订单状态</td>
                                            <td>订单价格</td>
                                       </tr>
   <asp:DataList runat="server" ID="DataList1" DataKeyField="ID" >
                               <ItemTemplate>
                  
                                       <tr>
                                           <td><%#Eval("OrderCode") %></td>
                                            <td><%#Eval("Mobile") %></td>
                                            <td><%#Eval("OrderStatus") %></td>
                                            <td><%#Eval("OrderPrice") %></td>
                                       </tr>

                                  
                                   </ItemTemplate>
       </asp:DataList>
                                  </table>
             当前页：<asp:Label ID="lblCurrent" runat="server" Text="1"></asp:Label>
        总页数：<asp:Label ID="lblTotal" runat="server" Text="Label"></asp:Label>
        <asp:LinkButton ID="lbtnFirst" runat="server" OnClick="lbtnFirst_Click">第一页</asp:LinkButton>
        <asp:LinkButton ID="lbntUp" runat="server" OnClick="lbntUp_Click">上一页</asp:LinkButton> 
        <asp:LinkButton ID="lbtnDown" runat="server" OnClick="lbtnDown_Click">下一页</asp:LinkButton>
        <asp:LinkButton ID="lbtnLast" runat="server" OnClick="lbtnLast_Click">最后一页</asp:LinkButton>
        </div>
    </form>
</body>
</html>
