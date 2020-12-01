using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using asp_net_backend.Models;

namespace asp_net_backend.ViewModels
{
    public class BookIndexData
    {
        public Users client { get; set; }
        public Users barber { get; set; }
        public Book book{ get; set; }

    }
}