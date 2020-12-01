using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using asp_net_backend.Models;

namespace asp_net_backend.ViewModels
{
    public class FavIndexData
    {
        public Users users { get; set; }
        public int barbers { get; set; }
    }
}