using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Cake_Model;
using Cake_Dal;


namespace Cake_Bll
{
  public  class AddressBll
    {

      public bool InsertAddress(string address1, string address2, string name, string mobile)
      {
          UserBll bll = new UserBll();
          int userid=0;
          userid = bll.GetUserIdByToken();
          if (userid > 0)
          {
              T_Address model = new T_Address();
              model.Adress = address2;
              model.Area = address1;
              model.Name = name;
              model.Mobile = mobile;
              model.CreateDate = DateTime.Now;
              model.UserId = userid;
              AddressDal addressdal = new AddressDal();
              return addressdal.InsertAddress(model);
          }
          else
          {
              return false;
          }


      }

      public T_Address GetAddressByUserId()
      {
           UserBll bll = new UserBll();
          int userid=0;
          userid = bll.GetUserIdByToken();
          if (userid > 0)
          {
              AddressDal addressdal = new AddressDal();
              return addressdal.GetAddressByUserId(userid);

          }

          else
          {
              return null;
          }


      }

      public List<T_Address> GetAddressListByUserId(int userid)
      {
          //UserBll bll = new UserBll();
        //  int userid = 0;
        //  userid = bll.GetUserIdByToken();
          if (userid > 0)
          {
              AddressDal addressdal = new AddressDal();
              return addressdal.GetAddressListByUserId(userid);

          }

          else
          {
              return null;
          }
      }

    }
}
