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
    public partial class orderdetail : System.Web.UI.Page
    {
        public string ordercode = "";
        public string orderprice = "";
        public string orderdate = "";
        public string paytype = "";
        public string orderaddress = ""; 
        public string ordername = "";
        public string ordermobile = "";
        public string bastdate = "";
        public string card = "";
        public string orderstatus = "";
        public string makabi = "";
        public string remark = "";
        public string fart = "0";
        public string strmakabi = "0";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["wd"] != null && Request.QueryString["wd"].ToString() != "")
            {
                OrderBll bll = new OrderBll();
                T_Order order = new T_Order();
                order=bll.GetOrderByUserId(Request.QueryString["wd"].ToString());
                if (order != null) 
                {
                    ordercode = order.OrderCode;
                    orderprice = order.OrderPrice.ToString();
                    orderdate = order.CreateDate.ToString();
                    paytype = order.PayType;
                    orderaddress = order.Adress;
                    ordermobile = order.Mobile;
                    fart = order.fare.ToString() ;
                    strmakabi = (order.makabi / 10).ToString();
                    bastdate = order.bastdate;

                    Bind(order.OrderCode);
                }
            }
        }

        public void Bind(string ordercode)
        {
            List<T_OrderDetail> list = new List<T_OrderDetail>();

            OrderBll bll = new OrderBll();
            list = bll.GetOrderDetailList(ordercode);
            dllist.DataSource = list;
            dllist.DataBind();
        }

    }
}