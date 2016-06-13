using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using Cake_Model;
using Cake_Bll;

namespace CakeProJect
{
    public partial class detail : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string id = Request["id"];
            OrderBll bll = new OrderBll();
            T_Order order = new T_Order();
            order = bll.GetOrder(id);
            if (order != null)
            {
                this.txtordercode.Value = id;
                this.txtmobile.Value = order.Mobile;
                this.txtaddress.Value = order.Adress;
            }
            this.orderlist.DataSource = bll.GetOrderDetailList(id);
            this.orderlist.DataBind();
           


        }
    }
}