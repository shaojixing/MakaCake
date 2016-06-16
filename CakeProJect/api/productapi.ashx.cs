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

                case "updatedetail":
                    updatedetail(context);
                    break;

                case "adddetail":
                    adddetail(context);
                    break;


            }
        }

        private void adddetail(HttpContext context)
        {
          //  int did = Convert.ToInt32(context.Request["did"]);
            int pid = Convert.ToInt32(context.Request["pid"]);
            var specification = context.Request["specification"];
            var price = context.Request["price"];
            var size = context.Request["size"];
            ProductBll bll = new ProductBll();
            bool res = false;
            T_ProductDetail model = new T_ProductDetail();
            

         //   model = ;
            if (bll.GetProductById(pid) != null)
            {
                model.Price = Convert.ToDecimal(price);
                model.Size = size;
                model.ProductId = pid;
                model.Specification = Convert.ToInt32(specification);
                //model.
                res = bll.AddProductDetail(model);
            }
            if (res)
            {
                context.Response.Write("true");
            }
            else
            {
                context.Response.Write("false");
            }
        }

        private void updatedetail(HttpContext context)
        {
             int did =Convert.ToInt32(context.Request["did"]);
             var pid = context.Request["pid"];
             var specification = context.Request["specification"];
             var price = context.Request["price"];
             var size = context.Request["size"];
             ProductBll bll = new ProductBll();
             bool res = false;
             T_ProductDetail model = new T_ProductDetail();


             model = bll.GetPDetailById(did);
            if(model!=null)
            {
                model.Price = Convert.ToDecimal(price);
                model.Size = size;
                model.Specification = Convert.ToInt32(specification);
                //model.
                res = bll.UpdateProductDtail(model);
            }
            if (res)
            {
                context.Response.Write("true");
            }
            else
            {
                context.Response.Write("false");
            }
            
           // throw new NotImplementedException();
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