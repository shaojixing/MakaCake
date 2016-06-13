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
    public partial class flow : System.Web.UI.Page
    {
        public decimal? myprice = 0;
        public int count = 0;
        public string makabi = "";
       public  int makaprice = 0;
       public int sum = 0;

        /// <summary>
        /// 运费
        /// </summary>
       public int fare = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            UserBll userbll = new UserBll();
            T_User user = new T_User();
            int userid = 0;
            userid = userbll.GetUserIdByToken();
           // int makaprice = 0;
            if (userid > 0)
            {
                BindList(userid);
                if (myprice < 230)
                {
                    fare = 18;
                    sum =sum+ fare;
                }
                user = userbll.GerUserByUserId(userid);
                if (user != null)
                {
                    makabi = user.MaKaCurrency.ToString();

                    makaprice = (int)user.MaKaCurrency / 10;
                    if (makaprice >= myprice)
                    {
                        sum = 0;
                    }
                    else
                    {
                        sum = sum + ((int)myprice - makaprice);

                    }
                }
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
            count = cartlist.Count();
            foreach (T_Cart cart in cartlist)
            {
                myprice = myprice + cart.ProductPrice;
            }
        }
    }
}