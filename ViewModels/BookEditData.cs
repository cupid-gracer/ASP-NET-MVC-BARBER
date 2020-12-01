using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using asp_net_backend.Models;

namespace asp_net_backend.ViewModels
{
    public class BookEditData
    {
        public Book book { get; set; }
        public List<BookCommentData> bookcomments { get; set; }
        public List<Service> services { get; set; }
    }
}

