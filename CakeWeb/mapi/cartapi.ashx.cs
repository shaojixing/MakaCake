using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Cake_Bll;
using Cake_Common;

namespace CakeProJect.mobile.mapi
{
    /// <summary>
    /// cartapi 的摘要说明
    /// </summary>
    public class cartapi : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            context.Response.ContentType = "text/plain";
            string action = context.Request["action"];
            switch (action)
            { 
                case "add" :
                    AddCart(context);
                    break;
                case "del":
                    DelCart(context);
                    break;

            }
            
        }

        private void DelCart(HttpContext context)
        {
            string carid = context.Request["carid"];
            //   string mprice = context.Request["mprice"];
            bool res = false;
            if (carid != null && carid != "")
            {
                CartBll cartbll = new CartBll();
                res = cartbll.DelCartById(Convert.ToInt32(carid));
            }
            if (res)
            {
                context.Response.Write("sucess");
            }
            else { context.Response.Write("fail"); }
        }

        private static void AddCart(HttpContext context)
        {
            string mid = context.Request["mid"];
            string mprice = context.Request["mprice"];
            string number = context.Request["number"];
            string pid = context.Request["pid"];
           
            bool res = false;
            try
            {
                if (mid != null && mid != "")
                {
                    CartBll cartbll = new CartBll();
                    res = cartbll.InsertCart(Convert.ToInt32(mid), Convert.ToDecimal(mprice), Convert.ToInt32(number), Convert.ToInt32(pid));

                }
                if (res)
                {
                    context.Response.Write("sucess");
                }
                else { context.Response.Write("fail"); }
            }

            catch
            {
                context.Response.Write("false");
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