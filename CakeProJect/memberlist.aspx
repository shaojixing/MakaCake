<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="memberlist.aspx.cs" Inherits="CakeProJect.memberlist" %>

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
                    <th>用户ID</th>
                    <th>呢称</th>
                    <th>手机号码</th>
                    <th>email</th>
                    <th>登陆密码</th>
                     <th>马卡币</th>
                      <th>消费金额</th>
                    <th>会员等级</th> 
                     <th>邀请码</th> 
                     <th>邀请注册人数</th>
                     <th>注册日期</th> 
                    <th style="width:50px;">编辑</th>
                    <th style="width:50px;">收货地址</th>
                    <th style="width:50px;">购物车数据</th>

                </tr>
            <asp:Repeater ID="memberdata" runat="server">
                <ItemTemplate>

                     <tr>
                    <td><%#Eval("Id") %></td>
                    <td><%#Eval("NiceName") %></td>
                    <td><%#Eval("Mobile") %></td>
                    <td><%#Eval("Email") %></td>
                    <td><%#Eval("Pwd") %></td>
                     <td><%#Eval("MaKaCurrency") %></td>
                      <td><%#Eval("OrderPrice") %></td>
                          <td><%#Eval("GradeName") %></td>
                         <td><%#Eval("InvitationCode") %></td>
                         <td><%#Eval("InvitationNumber") %></td>
                         <td><%#Eval("CreateDate") %></td>
                     <td><a href="memberdetail.aspx?id=<%#Eval("Id") %>">编辑</a></td>
<td><a href="addresslist.aspx?id=<%#Eval("Id") %>">收货地址</a></td>
                         <td><a href="cartlist.aspx?id=<%#Eval("Id") %>">购物车数据</a></td>
                </tr>
                </ItemTemplate>
                

            </asp:Repeater>
          </table>
      </td></tr>
        </table>
    </form>
</body>
</html>
