using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Cake_Model;
using Cake_Bll;

namespace CakeProJect.mobile
{
    public partial class productdetail : System.Web.UI.Page
    {
        public string Imgurl1 = "";
        public string Imgurl2 = "";
        public string Imgurl3 = "";
        public string producttitle = "";
        public string productdec = "";
        public string price = "";
        public string pcontent = "";
        public string PId = "";
       
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (Request.QueryString["wd"] != null && Request.QueryString["wd"].ToString() != "")
                {
                    int myid = Convert.ToInt32(Request.QueryString["wd"].ToString());
                    PId = Request.QueryString["wd"].ToString();
                    BindTxt(myid);
                }
                else
                {
                    Response.Redirect("/");
                }
            }
            catch
            {
                Response.Redirect("/");
            }
        }

        public void BindTxt(int wd)
        {
            T_Protuct product = new T_Protuct();
            List<T_ProductDetail> pdetail = new List<T_ProductDetail>();
            List<T_ProductComment> pcommon = new List<T_ProductComment>();
            ProductBll bll = new ProductBll();
            product = bll.GetProductById(wd);
            pdetail = bll.GetProductDetailById(wd);
            if (product != null)
            {
                Imgurl1 = product.Imgurl1;
                Imgurl2 = product.Imgurl2;
                Imgurl3 = product.Imgurl3;
                producttitle = product.ProductTitle;
                productdec = product.productdec;
                price = product.Price.ToString() ;
               // pcontent = product.ProductContent;
                this.strcontent.InnerHtml = product.ProductContent;
                pcommon = bll.GetCommentByPId(wd);
                
            
            }
            if (pdetail != null)
            {
                dllist.DataSource = pdetail;
                dllist.DataBind();
            }
            if (pcommon != null)
            {
                DataList1.DataSource = pcommon;
                DataList1.DataBind();
            }

        }
    }
}