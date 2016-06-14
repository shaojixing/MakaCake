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
    /// loginapi 的摘要说明
    /// </summary>
    public class loginapi : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            context.Response.ContentType = "text/plain";
            string action = context.Request["action"];
            switch (action)
            {
                case "login":
                    Login(context);
                    break;
              

            }
        }

        private void Login(HttpContext context)
        {
            T_Admin model = new T_Admin();
            AdminBll bll = new AdminBll();
            string username = context.Request["username"];
            string pwd = context.Request["pwd"];
            if (bll.GetAdminModeByName(username, pwd))
            {
                CookieHelper mycookie = new CookieHelper();
                mycookie.setCookie("caketoken", username + pwd, 1);
                context.Response.Write("true");
            }
            else
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