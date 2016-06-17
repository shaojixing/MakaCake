using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Cake_Model;
using Cake_Common;
using Cake_Bll; 
namespace CakeProJect
{
    public partial class productdetial : System.Web.UI.Page
    {
        public string  strimgurl = System.Configuration.ConfigurationManager.AppSettings["imgurl"];
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!AdminLoginHelper.IsLogin())
            {
                Response.Clear();
                Response.Write("没有相关权限，非法访问！");
                Response.End();
            }
            else
            {
                BindList();
                BindDetail();
            }
        
        }

        public string counttent = "";

        private void BindList()
        {
           
            ProductBll bll = new ProductBll();
            if (Request["pid"] != null)
            {
                T_Protuct model = new T_Protuct();
                int pid = Convert.ToInt32(Request["pid"].ToString());
             model=   bll.GetProductById(pid);
             if (model != null)
             {
                 this.txtptitle.Value = model.ProductTitle;
                 this.txtprice.Value = model.Price.ToString();
                 this.txtpdec.Value = model.productdec;
                 this.txtimg1.Src = strimgurl + model.Imgurl1;
                 this.txtimg2.Src = strimgurl + model.Imgurl2;
                 this.txtimg3.Src = strimgurl + model.Imgurl3;
                 this.txtcateg.Value = model.Category.ToString() ;
                 this.txtId.Value = model.Id.ToString();
                 counttent=model.ProductContent;

             }

            }
           // this.productlist.DataSource = bll.GetProductListByClassId(id);
            //this.productlist.DataBind();

        }

        private void BindDetail()
        {
            ProductBll bll = new ProductBll();
            if (Request["pid"] != null)
            {
                List<T_ProductDetail> list = new List<T_ProductDetail>();
                int pid = Convert.ToInt32(Request["pid"].ToString());
                list = bll.GetProductDetailById(pid);
                this.detaildata.DataSource = list;
                this.detaildata.DataBind();
            }
            else
            {
                List<T_ProductDetail> list = new List<T_ProductDetail>();
               // int pid = Convert.ToInt32(Request["pid"].ToString());
                T_ProductDetail model = new T_ProductDetail();
                list.Add(model);
                this.detaildata.DataSource = list;
                this.detaildata.DataBind();
            }
        }

        protected void btnupimg1_Click(object sender, EventArgs e)
        {
            if (fileimg1.HasFile)
            {
                var now = DateTime.Now;
                var fnArr = fileimg1.FileName.Split('.');
                var fp = System.Configuration.ConfigurationManager.AppSettings["backfileurl"];
                var path = fp + string.Format("upload\\{0}\\{1}\\{2}\\", now.Year, now.Month.ToString().PadLeft(2, '0'), now.Day.ToString().PadLeft(2, '0'));
                var imgurl = string.Format("upload/{0}/{1}/{2}/{3}.{4}", now.Year, now.Month.ToString().PadLeft(2, '0'), now.Day.ToString().PadLeft(2, '0'), now.ToString("yyyyMMddHHmmssfff"), fnArr[fnArr.Length - 1]);
                var fimgsrc = path + string.Format("\\{0}.{1}", now.ToString("yyyyMMddHHmmssfff"), fnArr[fnArr.Length - 1]);
                if (!System.IO.Directory.Exists(path))
                {
                    System.IO.Directory.CreateDirectory(path);
                }
                fileimg1.SaveAs(fimgsrc);
               // var gid = long.Parse(hfIdAd.Value);
               // var r1 = gm.SetGoodsAD(gid, 1, imgurl);
               // BindData();
                this.txtimg1.Src = strimgurl + imgurl;
            }
        }

        protected void btnimg2_Click(object sender, EventArgs e)
        {
            if (fileimg2.HasFile)
            {
                var now = DateTime.Now;
                var fnArr = fileimg2.FileName.Split('.');
                var fp = System.Configuration.ConfigurationManager.AppSettings["backfileurl"];
                var path = fp + string.Format("upload\\{0}\\{1}\\{2}\\", now.Year, now.Month.ToString().PadLeft(2, '0'), now.Day.ToString().PadLeft(2, '0'));
                var imgurl = string.Format("upload/{0}/{1}/{2}/{3}.{4}", now.Year, now.Month.ToString().PadLeft(2, '0'), now.Day.ToString().PadLeft(2, '0'), now.ToString("yyyyMMddHHmmssfff"), fnArr[fnArr.Length - 1]);
                var fimgsrc = path + string.Format("\\{0}.{1}", now.ToString("yyyyMMddHHmmssfff"), fnArr[fnArr.Length - 1]);
                if (!System.IO.Directory.Exists(path))
                {
                    System.IO.Directory.CreateDirectory(path);
                }
                fileimg2.SaveAs(fimgsrc);
                // var gid = long.Parse(hfIdAd.Value);
                // var r1 = gm.SetGoodsAD(gid, 1, imgurl);
                // BindData();
                this.txtimg2.Src = strimgurl + imgurl;
            }
        }

        protected void btnimg3_Click(object sender, EventArgs e)
        {
            if (fileimg3.HasFile)
            {
                var now = DateTime.Now;
                var fnArr = fileimg3.FileName.Split('.');
                var fp = System.Configuration.ConfigurationManager.AppSettings["backfileurl"];
                var path = fp + string.Format("upload\\{0}\\{1}\\{2}\\", now.Year, now.Month.ToString().PadLeft(2, '0'), now.Day.ToString().PadLeft(2, '0'));
                var imgurl = string.Format("upload/{0}/{1}/{2}/{3}.{4}", now.Year, now.Month.ToString().PadLeft(2, '0'), now.Day.ToString().PadLeft(2, '0'), now.ToString("yyyyMMddHHmmssfff"), fnArr[fnArr.Length - 1]);
                var fimgsrc = path + string.Format("\\{0}.{1}", now.ToString("yyyyMMddHHmmssfff"), fnArr[fnArr.Length - 1]);
                if (!System.IO.Directory.Exists(path))
                {
                    System.IO.Directory.CreateDirectory(path);
                }
                fileimg3.SaveAs(fimgsrc);
                // var gid = long.Parse(hfIdAd.Value);
                // var r1 = gm.SetGoodsAD(gid, 1, imgurl);
                // BindData();
                this.txtimg3.Src = strimgurl + imgurl;
            }
        }
    }
}