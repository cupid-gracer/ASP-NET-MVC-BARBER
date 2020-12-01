using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

namespace asp_net_backend.Models
{
    public class Location
    {
        [Key]
        //[ForeignKey("Users")]
        public int id { get; set; }
        //public virtual Users user { get; set; }

        public int barberid { get; set; }
        public string locationType { get; set; }
        public string shopName { get; set; }
        public string streetAddress { get; set; }
        public string floor { get; set; }
        public string city { get; set; }
        public string state { get; set; }
        public string zipcode { get; set; }
        public string country { get; set; }
        public string sunday { get; set; }
        public string monday { get; set; }
        public string tuesday { get; set; }
        public string wednesday { get; set; }
        public string thursday { get; set; }
        public string friday { get; set; }
        public string saturday { get; set; }
        public string latitude { get; set; }
        public string longitude { get; set; }

        [ForeignKey("barberid")]
        public virtual Users user { get; set; }
    }
}