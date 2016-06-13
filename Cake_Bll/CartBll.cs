using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Cake_Model;
using Cake_Dal;


namespace Cake_Bll
{
    public class CartBll
    {
        public bool InsertCart(int mid, decimal price, int number, int pid)
        {
            T_Cart cart = new T_Cart();
            T_Protuct produce = new T_Protuct();
            T_ProductDetail pdetail = new T_ProductDetail();
            UserBll userbll=new UserBll();
            cart.CreateDate = DateTime.Now;
            cart.ProductPrice = price;
            cart.ProductNumber = number;
            cart.ProductdetailId = mid;
            cart.ProductId = pid;
            
            cart.UserId = userbll.GetUserIdByToken();
            ProductBll pbll = new ProductBll();
            
            CartDal cartdal = new CartDal();
            produce = pbll.GetProductById(pid);
          pdetail=  pbll.GetPDetailById(mid);
          if (pdetail != null)
          {
              cart.Specification = pdetail.Specification;
              cart.Size = pdetail.Size;
          }
            if (produce != null)
            {
                cart.ProductName = produce.ProductTitle;
                cart.ImgUrl = produce.Imgurl1;
               // cart.Specification=produce.sp
            }
            return cartdal.InsertCart(cart);
        }
        public List<T_Cart> GetCartListByUserId(int userid)
        {
            CartDal cartdal = new CartDal();

          return  cartdal.GetCartListByUserId(userid);
        }

        public bool DelCartById(int CartId)
        {
            CartDal cartdal = new CartDal();
            UserBll userbll = new UserBll();
            int userid = userbll.GetUserIdByToken();
            return cartdal.DelCartById(CartId,userid);
        }
    }
}
