using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Cake_Dal;

namespace Cake_Bll
{
     public class AdminBll
    {
         public bool GetAdminModeByName(string Name, string Pwd)
         {

             AdminDal dal = new AdminDal();
             return dal.GetAdminModeByName(Name, Pwd);
         }

    }
}
