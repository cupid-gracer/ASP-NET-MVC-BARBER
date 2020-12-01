using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace asp_net_backend.Models.API
{
    public class Register
    {
        [Key]
        public int id { get; set; }
        [Required]
        [StringLength(55, ErrorMessage = "Name length can't be more than 55.")]
        public string firstname { get; set; }
        public string lastname { get; set; }
        public string password { get; set; }
        public string barber { get; set; }

        [Required]
        [EmailAddress]
        [Display(Name = "Email")]
        public string email { get; set; }
    }
}