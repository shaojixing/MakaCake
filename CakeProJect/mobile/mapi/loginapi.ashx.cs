using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Cake_Bll;
using Cake_Common;

namespace CakeProJect.mobile.mapi
{
    /// <summary>
    /// loginapi 的摘要说明
    /// </summary>
    public class loginapi : IHttpHandler
    {
        public void ProcessRequest(HttpContext context)
        {
            context.Response.ContentType = "text/plain";
            try
            {
                CookieHelper cookiehelper = new CookieHelper();
                string mobile = context.Request["mobile"];
                string pwd = context.Request["pwd"];
                bool res = false;
              
                if (!cookiehelper.GetLogin)
                {
                    if (mobile != "" && pwd != "")
                    {
                        UserBll userbll = new UserBll();
                        res = userbll.GetUserModelByMobile(mobile, pwd);
                        if (res)
                        {

                            cookiehelper.setCookie("token", mobile+pwd, 1);

                            context.Response.Write("sucess");

                        }
                        else
                        {
                            context.Response.Write("fail");
                        }
                    }
                }
                else if (cookiehelper.isToken(mobile+pwd))
                {
                    context.Response.Write("false");
                }
                else
                {
                    cookiehelper.delCookie("token");
                    if (mobile != "" && pwd != "")
                    {
                        UserBll userbll = new UserBll();
                        res = userbll.GetUserModelByMobile(mobile, pwd);
                        if (res)
                        {

                            cookiehelper.setCookie("token", mobile + pwd, 1);

                            context.Response.Write("sucess");

                        }
                        else
                        {
                            context.Response.Write("fail");
                        }
                    }
                }
            }
            catch
            {
                context.Response.Write("fail");
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