using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

namespace asp_net_backend.Models
{
    public class Barbers
    {
        [Key]
        public int id { get; set; }

        //[ForeignKey("Users")]
        //[ForeignKey("Users"), Column(Order = 0)]
        public int n_id_user { get; set; }

        //[ForeignKey("Users")]
        //[ForeignKey("Users"), Column(Order = 1)]
        public int n_id_user_barber { get; set; }
        public int block { get; set; }

        [ForeignKey("n_id_user")]
        public virtual Users client { get; set; }

        //public virtual Users barber { get; set; }

        //public virtual ICollection<Users> Users { get; set; }

    }
}