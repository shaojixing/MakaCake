using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Cake_Bll;
using Cake_Common;

namespace CakeProJect.mobile.mapi
{
    /// <summary>
    /// registeredapi 的摘要说明
    /// </summary>
    public class registeredapi : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            context.Response.ContentType = "text/plain";
            try
            {
                string action = context.Request["action"];
                switch (action)
                {
                    case "company": 
                    RegisterByCompany(context);
                    break;
                    case "personal":
                    RegisterByPersonal(context);
                    break;

                }
               
            }
            catch
            {
                context.Response.Write("fail");
            }
        }

        private void RegisterByPersonal(HttpContext context)
        {
            string mobile = context.Request["mobile"];
            string pwd = context.Request["pwd"];
            string pwd1 = context.Request["pwd1"];
            string code = context.Request["code"];
            CookieHelper cookiehelper = new CookieHelper();
            bool res = false;
            if (mobile != "" && pwd != "" && pwd == pwd1)
            {
                UserBll userbll = new UserBll();
                if (userbll.IsMobile(mobile + pwd))
                {
                    context.Response.Write("false");
                }
                else
                {

                    cookiehelper.setCookie("token", mobile + pwd, 1);
                    res = userbll.InsertUserModebyMobile(mobile, pwd,code);
                    if (res)
                    {

                        context.Response.Write("sucess");
                    }
                    else
                    {
                        context.Response.Write("fail");
                    }
                }
            }
        }

        private static void RegisterByCompany(HttpContext context)
        {
            string mobile = context.Request["mobile"];
            string pwd = context.Request["pwd"];
            string pwd1 = context.Request["pwd1"];
            string pname = context.Request["pname"];
            string purl = context.Request["purl"];
            string pemail = context.Request["email"];
            CookieHelper cookiehelper = new CookieHelper();
            bool res = false;
            if (mobile != "" && pwd != "" && pwd == pwd1)
            {
                UserBll userbll = new UserBll();
                if (userbll.IsMobile(mobile + pwd))
                {
                    context.Response.Write("false");
                }
                else
                {
                    res = userbll.InsertUserModebyCompany(mobile, pwd,pname,purl,pemail);
                    if (res)
                    {
                        cookiehelper.setCookie("token", mobile + pwd, 1);
                        context.Response.Write("sucess"); }
                    else
                    {
                        context.Response.Write("fail");
                    }
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