using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

namespace asp_net_backend.Models
{
    public class Review
    {
        [Key]
        public int id { get; set; }
        public int n_snd_user { get; set; }

        //[ForeignKey("Users")]
        [ForeignKey("n_rcv_user")]
        public int n_rcv_user { get; set; }
        public int rate { get; set; }
        public string content { get; set; }
        public string sz_etc { get; set; }

        //public virtual Users user { get; set; }
    }
}