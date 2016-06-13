using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Cake_Model;
using Cake_Bll;
using Cake_Common;

namespace CakeWeb.mapi
{
    /// <summary>
    /// goodsapi 的摘要说明
    /// </summary>
    public class goodsapi : IHttpHandler
    {

        public  void ProcessRequest(HttpContext context)
        {
            context.Response.ContentType = "text/plain";
            // context.Response.Write("Hello World");
            string pid = context.Request["pid"].ToString();
            int wd = Convert.ToInt32(pid);
            if (pid != null)
            {

                T_Protuct product = new T_Protuct();
                List<T_ProductDetail> pdetail = new List<T_ProductDetail>();
                List<T_ProductComment> pcommon = new List<T_ProductComment>();
                ProductBll bll = new ProductBll();
                product = bll.GetProductById(wd);
                pdetail = bll.GetProductDetailById(wd);
                if (product != null)
                {
                    // JsonHelper jsonhelper = new JsonHelper();
                    // jsonhelper.
                   
                    //Imgurl1 = product.Imgurl1;
                    //Imgurl2 = product.Imgurl2;
                    //Imgurl3 = product.Imgurl3;
                    //producttitle = product.ProductTitle;
                    //productdec = product.productdec;
                    //price = product.Price.ToString();
                    // pcontent = product.ProductContent;
                    // this.strcontent.InnerHtml = product.ProductContent;
                    //  pcommon = bll.GetCommentByPId(wd);


                }
                if (pdetail != null)
                {
                    string productjson = JsonHelper.GetJson(product);
                        //+ JsonHelper.Obj2Json(pdetail);

                    
                    context.Response.Write(productjson);
                    context.Response.End();
                //    this.mid.Value = pdetail[0].Price.ToString();

                //    dllist.DataSource = pdetail;
                //    dllist.DataBind();
                }
                //if (pcommon != null)
                //{
                //    DataList1.DataSource = pcommon;
                //    DataList1.DataBind();
                //}
            }

        }

        public bool IsReusable
        {
            get
            {
                return false;
            }
        }
    }
}