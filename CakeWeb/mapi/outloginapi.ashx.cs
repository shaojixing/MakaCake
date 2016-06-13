using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CakeProJect.mobile.mapi
{
    /// <summary>
    /// outloginapi 的摘要说明
    /// </summary>
    public class outloginapi : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            context.Response.ContentType = "text/plain";
            string outlogin = context.Request["outlogin"];
            if (outlogin == "outlogin")
            {
                Cake_Common.CookieHelper cook = new Cake_Common.CookieHelper();
                if (cook.OutLogin())
                {
                    context.Response.Write("true");
                }
                else
                {
                    context.Response.Write("false");
                }
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