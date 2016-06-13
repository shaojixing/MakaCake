using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Com.Alipay;
using Cake_Bll;
using Cake_Model;

namespace CakeWeb.alipay
{
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            GetOrder();
        }
        public string out_trade_no = "";

        //订单名称，必填
        public string subject = "";

        //付款金额，必填
        public string total_fee = "";

        //收银台页面上，商品展示的超链接，必填
        public string show_url = "";

        //商品描述，可空
        public string body = "";

        private void GetOrder()
        {
            string ordercode = "";
            if (Request["code"] != null)
            {
                ordercode = Request["code"].ToString();
            }
            if (ordercode != "")
            {
                T_Order model = new T_Order();
                T_OrderDetail detail = new T_OrderDetail();
                OrderBll bll = new OrderBll();
                model = bll.GetOrder(ordercode);
                detail = bll.GetOrderDetailByCode(ordercode);
                if (model != null)
                {
                    //商户订单号，商户网站订单系统中唯一订单号，必填
                    out_trade_no = model.OrderCode;

                    //订单名称，必填
                    subject = detail.ProductName.Trim();

                    //付款金额，必填
                    total_fee = model.OrderPrice.ToString();

                    //收银台页面上，商品展示的超链接，必填
                    show_url = "http://m.makacake.com/productdetail.aspx?wd=" + detail.ProductId;

                    //商品描述，可空
                    body = detail.ProductName;
                    //把请求参数打包成数组
                    Config config = new Config();
                    SortedDictionary<string, string> sParaTemp = new SortedDictionary<string, string>();
                    sParaTemp.Add("partner", config.partner);
                    sParaTemp.Add("seller_id", config.seller_id);
                    sParaTemp.Add("_input_charset", config.input_charset.ToLower());
                    sParaTemp.Add("service", config.service);
                    sParaTemp.Add("payment_type", config.payment_type);
                    sParaTemp.Add("notify_url", config.notify_url);
                    sParaTemp.Add("return_url", config.return_url);
                    sParaTemp.Add("out_trade_no", out_trade_no);
                    sParaTemp.Add("subject", subject);
                    sParaTemp.Add("total_fee", total_fee);
                    sParaTemp.Add("show_url", show_url);
                    sParaTemp.Add("body", body);
                    //其他业务参数根据在线开发文档，添加参数.文档地址:https://doc.open.alipay.com/doc2/detail.htm?spm=a219a.7629140.0.0.2Z6TSk&treeId=60&articleId=103693&docType=1
                    //如sParaTemp.Add("参数名","参数值");

                    //建立请求
                    string sHtmlText = Submit.BuildRequest(sParaTemp, "get", "确认");
                    Response.Write(sHtmlText);
                }
            }
        }
    }
}