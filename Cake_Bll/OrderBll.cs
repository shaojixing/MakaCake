using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Cake_Model;
using Cake_Dal;

namespace Cake_Bll
{
  public  class OrderBll
    {
      public bool AddOrderByUserId(string card, string bastdate, string paytype, string remark, string ordercode)
      {
          UserBll userbll = new UserBll();
        // int csum = Convert.ToInt32(sum);
          int userid = 0;
         userid= userbll.GetUserIdByToken();
         bool orderres = false;
         if (userid > 0)
         {
             T_Order order = new T_Order();
             CartBll cartbll = new CartBll();
             OrderDal orderdal = new OrderDal();
             List<T_Cart> cartlist = new List<T_Cart>();
             cartlist = cartbll.GetCartListByUserId(userid);
             AddressBll addressbll = new AddressBll();
             T_Address address = new T_Address();
            // UserBll userbll = new UserBll();
             T_User user = new T_User();
             user = userbll.GerUserByUserId(userid);
             address = addressbll.GetAddressByUserId();
             order.OrderCode = ordercode;
             order.CreateDate = DateTime.Now;
             order.Adress = address.Adress + address.Area+"_"+address.Name;
             order.Mobile = address.Mobile;
             order.OrderStatus = "待付款";
             order.PayType = paytype;
             order.bastdate = bastdate;
             order.card_birthday = card;
             order.Remark = remark;
             order.UserId = userid;
             string makabi = "";
             decimal? sumprice = 0;
             int makaprice = 0;
             bool res = false;
            
             if (cartlist != null)
             {
                 foreach (T_Cart cart in cartlist)
                 {
                     T_OrderDetail orderdetail = new T_OrderDetail();
                     orderdetail.CreateDate = DateTime.Now;
                     orderdetail.OrderCode = order.OrderCode;
                     orderdetail.ProductId = cart.ProductId;
                     orderdetail.ProductName = cart.ProductName;
                     orderdetail.ProductNumber = cart.ProductNumber;
                     orderdetail.ProductPrice = cart.ProductPrice;
                     orderdetail.Specification = cart.Specification;
                     res = orderdal.AddOrderDetail(orderdetail);
                     if (res)
                     {
                         cartbll.DelCartById(cart.Id);
                     }
                     sumprice = sumprice + cart.ProductPrice;
                 }
             }
             if (user != null)
             {
                 makabi = user.MaKaCurrency.ToString();

                 makaprice = (int)user.MaKaCurrency / 10;
                 if (makaprice >= sumprice)
                 {
                     sumprice = 0;
                 }
                 else
                 {
                     sumprice = (int)sumprice - makaprice;

                 }
                 order.makabi = user.MaKaCurrency;

             }
             if (sumprice <= 230)
             {
                 sumprice = sumprice + 18;
                 order.fare = 18;
             }
             else
             {
                 order.fare = 0;
             }
             
             order.OrderPrice = sumprice;
             orderres =orderdal.AddOrder(order);
             if (orderres)
             {
                 userbll.UpdateUser(userid, (int)user.MaKaCurrency);
                
             }
             return orderres;
         }
         else
         {
             return false;
         }
      }

      public T_Order GetOrderByUserId(string ordercode)
      {
          OrderDal dal = new OrderDal();
          UserBll userbll = new UserBll();
          T_Order order = new T_Order();
          int userid = 0;
          userid = userbll.GetUserIdByToken();
          if (userid > 0)
          {
              order = dal.GetOrderByUserId(userid, ordercode);
          }
          return order;

      }


      public List<T_Order> GetOrderByUserId()
      {
          OrderDal dal = new OrderDal();
          UserBll userbll = new UserBll();
         
          int userid = 0;
          userid = userbll.GetUserIdByToken();
          if (userid > 0)
          {
              return dal.GetOrderByUserId(userid);
          }
          else
          {
              return null;
          }
        
      }
      public List<T_OrderDetail> GetOrderDetailList(string ordercode)
      {
          OrderDal dal = new OrderDal();
          return dal.GetOrderDetailList(ordercode);
      }

      public List<T_Order> GetOrderList(int i,int top)
      {
          OrderDal dal = new OrderDal();
          return dal.GetOrderList(i,top);
      }

      public List<T_Order> GetOrderList(string key)
      {
          OrderDal dal = new OrderDal();
          return dal.GetOrderList(key);
      }

      public T_Order GetOrder(string ordercode)
      {
          OrderDal dal = new OrderDal();
          return dal.GetOrder(ordercode);
      }

      public T_OrderDetail GetOrderDetailByCode(string ordercode)
      {
          OrderDal dal = new OrderDal();
          return dal.GetOrderDetailByCode(ordercode);
      }
      public bool UpdateOrder(T_Order order)
      {
          OrderDal dal = new OrderDal();
          return dal.UpdateOrder(order);
      }
      public bool AddOrderLog(T_OrderLog model)
      {
          OrderDal dal = new OrderDal();
          return dal.AddOrderLog(model);
      }
    }
}
