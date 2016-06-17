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
    public partial class index : System.Web.UI.Page
    {
        private int num = 0;
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
                BindList(num);
            }
            
           // this.datalist.Visible = false;
        }
        private void BindList(int n)
        {
            OrderBll bll = new OrderBll();
            this.orderlist.DataSource = bll.GetOrderList(n, 50);
            this.orderlist.DataBind();
           
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            string strkey = txtword.Text;
            //this.datalist.Visible = true;
             OrderBll bll = new OrderBll();
            this.orderlist.DataSource = bll.GetOrderList(strkey);
            this.orderlist.DataBind();
            
        }
    }
}