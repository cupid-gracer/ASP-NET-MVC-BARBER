using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace asp_net_backend.Models
{
    public class BookComment
    {
        public int id { get; set; }
        public int bookid { get; set; }
        public int senderid { get; set; }
        public string comment { get; set; }
        public string created_at { get; set; }
    }
}