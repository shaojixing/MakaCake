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
    public partial class memberlist : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!AdminLoginHelper.IsLogin())
            {
                Response.Clear();
                Response.Write("没有相关权限，非法访问！");
                Response.End();
            }
            else
            {
                BindList();
            }

        }

        private void BindList()
        {
            List<T_User> user = new List<T_User>();
            UserBll bll = new UserBll();
            user = bll.GetUserList();
            this.memberdata.DataSource = user;
            this.memberdata.DataBind();

        }
    }
}