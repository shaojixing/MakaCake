<%@ Page Language="C#" AutoEventWireup="true" ValidateRequest="false" CodeBehind="productdetial.aspx.cs" Inherits="CakeProJect.productdetial" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <script type="text/javascript" charset="utf-8" src="utf8-net/ueditor.config.js"></script>
    
    <script type="text/javascript" charset="utf-8" src="utf8-net/ueditor.all.min.js"> </script>
    <!--建议手动加在语言，避免在ie下有时因为加载语言失败导致编辑器加载失败-->
    <!--这里加载的语言文件会覆盖你在配置项目里添加的语言类型，比如你在配置项目里配置的是英文，这里加载的中文，那最后就是中文-->
    <script type="text/javascript" charset="utf-8" src="utf8-net/lang/zh-cn/zh-cn.js"></script>
    <script src="js/jquery.js"></script>
<link href="css/common.css" rel="stylesheet" />
    <style>

        input {
            width: 100%;
            overflow-x: visible;
            overflow-y: visible;
           
        }
.f1{ float:left; width:100%;}
.t2 { clear:both; /*border-collapse: collapse;*/ border: 1px solid #c9dae4; }
.t2 tr td{ border-bottom: 1px solid #e6e6e6; padding: 5px 0px 5px 10px; line-height:22px; word-break:break-all;}
 .t2 .txt {
       width:100px;
             }
        .gridtable input  {
        width:66px;
        text-align:center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="f1">
     <table style="width:90%; margin:0 auto;" class="t2">
         <tr><td colspan="4">产品信息：</td>
         </tr>
         <tr>
             <td >产品Id:</td>
             <td ><input type="text" id ="txtId" runat="server" readonly="true"/></td>
              <td ></td>
              <td ></td>
         </tr>
        <tr>
            <td class="txt">产品名称：</td>
            <td><input type="text" id ="txtptitle" runat="server"/></td>
             <td class="txt">产品介绍：</td>
            <td><input type="text" id ="txtpdec" runat="server"/></td>
           
        </tr>
         <tr>
               <td class="txt">产品价格：</td>
            <td><input type="text" id ="txtprice" runat="server"/></td>
             <td class="txt">销售量：</td><td>
                 <input type="text" id ="txtsalenum" runat="server"/></td>

         </tr>
         <tr>
            <td class="txt">缩略图一：</td>
             <td>
               <%--  <input type="text" id ="txtimg1" runat="server"/>  --%>
                  <asp:FileUpload ID="fileimg1" runat="server" /></td>
             <td class="txt"><asp:Button ID="btnupimg1" class="tt_btn" Text="上传" runat="server" OnClick="btnupimg1_Click"/></td>
             <td><img id="txtimg1" runat="server"/></td>
             
         </tr>
           <tr>
          
            <td class="txt">缩略图二：</td>
             <td> <asp:FileUpload ID="fileimg2" runat="server" />
              <%--   <input type="text" id ="txtimg2" runat="server"/>--%>

             </td>
                 <td class="txt"><asp:Button ID="btnimg2" class="tt_btn" Text="上传" runat="server" OnClick="btnimg2_Click"  /></td><td><img id="txtimg2" runat="server"/></td>
             
         </tr>
         <tr>  
             <td class="txt">缩略图三：</td>
             <td>
                 <asp:FileUpload ID="fileimg3" runat="server" />
             </td>
              <td class="txt"><asp:Button ID="btnimg3" class="tt_btn" Text="上传" runat="server" OnClick="btnimg3_Click"  /></td><td><img id="txtimg3" runat="server"/></td>
            
         </tr>
         <tr>
              <td class="txt">分类：</td><td><input type="text" id ="txtcateg" runat="server"/></td>
              <td class="txt"></td><td></td>
         </tr>
          <tr>
              
              <td class="txt">产品详情：</td>
              <td></td>
              <td></td>
              <td></td>
              </tr>
          <tr>
              <td ></td>
                <td  colspan="3"><script id="editor" type="text/plain" style="width:100%;height:100%;">
                   <%=counttent %>
                      </script></td>
          </tr>
          <tr>
              <td id="bnt"></td>
                <td ></td>
                <td ></td>
                <td ></td>
          </tr>
         <tr>
             <td colspan="4">
                   <table class="gridtable">
                   <tr>
                       <td>产品ID:</td><td><input type="text" readonly="true" id="npid" /></td>
                       <td>磅数:</td><td><input type="text"  id="nspec" /></td>
                       <td>产品价格:</td><td><input type="text"  id="nspice" /></td>
                       <td>尺寸:</td><td><input type="text"  id="nsize" /></td>
                       <td><button onclick='adddetail()'>添加规格</button></td>
                   </tr>    
                   </table>
                       </td>
         </tr>

         <tr>
             <td colspan="4">
                   <table class="gridtable">
                <tr>
                     <th>ID</th>
                     <th>产品ID</th>
                    <th>磅数</th>
                    <th>产品价格</th>
                    <th>尺寸</th>
                    <th>查看</th>

                </tr>
            <asp:Repeater ID="detaildata" runat="server">
                <ItemTemplate>

                     <tr>
                    <td>
                        <input type="text" value=" <%#Eval("Id") %>" id="did" />
                       </td>
                    <td> <input type="text" readonly="true" value=" <%#Eval("ProductId") %>" id="pid" />
                      </td>
                    <td> <input type="text" value=" <%#Eval("Specification") %>" id="specification" />
                        磅</td>
                    <td> ￥<input type="text" value=" <%#Eval("Price") %>" id="price" />
                        </td>
                         <td> <input type="text" value=" <%#Eval("Size") %>" id="size" />
                            </td>
                     <td><a href="javascript:updatedetail();">更新</a></td>

                </tr>
                </ItemTemplate>
                

            </asp:Repeater>
          </table>

             </td>

         </tr>
         <tr>
             <td colspan="4"></td>
         </tr>
    </table>
    </div>
      
        <script type="text/javascript">

    //实例化编辑器
    //建议使用工厂方法getEditor创建和引用编辑器实例，如果在某个闭包下引用该编辑器，直接调用UE.getEditor('editor')就能拿到相关的实例
    var ue = UE.getEditor('editor');

   // insertHtml();
    
    function getContent() {
        var arr = [];
       // arr.push("使用editor.getContent()方法可以获得编辑器的内容");
        //arr.push("内容为：");
        arr.push(UE.getEditor('editor').getContent());
        return arr.join("\n");

    }
</script>

        <script>
            $(function () {
                var pid = $("#txtId").val();
               // alert(pid);
                if (pid != "") {
                    document.getElementById("npid").value = pid;
                   // $("#npid").val() = pid;
                    document.getElementById("bnt").innerHTML = "<button onclick='edit()'>更新产品</button>";
                }
                else {
                    document.getElementById("bnt").innerHTML = "<button onclick='add()'>发布产品</button>";
                }

            });
            function updatedetail()
            {
                var did = $("#did").val();
                var pid = $("#pid").val();
                var specification = $("#specification").val();
                var price = $("#price").val();
                var size = $("#size").val();
               // var did = $("#did").val();
                $.post("api/productapi.ashx", {
                    action: "updatedetail",did:did,pid:pid,specification:specification,price:price,size:size
                }, function (data) {
                    if (data == "true") {
                        alert("更新成功！");
                        location.href = "productdetial.aspx?pid=" + pid;
                    }
                    else {
                        alert("更新失败！");
                        return false;
                    }

                });


            }
            function adddetail()
            {
               // var did = $("#npid").val();
                var pid = $("#npid").val();
                var specification = $("#nspec").val();
                var price = $("#nspice").val();
                var size = $("#nsize").val();
                if (pid == "")
                {
                    alert("产品ID 不能为空，要先有产品，才可以添加规格");
                    return false;
                }
                // var did = $("#did").val();
                $.post("api/productapi.ashx", {
                    action: "adddetail", pid: pid, specification: specification, price: price, size: size
                }, function (data) {
                    if (data == "true") {
                        alert("添加成功！");
                        location.href = "productdetial.aspx?pid=" + pid;
                    }
                    else {
                        alert("添加失败！");
                        return false;
                    }

                });
            }
            function edit() {
                var pcontent = getContent();
                var ptitle = $("#txtptitle").val();
                var pdec = $("#txtpdec").val();
                var pprice = $("#txtprice").val();
                var psalenum = $("#txtsalenum").val();
                var pimg1 = $("#txtimg1")[0].src;;
                var pimg2 = $("#txtimg2")[0].src; ;
                var pimg3 = $("#txtimg3")[0].src; ;
                var pcateg = $("#txtcateg").val();
                var pid = $("#txtId").val();
                alert(pimg1);
                if (ptitle == "")
                {
                    alert("产品名称不能为空！");
                    return false;
                }
                $.post("api/productapi.ashx", {
                    action: "edit", pcontent: pcontent, ptitle: ptitle,
                pprice:pprice,psalenum:psalenum,pimg1:pimg1,pimg2:pimg2,pimg3:pimg3,pcateg:pcateg,pid:pid,pdec:pdec}, function (data) {

                   // alert(data);
                    if (data == "true") {
                        alert("更新成功！");
                        location.href = "productdetial.aspx?pid="+pid;
                    }
                    else {
                        alert("更新失败！");
                        return false;
                    }


                });
            }

            function add() {
                var pcontent = getContent();
                var ptitle = $("#txttitle").val();
                var pdec = $("#txtpdec").val();
                var pprice = $("#txtprice").val();
                var psalenum = $("#txtsalenum").val();
                var pimg1 = $("#txtimg1").val();
                var pimg2 = $("#txtimg2").val();
                var pimg3 = $("#txtimg3").val();
                var pcateg = $("#txtcateg").val();
               // var pid = $("#txtId").value;
                if (ptitle == "") {
                    alert("产品名称不能为空！");
                    return false;
                }
                $.post("api/productapi.ashx", {
                    action: "add", pcontent: pcontent, ptitle: ptitle,
                    pprice: pprice, psalenum: psalenum, pimg1: pimg1, pimg2: pimg2, pimg3: pimg3, pcateg: pcateg, pdec: pdec
                }, function (data) {
                    if (data == "true") {
                        location.href = "productlist.aspx";
                    }
                    else {

                        alert("更新失败！");
                        return false;
                    }


                });
            }
           
        </script>
    </form>
</body>
</html>
