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
    public partial class productdetial : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!AdminLoginHelper.IsLogin())
            {
                Response.Clear();
                Response.Write("没有相关权限，非法访问！");
                Response.End();
            }
            else
            {
                BindList();
            }
        }
        private void BindList()
        {
            ProductBll bll = new ProductBll();
            if (Request["pid"] != null)
            {
                T_Protuct model = new T_Protuct();
                int pid = Convert.ToInt32(Request["pid"].ToString());
             model=   bll.GetProductById(pid);
             if (model != null)
             {
                 this.txtptitle.Value = model.ProductTitle;
                 this.txtprice.Value = model.Price.ToString();
                 this.txtpdec.Value = model.productdec;
                 this.txtimg1.Value = model.Imgurl1;
                 this.txtimg2.Value = model.Imgurl2;
                 this.txtimg3.Value = model.Imgurl3;
                 this.txtcateg.Value = model.Category.ToString() ;
                // this.txtptitle.Value = model.ProductTitle;
                 //this.txtptitle.Value = model.ProductTitle;

             }

            }
           // this.productlist.DataSource = bll.GetProductListByClassId(id);
            //this.productlist.DataBind();

        }
    }
}