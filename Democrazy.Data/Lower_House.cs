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
    
    public partial class Lower_House
    {
        public Lower_House()
        {
            this.Seats = new HashSet<Seat>();
            this.LawProposals = new HashSet<LawProposal>();
        }
    
        public int Id { get; set; }
        public short SeatNumber { get; set; }
    
        public virtual ICollection<Seat> Seats { get; set; }
        public virtual ICollection<LawProposal> LawProposals { get; set; }
    }
}