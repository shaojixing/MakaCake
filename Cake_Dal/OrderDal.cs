using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Cake_Model;

namespace Cake_Dal
{
  public  class OrderDal
    {
        public bool AddOrder(T_Order model)
        {
            using (var db = new cakedbEntities())
            {
                db.Set<T_Order>().Add(model);
                return db.SaveChanges() > 0;
            }
        }

        public bool AddOrderDetail(T_OrderDetail model)
        {
            using (var db = new cakedbEntities())
            {
                db.Set<T_OrderDetail>().Add(model);
                return db.SaveChanges() > 0;
            }
        }

        public T_Order GetOrderByUserId(int userid, string ordercode)
        {
            using (var db = new cakedbEntities())
            {
                return db.T_Order.Where(t => t.UserId == userid&&t.OrderCode==ordercode).FirstOrDefault();
            }
        }

        public List<T_Order> GetOrderByUserId(int userid)
        {
            using (var db = new cakedbEntities())
            {
                return db.T_Order.Where(t => t.UserId == userid).ToList();
            }
        }

        public List<T_OrderDetail> GetOrderDetailList(string ordercode)
        {
            using (var db = new cakedbEntities())
            {
                return db.T_OrderDetail.Where(t => t.OrderCode == ordercode).ToList();
            }
        }


        public List<T_Order> GetOrderList(int i,int top)
        {
            using (var db = new cakedbEntities())
            {
                return db.T_Order.OrderByDescending(t => t.Id).ToList();
            }   
        }

        public List<T_Order> GetOrderList(string key)
        {
            using (var db = new cakedbEntities())
            {
                return db.T_Order.Where(t => t.Mobile == key || t.OrderCode == key || t.OrderStatus == key ).ToList();
            }
        }

        public T_Order GetOrder(string ordercode)
        {
            using (var db = new cakedbEntities())
            {
                return db.T_Order.Where(t => t.OrderCode == ordercode).FirstOrDefault();
            }
        }

        public T_OrderDetail GetOrderDetailByCode(string ordercode)
        {
            using (var db = new cakedbEntities())
            {
                return db.T_OrderDetail.Where(t => t.OrderCode == ordercode).FirstOrDefault();
            }
        }

        public bool  UpdateOrder(T_Order order)
        {
            using (var db = new cakedbEntities())
            {
                return db.SaveChanges()>0;
            }
        }
        public bool AddOrderLog(T_OrderLog model)
        {
            using (var db = new cakedbEntities())
            {
                db.Set<T_OrderLog>().Add(model);
                return db.SaveChanges() > 0;
            }
        }
           

    }
}
