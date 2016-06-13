﻿using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Collections.Specialized;
using System.Collections.Generic;
using Com.Alipay;
using Cake_Model;
using Cake_Bll;

namespace CakeWeb.alipay
{
    public partial class return_url1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SortedDictionary<string, string> sPara = GetRequestGet();

            if (sPara.Count > 0)//判断是否有带返回参数
            {
                Notify aliNotify = new Notify();
                bool verifyResult = aliNotify.Verify(sPara, Request.QueryString["notify_id"], Request.QueryString["sign"]);

                if (verifyResult)//验证成功
                {
                    /////////////////////////////////////////////////////////////////////////////////////////////////////////////
                    //请在这里加上商户的业务逻辑程序代码


                    //——请根据您的业务逻辑来编写程序（以下代码仅作参考）——
                    //获取支付宝的通知返回参数，可参考技术文档中页面跳转同步通知参数列表

                    //商户订单号

                    string out_trade_no = Request.QueryString["out_trade_no"];

                    //支付宝交易号

                    string trade_no = Request.QueryString["trade_no"];

                    //交易状态
                    string trade_status = Request.QueryString["trade_status"];


                    if (Request.QueryString["trade_status"] == "TRADE_FINISHED" || Request.QueryString["trade_status"] == "TRADE_SUCCESS")
                    {
                        T_Order order = new T_Order();
                        OrderBll bll = new OrderBll();
                        order = bll.GetOrder(out_trade_no);
                        bool res = false;
                        if (order != null)
                        {
                            if (order.OrderStatus == "待付款")
                            {
                                order.OrderStatus = "已付款待发货";
                                order.PayType = "支付宝手机支付";
                                order.paycode = trade_no;
                                res = bll.UpdateOrder(order);
                                if (res)
                                {
                                    T_OrderLog modellog = new T_OrderLog();
                                    modellog.LastDate = DateTime.Now;
                                    modellog.OrderCode = out_trade_no;
                                    modellog.PayCode = trade_no;
                                    modellog.PayStatus = "支付宝手机支付——支付成功";
                                    modellog.Remark = "成功";
                                    bll.AddOrderLog(modellog);
                                }
                            }
                        }

                        //判断该笔订单是否在商户网站中已经做过处理
                        //如果没有做过处理，根据订单号（out_trade_no）在商户网站的订单系统中查到该笔订单的详细，并执行商户的业务程序
                        //如果有做过处理，不执行商户的业务程序
                    }
                    else
                    {
                        OrderBll bll = new OrderBll();
                        T_OrderLog modellog = new T_OrderLog();
                        modellog.LastDate = DateTime.Now;
                        modellog.OrderCode = out_trade_no;
                        modellog.PayCode = trade_no;
                        modellog.PayStatus = "支付宝手机支付——支付失败";
                        modellog.Remark = Request.QueryString["trade_status"].ToString();
                        bll.AddOrderLog(modellog);
                        Response.Write("trade_status=" + Request.QueryString["trade_status"]);
                    }

                    //打印页面
                    Response.Write("验证成功<br />");

                    //——请根据您的业务逻辑来编写程序（以上代码仅作参考）——

                    /////////////////////////////////////////////////////////////////////////////////////////////////////////////
                }
                else//验证失败
                {

                }
            }
            else
            {
                Response.Write("无返回参数");
            }
        }

        /// <summary>
        /// 获取支付宝GET过来通知消息，并以“参数名=参数值”的形式组成数组
        /// </summary>
        /// <returns>request回来的信息组成的数组</returns>
        public SortedDictionary<string, string> GetRequestGet()
        {
            int i = 0;
            SortedDictionary<string, string> sArray = new SortedDictionary<string, string>();
            NameValueCollection coll;
            //Load Form variables into NameValueCollection variable.
            coll = Request.QueryString;

            // Get names of all forms into a string array.
            String[] requestItem = coll.AllKeys;

            for (i = 0; i < requestItem.Length; i++)
            {
                sArray.Add(requestItem[i], Request.QueryString[requestItem[i]]);
            }

            return sArray;
        }
    }
}