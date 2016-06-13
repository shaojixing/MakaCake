<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="CakeProJect.index" %>

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
    <div style="width:980px; height:50px;" >
        用户名：<input type="text" id="txtName" runat="server" />

        密码：<input type="text" id="txtPwd" runat="server" />
        
        <asp:Button ID="Button1" runat="server" Text="通行证" OnClick="Button1_Click" style="height: 21px" />

    </div>
         <div style="width:980px; height:50px;" >
           关键词：<asp:TextBox ID="txtword" runat="server">未付款</asp:TextBox>
           
              <asp:Button ID="Button2" runat="server" Text="搜索" style="height: 21px" OnClick="Button2_Click" />
         </div>
        <div id="datalist" runat="server">
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
            <div><asp:LinkButton runat="server" OnClick="Unnamed1_Click">上一页</asp:LinkButton><asp:LinkButton runat="server" OnClick="Unnamed2_Click">下一下</asp:LinkButton></div>
        </div>
    </form>
</body>
</html>
