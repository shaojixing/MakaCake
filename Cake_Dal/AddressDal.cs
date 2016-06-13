using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Cake_Model;

namespace Cake_Dal
{
   public class AddressDal
    {
       public bool InsertAddress(T_Address model)
       {
           using (var db = new cakedbEntities())
           {
               db.Set<T_Address>().Add(model);
               return db.SaveChanges() > 0;
           }
       }
       public T_Address GetAddressByUserId(int userid)
       {
           using (var db = new cakedbEntities())
           {
               return db.T_Address.Where(t => t.UserId == userid).FirstOrDefault();
           }
       }

    }
}
