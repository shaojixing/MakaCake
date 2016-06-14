<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddUser.aspx.cs" Inherits="CakeProJect.AddUser" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <table>
        <tr>
            <td>用户名：</td><td><input type="text" id ="txtuser" runat="server"/></td>
             <td>密码：</td><td><input type="text" id ="txtpwd" runat="server"/></td>
             <td>真实姓名：</td><td><input type="text" id ="txtreal" runat="server"/></td>
        </tr>
        <tr>
            <td></td>
            
              <td><asp:Button ID="Button1" runat="server" Text="添加" OnClick="Button1_Click" /></td>
              <td id="msg" runat="server" style="color:red"></td>
        </tr>
    </table>
    </div>
    </form>
</body>
</html>
