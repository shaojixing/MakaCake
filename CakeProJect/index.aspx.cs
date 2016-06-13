using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Cake_Bll;
using Cake_Model;


namespace CakeProJect
{
    public partial class index : System.Web.UI.Page
    {
        private int num = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            this.datalist.Visible = false;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            AdminBll bll = new AdminBll();
            bool res = false;
            string username = this.txtName.Value;
            string pwd =  this.txtPwd.Value;
            res=bll.GetAdminModeByName(username,pwd);

            if (res)
            {
                this.datalist.Visible = true;
                BindList(num);
            }
            else
            {
                this.datalist.Visible = false;
            }
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
            this.datalist.Visible = true;
             OrderBll bll = new OrderBll();
            this.orderlist.DataSource = bll.GetOrderList(strkey);
            this.orderlist.DataBind();
            
        }
    }
}