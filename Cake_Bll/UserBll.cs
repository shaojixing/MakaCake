using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Cake_Dal;
using Cake_Model;
using Cake_Common;

namespace Cake_Bll
{
   public class UserBll
    {
       
       private string RandCode(int n)
       {
           char[] arrChar = new char[]{ 
            '0','1','2','3','4','5','6','7','8','9', 
             'A','B','C','D','E','F','G','H','I','J','K','L','M','N','Q','P','R','T','S','V','U','W','X','Y','Z' 
            };
           StringBuilder num = new StringBuilder();
           Random rnd = new Random(DateTime.Now.Millisecond);
           for (int i = 0; i < n; i++)
           {
               num.Append(arrChar[rnd.Next(0, arrChar.Length)].ToString());
           }
           return num.ToString();
       }
       public bool GetUserModelByMobile(string Mobile, string pwd)
       {
           UserDal usermodel = new UserDal();
          return usermodel.GetUserModelByMobile(Mobile, pwd);
       }

       public int GetUserByCode(string code)
       {
           UserDal usermodel = new UserDal();
           T_User user = new T_User();
           user=usermodel.GetUserModelByCode(code);
           if (user != null)
           {
               return user.Id;
           }
           else { return 0; }
       }

       public bool InsertUserModebyMobile(string mobile,string pwd,string code)
       {
           T_User model = new T_User();
          
           model.Mobile = mobile;
           model.Pwd = pwd;
           model.ClassId = 1;
           model.CreateDate = DateTime.Now;
           model.GradeId = 1;
           model.GradeName = "水母会员";
           model.NiceName = RandCode(9);
           model.OrderPrice = 0;
           model.Token = Cake_Common.MD5Helper.MD5JM(mobile + pwd);
           model.InvitationCode = RandCode(6);
           model.UserId = GetUserByCode(code);
           model.MaKaCurrency = 100;
           UserDal usermodel = new UserDal();
           bool res = false;
          res= usermodel.InsertUserModebyMobile(model);
          if (res)
          {
              usermodel.UpdateUserByCode(model);
          }
          return res;
       }
       public bool InsertUserModebyCompany(string mobile, string pwd,string pname,string purl,string email)
       {
           T_User model = new T_User();
           model.Mobile = mobile;
           model.Pwd = pwd;
           model.ClassId = 2;
           model.CreateDate = DateTime.Now;
           model.GradeId = 1;
           model.NiceName = pname;
           model.OrderPrice = 0;
           model.GradeName = "企业会员";
           model.Email = email;
           model.InvitationCode = purl;
           model.Token = Cake_Common.MD5Helper.MD5JM(mobile + pwd);
           UserDal usermodel = new UserDal();
           return usermodel.InsertUserModebyMobile(model);
       }
       public bool IsMobile(string mobile)
       {
           UserDal usermodel = new UserDal();
          return usermodel.IsMobile(mobile);
       }
       public T_User GetUserModelByToken()
       {
           string token = "";
           UserDal usermodel = new UserDal();
           CookieHelper coo = new CookieHelper();
           if (coo.GetLogin)
           {
               token = coo.getCookie("token");
               if (token != "")
               {
                   return usermodel.GetUserModelByToken(token);
               }
               else { return null; }
           }
           else { return null; }
           
       }

       public int GetUserIdByToken()
       { 
           T_User user=new T_User();
           user = GetUserModelByToken();
           if (user != null)
           {
               return user.Id;
           }
           else
           { return 0; }
       }

       public T_User GerUserByUserId(int userid)
       {
           UserDal dal = new UserDal();
         return  dal.GetUserModelById(userid);
       }
       public bool UpdateUser(int userid,int maka)
       {
           UserDal dal = new UserDal();
           T_User model = new T_User();

           model = GerUserByUserId(userid);
           if (model != null)
           {
               model.MaKaCurrency = model.MaKaCurrency - maka;
               return dal.UpdateUser(model);
           }
           else
           {
               return false;
           }

       }
       public List<T_User> GetUserList()
       {
           UserDal dal = new UserDal();
         return  dal.GetUserList();
       }
    }
}
