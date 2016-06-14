using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Cake_Bll;
using Cake_Model;

namespace Cake_Common
{
   public static class AdminLoginHelper
    {
       public static bool IsLogin()
       {
        T_Admin model = new T_Admin();
            AdminBll bll = new AdminBll();
            CookieHelper mycookie = new CookieHelper();
            string token = mycookie.getCookie("caketoken");
            bool res = false;
            if (!string.IsNullOrEmpty(token))
            {
                model = bll.GetAdminByToken(token);
                if (model == null)
                {
                    //  return  "没有权限，非法访问！";
                    res = false;
                }
                else
                {
                    res = true;
                }

            }
            else
            {
                res = false;
              //  return "未登陆，非法访问！";
               // Response.End();
            }
            return res;

       }
    }
}
