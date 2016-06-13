using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Cake_Model;
using Cake_Bll;

namespace CakeWeb
{
    public partial class orderlist : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            OrderBll bll = new OrderBll();
            List<T_Order> list = new List<T_Order>();
            list = bll.GetOrderByUserId();
            if (list != null)
            {
                dllist.DataSource = list;
                dllist.DataBind();
            }

        }
    }
}