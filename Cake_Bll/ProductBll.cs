﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Cake_Model;
using Cake_Dal;

namespace Cake_Bll
{
    public class ProductBll
    {
        public List<T_Protuct> GetProductListByClassId(int id)
        {
            ProductDal productdal = new ProductDal();
            return productdal.GetProductListByClassId(id);
        }
        public List<T_Protuct> GetProductListByClassId(List<int?> id)
        {
            ProductDal productdal = new ProductDal();
            return productdal.GetProductListByClassId(id);
        }
        public T_Protuct GetProductById(int PId)
        {
            ProductDal productdal = new ProductDal();
            return productdal.GetProductById(PId);
        }

        public List<T_ProductDetail> GetProductDetailById(int PId)
        {
            ProductDal productdal = new ProductDal();
            return productdal.GetProductDetailById(PId);
        }

        public List<T_ProductComment> GetCommentByPId(int PId)
        {
            ProductDal productdal = new ProductDal();
            return productdal.GetCommentByPId(PId);
        }

        public T_ProductDetail GetPDetailById(int Id)
        {
            ProductDal productdal = new ProductDal();
            return productdal.GetPDetailById(Id);

        }

        public bool UpdateProduct(T_Protuct model)
        {
            ProductDal productdal = new ProductDal();
            return productdal.UpdateProduct(model);
        }

        public bool AddProduct(T_Protuct model)
        {
            ProductDal productdal = new ProductDal();
            return productdal.AddProduct(model);
        }

        public bool UpdateProductDtail(T_ProductDetail model)
        {
            ProductDal productdal = new ProductDal();
            return productdal.UpdateProductDtail(model);
        }

        public bool AddProductDetail(T_ProductDetail model)
        {
            ProductDal productdal = new ProductDal();
            return productdal.AddProductDetail(model);
        }
    }
}
