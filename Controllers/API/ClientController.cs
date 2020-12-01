using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Net.Http.Formatting;
using System.Security.Cryptography;
using System.Security.Principal;
using System.Threading;
using System.Web;
using System.Web.Http;
using System.Web.Security;
using asp_net_backend.Models;
using asp_net_backend.Helper_Code.Common;
using Newtonsoft.Json;
using System.Web.Script.Serialization;
using Newtonsoft.Json.Linq;

namespace asp_net_backend.Controllers.API
{
    [Authorize]
    public class ClientController : ApiController
    {
        private DataContext db = new DataContext();



        [HttpGet]
        [ActionName("getMyBarber")]
        public IHttpActionResult getMyBarber()
        {
            int current_user_id = int.Parse(HttpContext.Current.User.Identity.Name);
            //int current_user_id = 31;

            ICollection<Users> users = new List<Users>();
            Users user = db.Users.Find(current_user_id);
            ICollection<Barbers> myBarbers = user.barbers;
            ICollection<Cuts> cuts = user.cuts;
            foreach (var m in myBarbers)
            {
                if (m.block != 1)
                {
                    users.Add(db.Users.Find(m.n_id_user_barber));
                }
            }
            var dd = JsonConvert.SerializeObject(users, Formatting.None,
                                    new JsonSerializerSettings()
                                    {
                                        ReferenceLoopHandling = ReferenceLoopHandling.Ignore
                                    });
            var ss = JsonConvert.SerializeObject(cuts, Formatting.None,
                                    new JsonSerializerSettings()
                                    {
                                        ReferenceLoopHandling = ReferenceLoopHandling.Ignore
                                    });
            //Json d = new { Success = true, Users = JObject.Parse(dd), Cuts = JObject.Parse(ss) };
            return Json(new { Success = true, Users = JArray.Parse(dd), Cuts = JArray.Parse(ss) });
            //return new System.Web.Mvc.ContentResult { Content = d, ContentType = "application/json" };
        }

        [HttpPost]
        [ActionName("changeProfile")]
        public IHttpActionResult changeProfile()
        {
            var httpRequest = HttpContext.Current.Request;
            if (httpRequest.Files.Count > 0)
            {
                //var docfiles = new List<string>();
                string changed_name = "";
                foreach (string file in httpRequest.Files)
                {
                    var postedFile = httpRequest.Files[file];
                    int hasheddate = DateTime.Now.GetHashCode();
                    //Good to use an updated name always, since many can use the same file name to upload.
                    changed_name = hasheddate.ToString() + "_" + postedFile.FileName;

                    var filePath = HttpContext.Current.Server.MapPath("~/uploads/avatar/" + changed_name);
                    postedFile.SaveAs(filePath); // save the file to a folder "Images" in the root of your app

                    changed_name = "/uploads/avatar/" + changed_name; //store this complete path to database
                    //docfiles.Add(changed_name);
                    int cur_id = int.Parse(HttpContext.Current.User.Identity.Name);
                    Users user = db.Users.Find(cur_id);
                    user.avatar = changed_name;
                    db.SaveChanges();
                }
                return Json(new { Success = true, ImageName = changed_name });
            }

            return Json(new { Success = false });
        }


        [HttpPost]
        [ActionName("searchAllBarber")]
        public IHttpActionResult searchAllBarber()
        {
            int current_user_id = int.Parse(HttpContext.Current.User.Identity.Name);

            var searchName = HttpContext.Current.Request.Params["name"];
            var searchLocation = HttpContext.Current.Request.Params["location"];

            var barberIds = new List<int>();
            var userIds = new List<int>();

            if (!String.IsNullOrEmpty(searchLocation))
            {

                barberIds = db.Locations.Where(x =>
                                               x.streetAddress.Contains(searchLocation) ||
                                               x.city.Contains(searchLocation)          ||
                                               x.zipcode.Contains(searchLocation)       ||
                                               x.floor.Contains(searchLocation)         ||
                                               x.state.Contains(searchLocation)         ||
                                               x.country.Contains(searchLocation)
                                               )
                                        .Select(x => x.barberid)
                                        .ToList();
            }

            if (!String.IsNullOrEmpty(searchName))
            {
                userIds = db.Users.Where(x => x.firstname.Contains(searchName)).Select(x => x.id).ToList();
                barberIds.AddRange(userIds);
            }
            ICollection<Users> users;
            if (String.IsNullOrEmpty(searchLocation) && String.IsNullOrEmpty(searchName))
                users = db.Users.Where(x => x.barber == 1).ToList();
            else
                users = db.Users.Where(x => barberIds.Contains(x.id) && x.barber == 1).ToList();
            var results = new List<S_A_B>();

            foreach (var user in users)
            {
                int fav = db.Barbers.Where(x => x.n_id_user == current_user_id && x.n_id_user_barber == user.id).Count();
                S_A_B sab = new S_A_B
                {

                    id = user.id,
                    avatar = user.avatar,
                    email = user.email,
                    firstname = user.firstname,
                    lastname = user.lastname,
                    barber = user.barber,
                    rate = user.rate,
                    star = user.star,
                    reviews = user.reviews,
                    location = user.location.First(),
                    booksetting = user.booksetting.First(),
                    favBarber = fav
                };
                results.Add(sab);
            }

            var dd = JsonConvert.SerializeObject(results, Formatting.None,
                                    new JsonSerializerSettings()
                                    {
                                        ReferenceLoopHandling = ReferenceLoopHandling.Ignore
                                    });

            return Json(new { Success = true, searchBarbers = JArray.Parse(dd) });
        }








        // GET: api/Client
        public IEnumerable<string> Get()
        {
            return new string[] { "value1", "value2" };
        }

        // GET: api/Client/5
        public string Get(int id)
        {
            return "value";
        }

        // POST: api/Client
        public void Post([FromBody] string value)
        {
        }

        // PUT: api/Client/5
        public void Put(int id, [FromBody] string value)
        {
        }

        // DELETE: api/Client/5
        public void Delete(int id)
        {
        }

        class S_A_B
        {
            //public Users user { get; set; }
            public int id { get; set; }
            public string avatar  { get; set; }
            public string email { get; set; }
            public string firstname { get; set; }
            public string lastname { get; set; }
            public int barber { get; set; }
            public double rate { get; set; }
            public double star { get; set; }
            public ICollection<Review> reviews { get; set; }
            public Book_Setting booksetting { get; set; }
            public Location location { get; set; }
            public int favBarber { get; set; }
        }
    }
}
