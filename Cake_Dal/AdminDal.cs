using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Cake_Model;

namespace Cake_Dal
{
   public class AdminDal
    {
       public bool AddAdmin(T_Admin model)
       {
           using (var db = new cakedbEntities())
           {
               db.T_Admin.Add(model);
               return db.SaveChanges() > 0;
           }
       }

       public T_Admin GetAdminByToken(string token)
       {
           using (var db = new cakedbEntities())
           {
               return db.T_Admin.Where(t => t.admintoken==token).FirstOrDefault();
           }
       }
       public T_Admin GetAdminModel(int id)
       {

           using (var db = new cakedbEntities())
           {
               return db.T_Admin.Where(t => t.Id == id).FirstOrDefault();
           }
       }
       public bool GetAdminModeByMobile(string Mobile)
       {
           using (var db = new cakedbEntities())
           {
               return db.T_Admin.Where(t => t.Mobile == Mobile).Count()>0;
           }
       }
       public bool GetAdminModeByEmail(string Email,string Pwd)
       {
           using (var db = new cakedbEntities())
           {
               return db.T_Admin.Where(t => t.Email == Email&& t.Pwd==Pwd).Count() > 0;
           }
       }
       public bool GetAdminModeByMobile(string Mobile, string Pwd)
       {
           using (var db = new cakedbEntities())
           {
               return db.T_Admin.Where(t => t.Mobile == Mobile && t.Pwd == Pwd).Count() > 0;
           }
       }
       public bool GetAdminModeByName(string Name, string Pwd)
       {
           using (var db = new cakedbEntities())
           {
               return db.T_Admin.Where(t => t.UserName == Name && t.Pwd == Pwd).Count() > 0;
           }
       }
    }
}
