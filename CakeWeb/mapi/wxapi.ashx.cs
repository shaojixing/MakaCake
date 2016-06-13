using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CakeWeb.mapi
{
    /// <summary>
    /// wxapi 的摘要说明
    /// </summary>
    public class wxapi : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            context.Response.ContentType = "text/plain";
            string code = context.Request["code"].ToString();
            //Dictionary<string, object> access_token = new Dictionary<string, object>();
            //access_token = weixin_helper.get_access_token();

            //string openid = weixin_helper.get_access_token(code)["openid"].ToString();

            //Dictionary<string, object> userlist = new Dictionary<string, object>();
            //userlist = weixin_helper.get_user_info(access_token["access_token"].ToString(), openid);
            //context.Response.Write(userlist["nickname"].ToString());
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