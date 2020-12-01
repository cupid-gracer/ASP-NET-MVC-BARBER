using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace asp_net_backend.Models
{
    public class Book_Setting
    {
        [Key]
        public int id { get; set; }

        //[ForeignKey("Users")]
        public int barberid { get; set; }
        public int auto_confirm { get; set; }
        public int multi_service { get; set; }
        public int require_phone { get; set; }
        public string auto_comment { get; set; }
        public int bookinterval { get; set; }
        public int last_limit_hour { get; set; }
        public int last_limit_min { get; set; }
        public string future_limit { get; set; }
        public int requrring_limit { get; set; }
        public string created_at { get; set; }

        [ForeignKey("barberid")]
        public Users user { get; set; }
        //public virtual Users user { get; set; }

    }
}