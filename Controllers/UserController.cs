using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using asp_net_backend.Models;

namespace asp_net_backend.Controllers
{
    [MyAuthorizeAttribute]
    public class UserController : Controller
    {

        private DataContext db = new DataContext();

        // GET: User
        [AllowAnonymous]
        public ActionResult Index()
        {
            if (Session["user"] == null)
            {
                return Redirect("/");
            }

            return View(db.Users.ToList());
        }
    }
}