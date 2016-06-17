<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="addresslist.aspx.cs" Inherits="CakeProJect.addresslist" %>

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
                    <th>ID号</th>
                    <th>手机号码</th>
                    <th>收货人</th>
                    <th>收货地址</th>
                    <th>地区</th>
                     <th>创建时间</th>
                    <th>操作</th>

                </tr>
            <asp:Repeater ID="addressdata" runat="server">
                <ItemTemplate>

                     <tr>
                    <td><%#Eval("Id") %></td>
                    <td><%#Eval("Mobile") %></td>
                    <td><%#Eval("Name") %></td>
                    <td><%#Eval("Adress") %></td>
                    <td><%#Eval("Area") %></td>
                     <td><%#Eval("CreateDate") %></td>
                     
                     <td><a href="memberdetail.aspx?id=<%#Eval("Id") %>">编辑</a></td>

                </tr>
                </ItemTemplate>
                

            </asp:Repeater>
          </table>
      </td></tr>
        </table>
    </form>
</body>
</html>
