using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Cake_Model;
using Cake_Common;
using Cake_Bll; 



namespace CakeProJect
{
    public partial class AddUser : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!AdminLoginHelper.IsLogin())
            {
                Response.Clear();
                Response.Write("没有相关权限，非法访问！");
                Response.End();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            T_Admin admin = new T_Admin();
            AdminBll bll = new AdminBll();


            string username = this.txtuser.Value;
            string pwd = this.txtpwd.Value;
            string realname = this.txtreal.Value;
            admin.CreateDate = DateTime.Now;
            admin.UserName = username;
            admin.Pwd = pwd;
            admin.RealName = realname;
            admin.admintoken = MD5Helper.MD5JM(username + pwd);
            if (bll.AddAdmin(admin))
            {
                this.msg.InnerText = "添加成功！";
            }
            else
            {
                this.msg.InnerText = "添加失败！";
            }


        }
    }
}