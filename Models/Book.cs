using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace asp_net_backend.Models
{
    public class Book
    {
        public int id { get; set; }
        public int barberid { get; set; }
        public int clientid { get; set; }
        public int serviceid { get; set; }

        //[DataType(DataType.Date)]
        //[DisplayFormat(DataFormatString = "{0:yyyy-MM-dd}", ApplyFormatInEditMode = true)]
        public string date { get; set; }
        //[DataType(DataType.Date)]
        //[DisplayFormat(DataFormatString = "{0:HH:mm}", ApplyFormatInEditMode = true)]
        public string time { get; set; }
        public int payment { get; set; }
        public int state { get; set; }
        public string created_at { get; set; }

    }
}