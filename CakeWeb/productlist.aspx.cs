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
    public partial class productlist : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Request.QueryString["id"] != null&&Request.QueryString["id"].ToString() != "")
            {
                int myid = Convert.ToInt32(Request.QueryString["id"].ToString());
                BindListById(myid);
            }
            else {
                BindList();
            }
        }

        public void BindList()
        {
            ProductBll bll = new ProductBll();
            List<T_Protuct> productlist = new List<T_Protuct>();
            List<int?> id = new List<int?>();
            id.Add(1);
            id.Add(2);
            id.Add(3);
          productlist=  bll.GetProductListByClassId(id);
          dllist.DataSource = productlist;
          dllist.DataBind();
        }

        public void BindListById(int id)
        {
            ProductBll bll = new ProductBll();
            List<T_Protuct> productlist = new List<T_Protuct>();
            productlist = bll.GetProductListByClassId(id);
            dllist.DataSource = productlist;
            dllist.DataBind();
        }
    }
}