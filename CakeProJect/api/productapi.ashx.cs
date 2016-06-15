using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Cake_Bll;
using Cake_Common;
using Cake_Model;

namespace CakeProJect.api
{
    /// <summary>
    /// productapi 的摘要说明
    /// </summary>
    public class productapi : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            context.Response.ContentType = "text/plain";
            string action = context.Request["action"];
            switch (action)
            {
                case "edit":
                    edit(context);
                    break;
                case "add":
                    add(context);
                    break;


            }
        }

        private void add(HttpContext context)
        {
            try
            {
                string pcontent = context.Request["pcontent"];
                string ptitle = context.Request["ptitle"];
                string pprice = context.Request["pprice"];
                string psalenum = context.Request["psalenum"];
                string pimg1 = context.Request["pimg1"];
                string pimg2 = context.Request["pimg2"];
                string pimg3 = context.Request["pimg3"];
                string pcateg = context.Request["pcateg"];
                string pdec = context.Request["pdec"];
                // int pid = Convert.ToInt32(context.Request["pid"]);

                ProductBll bll = new ProductBll();
                T_Protuct model = new T_Protuct();
                bool res = false;
                // model = bll.GetProductById(pid);
                //if (model != null)
                //{
                model.ProductContent = pcontent;
                model.Price = Convert.ToDecimal(pprice);
                model.Imgurl1 = pimg1;
                model.Imgurl2 = pimg2;
                model.Imgurl3 = pimg3;
                model.Category = Convert.ToInt32(pcateg);
                model.ProductTitle = ptitle;
                model.productdec = pdec;
                //}
                res = bll.AddProduct(model);
                if (res)
                {
                    context.Response.Write("true");
                }
                else
                {
                    context.Response.Write("false");
                }
            }
            catch
            {
                context.Response.Write("error");
            }
        }

        private void edit(HttpContext context)
        {
            try
            {
                string pcontent = context.Request["pcontent"];
                string ptitle = context.Request["ptitle"];
                string pprice = context.Request["pprice"];
                string psalenum = context.Request["psalenum"];
                string pimg1 = context.Request["pimg1"];
                string pimg2 = context.Request["pimg2"];
                string pimg3 = context.Request["pimg3"];
                string pcateg = context.Request["pcateg"];
                string pdec = context.Request["pdec"];
                int pid = Convert.ToInt32(context.Request["pid"]);

                ProductBll bll = new ProductBll();
                T_Protuct model = new T_Protuct();
                bool res = false;
                model = bll.GetProductById(pid);
                if (model != null)
                {
                    model.ProductContent = pcontent;
                    model.Price = Convert.ToDecimal(pprice);
                    model.Imgurl1 = pimg1;
                    model.Imgurl2 = pimg2;
                    model.Imgurl3 = pimg3;
                    model.Category = Convert.ToInt32(pcateg);
                    model.ProductTitle = ptitle;
                    model.productdec = pdec;
                    res = bll.UpdateProduct(model);
                    if (res)
                    {
                        context.Response.Write("true");
                    }
                    else
                    {
                        context.Response.Write("false");
                    }
                }
                else
                {
                    context.Response.Write("false");
                }
            }
            catch
            {
                context.Response.Write("error");
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