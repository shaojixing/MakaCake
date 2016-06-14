using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Cake_Dal;
using Cake_Model;

namespace Cake_Bll
{
     public class AdminBll
    {
         public bool GetAdminModeByName(string Name, string Pwd)
         {

             AdminDal dal = new AdminDal();
             return dal.GetAdminModeByName(Name, Pwd);
         }

         public bool AddAdmin(T_Admin model)
         {
             AdminDal dal = new AdminDal();
            return dal.AddAdmin(model);
         }
         public T_Admin GetAdminByToken(string token)
         {
             AdminDal dal = new AdminDal();
             return dal.GetAdminByToken(token);
         }

         

    }
}
