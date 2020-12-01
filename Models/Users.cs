using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace asp_net_backend.Models
{
    public class Users
    {
        //[Key, Column(Order = 0)]
        [Key]
        public int id { get; set; }

        [StringLength(55, ErrorMessage = "Name length can't be more than 55.")]
        public string firstname { get; set; }

        [StringLength(55, ErrorMessage = "Name length can't be more than 55.")]
        public string lastname { get; set; }

        [EmailAddress]
        public string email { get; set; }
        public string password { get; set; }
        public string avatar { get; set; }
        public int barber{ get; set; }
        public double rate{ get; set; }
        public int star { get; set; }
        public string created_at { get; set; }

        public virtual ICollection<Barbers> barbers { get; set; }
        public virtual ICollection<Cuts> cuts { get; set; }
        public virtual ICollection<Review> reviews { get; set; }
        public virtual ICollection<Book_Setting> booksetting { get; set; }
        public virtual ICollection<Location> location { get; set; }

    }
}