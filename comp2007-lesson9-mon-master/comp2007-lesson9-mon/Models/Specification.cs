//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace comp2007_lesson9_mon.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class Specification
    {
        public int productID { get; set; }
        public string engine { get; set; }
        public string transmission { get; set; }
        public bool airBag { get; set; }
    
        public virtual Product Product { get; set; }
    }
}
