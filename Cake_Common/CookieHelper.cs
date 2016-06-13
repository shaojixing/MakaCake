using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Web;
using Cake_Model;

namespace Cake_Common
{
  public  class CookieHelper
    {
        /// <summary>
        /// Cookies赋值
        /// </summary>
        /// <param name="strName">主键</param>
        /// <param name="strValue">键值</param>
        /// <param name="strDay">有效天数</param>
        /// <returns></returns>
        public bool setCookie(string strName, string strValue, int strDay)
        {
            try
            {
                strValue = MD5Helper.MD5JM(strValue);
                HttpCookie Cookie = new HttpCookie(strName);
                //Cookie.Domain = ".xxx.com";//当要跨域名访问的时候,给cookie指定域名即可,格式为.xxx.com
              //  Cookie.Domain = ".makacake.com";
                Cookie.Expires = DateTime.Now.AddDays(strDay);
                Cookie.Value = strValue;
                System.Web.HttpContext.Current.Response.Cookies.Add(Cookie);
                return true;
            }
            catch
            {
                return false;
            }
        }

        /// <summary>
        /// 读取Cookies
        /// </summary>
        /// <param name="strName">主键</param>
        /// <returns></returns>

        public string getCookie(string strName)
        {
            HttpCookie Cookie = System.Web.HttpContext.Current.Request.Cookies[strName];
            if (Cookie != null)
            {
                return Cookie.Value.ToString();
            }
            else
            {
                return null;
            }
        }

        public bool isToken(string strValue)
        {
            string _token = "";
            _token = getCookie("token");
            strValue = MD5Helper.MD5JM(strValue);
            if (_token == strValue)
            {
                return true;
            }
            else
            {
                return false;
            }
        }

        public  bool GetLogin
        {
            get
            {
                if (HttpContext.Current.Request.Cookies != null && HttpContext.Current.Request.Cookies["token"] != null)
                {
                    return true;
                }
                return false;
            }
        }

        public bool OutLogin()
        {
            if (GetLogin)
            {
                return delCookie("token");
            }
            else
            {
                return false;
            }
        }

       

        

        /// <summary>
        /// 删除Cookies
        /// </summary>
        /// <param name="strName">主键</param>
        /// <returns></returns>
        public bool delCookie(string strName)
        {
            try
            {
                HttpCookie Cookie = new HttpCookie(strName);
                //Cookie.Domain = ".makacake.com";//当要跨域名访问的时候,给cookie指定域名即可,格式为.xxx.com
                Cookie.Expires = DateTime.Now.AddDays(-1);
                System.Web.HttpContext.Current.Response.Cookies.Add(Cookie);
                return true;
            }
            catch
            {
                return false;
            }
        }
    }
}
