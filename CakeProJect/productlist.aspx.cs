using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Cake_Model;
using Cake_Common;
using Cake_Bll; 



namespace CakeProJect
{
    public partial class productlist : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!AdminLoginHelper.IsLogin())
            {
                Response.Clear();
                Response.Write("没有相关权限，非法访问！");
                Response.End();
            }
            else {
                BindList();
            }
        }
        private void BindList()
        {
            ProductBll bll = new ProductBll();
            List<int?> id = new List<int?>();
            id.Add(1);
            id.Add(2);
            id.Add(3);
            this.productdata.DataSource = bll.GetProductListByClassId(id);
            this.productdata.DataBind();

        }
    }
}