using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using asp_net_backend.Models;
using asp_net_backend.ViewModels;

namespace asp_net_backend.Controllers
{

    [MyAuthorizeAttribute]
    public class FavBarberController : Controller
    {
        private DataContext db = new DataContext();

        // GET: FavBarber
        [AllowAnonymous]
        public ActionResult Index()
        {
            if (Session["user"] == null)
            {
                return Redirect("/");
            }

            var barbers = db.Barbers.ToList();
            var users = db.Users.ToList();
            
            var result = from b in barbers 
                         join u in users on b.n_id_user equals u.id
                         group b.n_id_user by new { u } into g
                         select new FavIndexData
                         {
                             users = g.Key.u,
                             barbers = g.Count()
                         };

            return View(result);
        }

        //GET:Edit
        [AllowAnonymous]
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }

            var barbers = db.Barbers.ToList();
            var users = db.Users.ToList();

            var client = (from b in barbers
                         where b.n_id_user == id
                          join u in users on b.n_id_user equals u.id
                         group b.n_id_user by new { u } into g
                         select new 
                         {
                             firstname = g.Key.u.firstname,
                             lastname = g.Key.u.lastname,
                         });
            var result = from b in barbers
                         where b.n_id_user == id
                         join u in users on b.n_id_user_barber equals u.id
                         select new FavIndexData
                         {
                             users = u,
                             barbers = 0
                         };

            ViewBag.clientName = client.First().firstname + " " + client.First().lastname;

            return View(result);
        }
    }
}