using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Cake_Model;

namespace Cake_Dal
{
  public  class CartDal
    {
      public bool InsertCart(T_Cart model)
      {
          using (var db = new cakedbEntities())
          {
              db.Set<T_Cart>().Add(model);
              return db.SaveChanges() > 0;
          }
      }

      public List<T_Cart> GetCartListByUserId(int userid)
      {
          using (var db = new cakedbEntities())
          {
           return   db.T_Cart.Where(t => t.UserId == userid).ToList();
          }
      }
      public bool DelCartById(int CartId,int userid)
      {
          using (var db = new cakedbEntities())
          {
              var model = db.T_Cart.Where(wo => wo.Id == CartId && wo.UserId == userid).FirstOrDefault();
              if (model != null)
              {
                  db.T_Cart.Remove(model);
              }
              return db.SaveChanges() > 0;
          }
      }
    }
}
