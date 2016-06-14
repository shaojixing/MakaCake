<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="productdetial.aspx.cs" Inherits="CakeProJect.productdetial" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style>

        input {
            width: 100%;
            overflow-x: visible;
            overflow-y: visible;
           
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
     <table style="width:90%; margin:0 auto;">
         <tr><td colspan="4">主表信息：</td></tr>
        <tr>
            <td>产品名称：</td><td><input type="text" id ="txtptitle" runat="server"/></td>
             <td>产品介绍：</td><td><input type="text" id ="txtpdec" runat="server"/></td>
             <td>产品价格：</td><td><input type="text" id ="txtprice" runat="server"/></td>
             <td>销售量：</td><td><input type="text" id ="txtsalenum" runat="server"/></td>
        </tr>
         <tr>
            <td>缩略图一：</td><td><input type="text" id ="txtimg1" runat="server"/></td>
             <td>缩略图二：</td><td><input type="text" id ="txtimg2" runat="server"/></td>
             <td>缩略图三：</td><td><input type="text" id ="txtimg3" runat="server"/></td>
             <td>分类：</td><td><input type="text" id ="txtcateg" runat="server"/></td>
         </tr>
        <tr>
            <td></td>
            
              <td></td>
              <td id="msg" runat="server" style="color:red"></td>
        </tr>
    </table>
    </div>
    </form>
</body>
</html>
