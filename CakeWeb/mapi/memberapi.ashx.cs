using Cake_Common;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CakeWeb.mapi
{
    /// <summary>
    /// memberapi 的摘要说明
    /// </summary>
    public class memberapi : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            context.Response.ContentType = "text/plain";
            string action = context.Request["action"];
            switch (action)
            {
                case "islogin":
                    IsLogin(context);
                    break;

            }
        }
        private void IsLogin(HttpContext context)
        {
            CookieHelper cookiehelper = new CookieHelper();
            context.Response.Write(cookiehelper.GetLogin);
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