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
    
    public partial class PoliticalParty
    {
        public PoliticalParty()
        {
            this.Seat = new HashSet<Seat>();
        }
    
        public int Id { get; set; }
        public int CoalitionId { get; set; }
        public string Name { get; set; }
        public string Abbreviation { get; set; }
    
        public virtual ICollection<Seat> Seat { get; set; }
    }
}