using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CakeProJect.mobile
{
    public partial class registered : System.Web.UI.Page
    {
       public string code = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["code"].ToString() != null & Request.QueryString["code"].ToString() != "")
            {
                code = Request.QueryString["code"].ToString();
            }
        }
    }
}