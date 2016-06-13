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
       public string code = "0";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["code"] != null )
            {
                code = Request.QueryString["code"].ToString();
            }
        }
    }
}