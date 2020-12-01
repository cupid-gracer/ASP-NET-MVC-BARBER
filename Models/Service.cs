using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace asp_net_backend.Models
{
    public class Service
    {
     
        public int id { get; set; }
        public int barberid { get; set; }
        public string name { get; set; }
        public int price { get; set; }
        public string hour { get; set; }
        public string min { get; set; }
        public string description { get; set; }
    }
}