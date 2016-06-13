using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Cake_Common;
using Cake_Bll;
using Cake_Model;

namespace CakeProJect.mobile
{
    public partial class mycart : System.Web.UI.Page
    {
        public decimal? myprice = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            UserBll userbll = new UserBll();
            int userid = 0;
            userid = userbll.GetUserIdByToken();
            if (userid > 0)
            {
                BindList(userid);
                BindProduct();
               
            }
            else
            {
                Response.Redirect("login_personal.html");
            }
        }

        private void BindList(int userid)
        {
            CartBll cartbll = new CartBll();
            List<T_Cart> cartlist = new List<T_Cart>();
            cartlist = cartbll.GetCartListByUserId(userid);
            if (cartlist != null)
            {
                GetPrice(cartlist);
            }
            DataList1.DataSource = cartlist;
            DataList1.DataBind();
        }

        private void GetPrice(List<T_Cart> cartlist)
        {
       
            foreach (T_Cart cart in cartlist)
            {
                myprice = myprice + cart.ProductPrice;
            }
        }

        private void BindProduct()
        {
            ProductBll pbll = new ProductBll();
            List<T_Protuct> plist = new List<T_Protuct>();
            plist = pbll.GetProductListByClassId(6);
            DataList2.DataSource = plist;
            DataList2.DataBind();
        
        }


    }
}