//------------------------------------------------------------------------------
// <auto-generated>
//     此代码已从模板生成。
//
//     手动更改此文件可能导致应用程序出现意外的行为。
//     如果重新生成代码，将覆盖对此文件的手动更改。
// </auto-generated>
//------------------------------------------------------------------------------

namespace Cake_Model
{
    using System;
    using System.Collections.Generic;
    
    public partial class T_Cart
    {
        public int Id { get; set; }
        public Nullable<int> ProductId { get; set; }
        public string ProductName { get; set; }
        public Nullable<decimal> ProductPrice { get; set; }
        public string Remark { get; set; }
        public Nullable<int> ProductNumber { get; set; }
        public Nullable<int> Specification { get; set; }
        public Nullable<int> UserId { get; set; }
        public Nullable<System.DateTime> CreateDate { get; set; }
        public string CreateIP { get; set; }
        public Nullable<int> ProductdetailId { get; set; }
        public string ImgUrl { get; set; }
        public string Size { get; set; }
    }
}