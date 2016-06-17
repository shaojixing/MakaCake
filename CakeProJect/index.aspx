<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="CakeProJect.index" %>

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
        
          <td> 关键词：</td><td><asp:TextBox ID="txtword" runat="server">未付款</asp:TextBox></td>
           
             <td> <asp:Button ID="Button2" runat="server" Text="搜索" style="height: 21px" OnClick="Button2_Click" />
       </td>
      </tr>
        <tr><td colspan="3">
            <table class="gridtable">
                <tr>
                    <th>订单编号</th>
                    <th>手机号码</th>
                    <th>订单金额</th>
                    <th>生日牌</th>
                    <th>送货日期</th>
                     <th>支付方式</th>
                      <th>订单状态</th>
                    <th>创建日期</th> 
                    <th>查看</th>

                </tr>
            <asp:Repeater ID="orderlist" runat="server">
                <ItemTemplate>

                     <tr>
                    <td><%#Eval("OrderCode") %></td>
                    <td><%#Eval("Mobile") %></td>
                    <td><%#Eval("OrderPrice") %></td>
                    <td><%#Eval("card_birthday") %></td>
                    <td><%#Eval("bastdate") %></td>
                     <td><%#Eval("PayType") %></td>
                      <td><%#Eval("OrderStatus") %></td>
                          <td><%#Eval("CreateDate") %></td>
                     <td><a href="detail.aspx?id=<%#Eval("OrderCode") %>">查看</a></td>

                </tr>
                </ItemTemplate>
                

            </asp:Repeater>
          </table>
      </td></tr>
        </table>
    </form>
</body>
</html>
