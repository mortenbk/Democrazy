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
    
    public partial class LawProposal
    {
        public int Id { get; set; }
        public int ParliamentId { get; set; }
        public int Lower_HouseId { get; set; }
        public string LawText { get; set; }
        public string Name { get; set; }
    }
}
