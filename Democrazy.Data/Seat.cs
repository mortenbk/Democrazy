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
    
    public partial class Seat
    {
        public Seat()
        {
            this.LawsEnacted = new HashSet<Law>();
        }
    
        public int Id { get; set; }
        public Nullable<int> ParliamentId { get; set; }
        public Nullable<int> Lower_HouseId { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public Nullable<int> PoliticalPartyId { get; set; }
        public int SeatTypeId { get; set; }
    
        public virtual ICollection<Law> LawsEnacted { get; set; }
        public virtual PoliticalParty PoliticalParty { get; set; }
    }
}
