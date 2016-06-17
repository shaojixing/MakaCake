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
    public partial class cartlist : System.Web.UI.Page
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
            int userid = Convert.ToInt32(Request["id"]);
            List<T_Cart> model = new List<T_Cart>();
            CartBll bll = new CartBll();
            model = bll.GetCartListByUserId(userid);
            if(model.Count()>0)
            { 
            this.cartdata.DataSource = model;
            this.cartdata.DataBind();
            }

        }
    }
}