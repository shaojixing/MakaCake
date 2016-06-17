using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Cake_Model;
using System.Data.Entity;

namespace Cake_Dal
{
   public class UserDal
    {
       public T_User GetUserModelById(int Id)
       {
           using (var db = new cakedbEntities())
           {
               return db.T_User.Where(t => t.Id == Id).FirstOrDefault();
           }
       }
       public bool UpdateUserByCode(T_User model)
       {
           //using (var db = new cakedbEntities())
           //{
               model.InvitationNumber += 1;
               model.GradeName = Gard(model.InvitationNumber, (int)model.OrderPrice, model.MaKaCurrency);
               //return db.SaveChanges() > 0;
           //}
            return   UpdateUser(model);
       }

       public bool UpdateUser(T_User model)
       {
           using (var db = new cakedbEntities())
           {

               db.T_User.Attach(model);
               db.Entry<T_User>(model).State = System.Data.Entity.EntityState.Modified;

               //model.MaKaCurrency = makabi;
               
               //model.GradeName = Gard(model.InvitationNumber, (int)model.OrderPrice, model.MaKaCurrency);
               return db.SaveChanges() > 0;
           }
       }

       public string Gard(int? number,int price,int? makabi)
       {
           if (number >= 3 && number < 10||price>=199)
           {
               return "贝壳会员";
           }
           if (number >= 10 ||price>=999)
           {
               return "海豚会员";
           }
           if (number >= 10 && makabi >= 1699)
           {
               return "鲸鱼会员";
           }
           else
               return "水母会员";
       }
       public T_User GetUserModelByMobile(string Mobile)
       {
           using (var db = new cakedbEntities())
           {
               return db.T_User.Where(t => t.Mobile == Mobile).FirstOrDefault();
           }
       }

       public bool GetUserModelByMobile(string Mobile,string pwd)
       {
           using (var db = new cakedbEntities())
           {
               return db.T_User.Where(t => t.Mobile == Mobile && t.Pwd == pwd).ToList().Count()>0;
           }
       }
       public bool InsertUserModebyMobile(T_User model)
       {
           using (var db = new cakedbEntities())
           {
               db.Set<T_User>().Add(model);
               return db.SaveChanges() > 0;
           }
       }
       public bool IsMobile(string mobile)
       {
           using (var db = new cakedbEntities())
           {
               return db.T_User.Where(t => t.Mobile == mobile).ToList().Count() > 0;
           }
       }
       public T_User GetUserModelByToken(string token)
       {
           using (var db = new cakedbEntities())
           {
               return db.T_User.Where(t => t.Token == token).FirstOrDefault();
           }
       }
       public T_User GetUserModelByCode(string code)
       {
           using (var db = new cakedbEntities())
           {
               return db.T_User.Where(t => t.InvitationCode == code).FirstOrDefault();
           }
       }

       public List<T_User> GetUserList()
       {
           using (var db = new cakedbEntities())
           {
               return db.T_User.OrderByDescending(t => t.Id).ToList();
           }
       }
       


    }
}
