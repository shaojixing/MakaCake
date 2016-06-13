using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Cake_Bll;
using Cake_Model;

namespace CakeProJect.mobile
{
    public partial class address : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            UserBll userbll = new UserBll();
            int userid = 0;
            userid = userbll.GetUserIdByToken();
            if (userid<= 0)
            {
                Response.Redirect("login");

            }
            
        }
    }
}