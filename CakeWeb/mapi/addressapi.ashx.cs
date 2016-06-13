using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Cake_Bll;
using Cake_Common;
using Cake_Model;

namespace CakeProJect.mobile.mapi
{
    /// <summary>
    /// addressapi 的摘要说明
    /// </summary>
    public class addressapi : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            context.Response.ContentType = "text/plain";
            string action = context.Request["action"];
            switch (action)
            {
                case "add":
                    AddAddress(context);
                    break;
                case "get":
                    GetAddress(context);
                    break;

            }
        }

        private void GetAddress(HttpContext context)
        {
            AddressBll bll = new AddressBll();
            T_Address address = new T_Address();
            address = bll.GetAddressByUserId();
            string straddress = "";
            if (address != null)
            {
                straddress = address.Adress + address.Area + address.Name + address.Mobile;
                context.Response.Write(straddress); 
            }
            else
            {
                context.Response.Write("fail"); 
               
            }
           
        }

        private void AddAddress(HttpContext context)
        {
            string address1 = context.Request["address1"];
            string address2 = context.Request["address2"];
            string name = context.Request["name"];
            string mobile = context.Request["mobile"];
            bool res = false;
            try
            {
                if (mobile != null && mobile != "")
                {
                    AddressBll bll = new AddressBll();
                    res = bll.InsertAddress(address1,address2,name,mobile);

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