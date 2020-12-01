using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using asp_net_backend.Models;
using asp_net_backend;
using Microsoft.AspNet.Identity;
using System.Threading.Tasks;
using System.Web.Security;

namespace asp_net_backend.Controllers
{
    [MyAuthorizeAttribute]
    public class AuthController : Controller
    {
        private DataContext db = new DataContext();


        // GET: Auth
        [HttpGet]
        [AllowAnonymous]
        public ActionResult Index()
        {
            if (Session["user"] != null)
            {
                return Redirect("/home");
            }
            return View();
        }


        // GET: login
        [HttpPost]
        [AllowAnonymous]
        public ActionResult Index(FormCollection values)
        {
            var email = values["email"];
            var password = values["password"];
            string query = "SELECT * FROM users WHERE email = @p0 and password = @p1";

            Users user = db.Users.SqlQuery(query, email, password).FirstOrDefault();
            if (user != null)
            {
                Session["user"] = user;
                return Redirect("/");
            }
            else
            {
                ViewBag.error = "These credentials do not match our records.";
                return View();
            }
        }


        // GET: Logout
        [HttpGet]
        [AllowAnonymous]
        public ActionResult Logout()
        {
            Session.Abandon();
            FormsAuthentication.SignOut();
            //AuthenticationManager.SignOut(DefaultAuthenticationTypes.ApplicationCookie);
            return Redirect("/");
        }


        // GET: login
        [HttpPost]
        public ActionResult Login1(FormCollection values)
        {
            var email = values["email"];
            var password = values["password"];

            //var result = from e in db.Users
            //             where e.email == email
            //             where e.password == password
            //             select e;

            //if (result.First() != null)
            //{
            //    Session["user"] = result.First();
            //    return Redirect("/");
            //}
            //return email;
            string query = "SELECT * FROM users WHERE email = @p0 and password = @p1";
            //Users users = db.Users.Find(30);
            //Users user = db.Users.Single(m => m.id == 30);
            Users user = db.Users.SqlQuery(query, email, password).FirstOrDefault();
            if (user != null)
            {
                Session["user"] = user;
                return Redirect("/");
            }
            else
            {

                return this.Index();
                //return View();
            }
        }

        
    }
}