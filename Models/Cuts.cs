using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

namespace asp_net_backend.Models
{
    public class Cuts
    {
        [Key]
        public int id { get; set; }

        //[ForeignKey("Users"), Column(Order = 0)]
        //[ForeignKey("Users")]
        public int n_id_user { get; set; }

        public string sz_cuts { get; set; }
        public string sz_etc { get; set; }

        [ForeignKey("n_id_user")]
        public virtual Users user{ get; set; }


    }
}