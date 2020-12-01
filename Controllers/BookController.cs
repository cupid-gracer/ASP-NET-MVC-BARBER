using asp_net_backend.Models;
using asp_net_backend.ViewModels;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;

namespace asp_net_backend.Controllers
{
    [MyAuthorizeAttribute]
    public class BookController : Controller
    {

        private DataContext db = new DataContext();

        [AllowAnonymous]
        // GET: Book
        public ActionResult Index()
        {
            if (Session["user"] == null)
            {
                return Redirect("/");
            }

            var books = db.Books.ToList();
            var barbers = db.Barbers.ToList();
            var users = db.Users.ToList();

           var result = from b in books
                         join c in users on b.clientid equals c.id into t1
                         from c in t1.ToList()

                         join bb in users on b.barberid equals bb.id into t2
                         from bb in t2.ToList()
                         select new BookIndexData
                         {
                             client = c,    
                             barber = bb,
                             book = b,
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
            var books = db.Books.ToList();
            var users = db.Users.ToList();

            var bookcomments = db.BookComments.ToList();
            var book = db.Books.Find(id);
            string strService = (from b in books where b.id == id select b.serviceid).First().ToString();
            var listServes = strService.Split(',');
            
            var bcs = ( from b in bookcomments where b.bookid == id select b).ToList();

            var ss = db.Services.ToList();
            var services = ss.Where(a => listServes.Any(s => a.id.ToString().Equals(s)));

            var bc = from b in bookcomments
                     where b.bookid == id
                     join s in users on b.senderid equals s.id into t1
                     from s in t1.ToList()
                     select new BookCommentData
                         {
                             bookcomment = b,
                             sender = s,
                         };

            var result = new BookEditData
            {
                book = book,
                bookcomments = bc.ToList(),
                services = services.ToList(),
            };
            return View(result);
        }
    }
}
