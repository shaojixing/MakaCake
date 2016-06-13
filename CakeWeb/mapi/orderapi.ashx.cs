using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Cake_Bll;
using Cake_Model;

namespace CakeProJect.mobile.mapi
{
    /// <summary>
    /// orderapi 的摘要说明
    /// </summary>
    public class orderapi : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            context.Response.ContentType = "text/plain";
            string action = context.Request["action"];
            switch (action)
            {
                case "add":
                    AddOrder(context);
                    break;
               

            }
        }

        private void AddOrder(HttpContext context)
        {
            OrderBll bll = new OrderBll();
            string card_birthday = context.Request["card_birthday"];
            string paytype = context.Request["paytype"];
            string remark = context.Request["remark"];
            string bastdate = context.Request["bastdate"];
          

           string ordercode= DateTime.Now.ToString("yyyyMMddffffff");
           AddressBll addressbll = new AddressBll();
           CartBll carbll = new CartBll();
           UserBll userbll = new UserBll();
           int userid = userbll.GetUserIdByToken();
           if (carbll.GetCartListByUserId(userid).Count() > 0)
           {
               if (addressbll.GetAddressByUserId() != null)
               {


                   if (bll.AddOrderByUserId(card_birthday, bastdate, paytype, remark, ordercode))
                   {
                       context.Response.Write(ordercode);
                   }


                   else
                   {
                       context.Response.Write("fail");

                   }
               }
               else
               {
                   context.Response.Write("addressfail");
               }
           }
           else
           {
               context.Response.Write("cartisnull");
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