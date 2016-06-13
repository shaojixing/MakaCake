using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Cake_Bll;
using Cake_Model;

namespace CakeWeb
{
    public partial class ordercomplete : System.Web.UI.Page
    {
        public string ordercode = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["wd"] != null && Request.QueryString["wd"].ToString() != "")
            {
                OrderBll bll = new OrderBll();
                T_Order order = new T_Order();
                order = bll.GetOrderByUserId(Request.QueryString["wd"].ToString());
                if (order != null)
                {
                    ordercode = order.OrderCode;
                }
            }
        }
    }
}