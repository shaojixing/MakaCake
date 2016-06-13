using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Cake_Model;

namespace Cake_Dal
{
   public class ProductDal
    {
       public List<T_Protuct> GetProductListByClassId(int id)
       {
       using(var db=new cakedbEntities())
       {
           return db.T_Protuct.Where(t => t.Category == id).ToList();
       }
       }
       public List<T_Protuct> GetProductListByClassId(List<int?> id)
       {
           using (var db = new cakedbEntities())
           {
               return db.T_Protuct.Where(t => id.Contains(t.Category)).ToList();
           }
       }
       public T_Protuct GetProductById(int PId)
       {
           using (var db = new cakedbEntities())
           {
               return db.T_Protuct.Where(t => t.Id == PId).FirstOrDefault();
           }
       }

       public T_ProductDetail GetPDetailById(int Id)
       {
           using (var db = new cakedbEntities())
           {
               return db.T_ProductDetail.Where(t => t.Id == Id).FirstOrDefault();
           }
       }

       public List<T_ProductDetail> GetProductDetailById(int PId)
       {
           using (var db = new cakedbEntities())
           {
               return db.T_ProductDetail.Where(t => t.ProductId == PId).ToList();
           }
       }

       public List<T_ProductComment> GetCommentByPId(int PId)
       {
           using (var db = new cakedbEntities())
           {
               return db.T_ProductComment.Where(t => t.ProductId == PId).ToList();
           }
       }
    }
}
