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
    public partial class numbercenter : System.Web.UI.Page
    {
        public string strName="";
        public string makabi = "0.0";
        public string GradeName = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                UserBll bll = new UserBll();
                T_User model = new T_User();
                model = bll.GetUserModelByToken();
                if (model != null)
                {
                    strName = model.NiceName;
                    makabi = model.MaKaCurrency.ToString();
                    GradeName = model.GradeName;
                }
                else
                {
                    Response.Redirect("login_personal.html");
                }
            }
        }
    }
}