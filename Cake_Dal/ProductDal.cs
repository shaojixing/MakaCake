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

       public bool UpdateProduct(T_Protuct model)
       {
           using (var db = new cakedbEntities())
           {
               db.T_Protuct.Attach(model);
               db.Entry<T_Protuct>(model).State = System.Data.Entity.EntityState.Modified;

               return db.SaveChanges() > 0;
           }
       }

       public bool AddProduct(T_Protuct model)
       {
           using (var db = new cakedbEntities())
           {
               db.Set<T_Protuct>().Add(model);
               
               return db.SaveChanges() > 0;
           }
       }

       public bool UpdateProductDtail(T_ProductDetail model)
       {
           using (var db = new cakedbEntities())
           {
               db.T_ProductDetail.Attach(model);
               db.Entry<T_ProductDetail>(model).State = System.Data.Entity.EntityState.Modified;

               return db.SaveChanges() > 0;
           }
       }

       public bool AddProductDetail(T_ProductDetail model)
       {
           using (var db = new cakedbEntities())
           {
               db.Set<T_ProductDetail>().Add(model);
               
               return db.SaveChanges() > 0;
           }
       }

   

    }
}
