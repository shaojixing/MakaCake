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
            
            string action = context.Request["action"].ToString();
            switch (action)
            { 
                case "product":
                    GetProduct(context);
                    break;
                case "detail":
                    GetDetail(context);
                    break;
                case "commont":
                    GetCommomont(context);
                    break;
                case "getlist":
                    GetListById(context);
                    break;


            }
          

        }

        private void GetListById(HttpContext context)
        {
            string pid = context.Request["pid"].ToString();
            int wd = Convert.ToInt32(pid);
            List<int?> id = new List<int?>();
            id.Add(1);
            id.Add(2);
            id.Add(3);
            if (pid != null)
            {
                List<T_Protuct> plist = new List<T_Protuct>();

                ProductBll bll = new ProductBll();

                plist = bll.GetProductListByClassId(id);
                if (plist != null)
                {
                    string productjson = JsonHelper.GetJson(plist);
                    context.Response.Write(productjson);
                    context.Response.End();
                }
            }
        }

        private void GetProduct(HttpContext context)
        {
            string pid = context.Request["pid"].ToString();
            int wd = Convert.ToInt32(pid);
            if (pid != null)
            {

                T_Protuct product = new T_Protuct();
             
                ProductBll bll = new ProductBll();
                product = bll.GetProductById(wd);
             
                if (product != null)
                {
                    string productjson = JsonHelper.GetJson(product);
                    context.Response.Write(productjson);
                    context.Response.End();
                }

            }
        }

        private void GetDetail(HttpContext context)
        {
            string pid = context.Request["pid"].ToString();
            int wd = Convert.ToInt32(pid);
            if (pid != null)
            {

               // T_Protuct product = new T_Protuct();
                List<T_ProductDetail> pdetail = new List<T_ProductDetail>();
              //  List<T_ProductComment> pcommon = new List<T_ProductComment>();
                ProductBll bll = new ProductBll();
               // product = bll.GetProductById(wd);
                pdetail = bll.GetProductDetailById(wd);
                if (pdetail != null)
                {
                    string productjson = JsonHelper.GetJson(pdetail);
                    context.Response.Write(productjson);
                    context.Response.End();
                }

            }
        }
        private void GetCommomont(HttpContext context)
        {
            string pid = context.Request["pid"].ToString();
            int wd = Convert.ToInt32(pid);
            if (pid != null)
            {

                // T_Protuct product = new T_Protuct();
                // List<T_ProductDetail> pdetail = new List<T_ProductDetail>();
                List<T_ProductComment> pcommon = new List<T_ProductComment>();
                ProductBll bll = new ProductBll();
                // product = bll.GetProductById(wd);
                //pdetail = bll.GetProductDetailById(wd);
                pcommon = bll.GetCommentByPId(wd);
                if (pcommon != null)
                {
                    string productjson = JsonHelper.GetJson(pcommon);
                    context.Response.Write(productjson);
                    context.Response.End();
                }
                else
                {
                    context.Response.Write("0");
                    context.Response.End();
                }

            }
            else
            {
                context.Response.Write("0");
                context.Response.End();
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