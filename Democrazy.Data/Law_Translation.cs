//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Democrazy.Data
{
    using System;
    using System.Collections.Generic;
    
    public partial class Law_Translation
    {
        public Law_Translation()
        {
            this.Votes = new HashSet<Law_Translation_Vote>();
        }
    
        public int Id { get; set; }
        public System.DateTime StartDate { get; set; }
        public Nullable<System.DateTime> EndDate { get; set; }
        public RevisionType RevisionType { get; set; }
        public string Summary { get; set; }
        public int LawId { get; set; }
        public int UserId { get; set; }
        public string Reason { get; set; }
    
        public virtual ICollection<Law_Translation_Vote> Votes { get; set; }
    }
}
