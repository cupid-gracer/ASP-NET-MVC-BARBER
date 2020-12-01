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



namespace asp_net_backend.Controllers.API
{
    //[MyAuthorizeAttribute]
    [Authorize]
    public class RegisterController : ApiController
    {
        private DataContext db = new DataContext();

        //POST: api/Register/register
        [HttpPost]
        [ActionName("register")]
        [AllowAnonymous]
        public IHttpActionResult Register()
        {
            var firstname = HttpContext.Current.Request.Params["firstname"];
            var lastname = HttpContext.Current.Request.Params["lastname"];
            var email = HttpContext.Current.Request.Params["email"];
            var password = HttpContext.Current.Request.Params["password"];
            int barber = Int32.Parse(HttpContext.Current.Request.Params["barber"]);

            Users user = new Users
            {
                firstname = firstname,
                lastname = lastname,
                email = email,
                password = HashPassword(password),
                barber = barber,
                avatar = "/uploads/avatar/default.png",
                created_at = DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss"),
            };

            if (ModelState.IsValid)
            {
                try
                {
                    db.Users.Add(user);
                    db.SaveChanges();

                    if (barber == 1)
                    {
                        Book_Setting bookSetting = new Book_Setting
                        {
                            barberid = user.id,
                            created_at = DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss"),
                        };
                        db.BookSettings.Add(bookSetting);
                        db.SaveChanges();
                    }

                    return Json(new { Message = "success", Success = true });

                }
                catch (System.Data.Entity.Infrastructure.DbUpdateException dbEx)
                {
                    Debug.WriteLine(dbEx.Message);
                }
                catch (MySql.Data.MySqlClient.MySqlException mdmm)
                {
                    Debug.WriteLine(mdmm.InnerException.InnerException.Message);
                }
            }

            return Json(new { Message = "failed", Success = false });
        }

        [HttpPost]
        [ActionName("login")]
        [AllowAnonymous]
        public IHttpActionResult Login()
        {
            var email = HttpContext.Current.Request.Params["email"];
            var password = HashPassword(HttpContext.Current.Request.Params["password"]);

            Users user = new Users
            {
                email = email,
                password = password
            };

            if (ModelState.IsValid)
            {
                Users myUser = db.Users.FirstOrDefault(user1 => user.email == email && user.password == password);
                if (myUser != null)
                {
                    //Session["user"] = user;
                    var token = RSAHelper.Encrypt(user.email);

                    return Json(new { Success = true, token = token });
                }
            }
            return Json(new { Success = false });

        }

        // GET: Logout
        [HttpGet]
        [ActionName("logout")]

        public IHttpActionResult Logout()
        {
            //Session.Abandon();
            FormsAuthentication.SignOut();
            //AuthenticationManager.SignOut(DefaultAuthenticationTypes.ApplicationCookie);
            return Json(new { Success = true });

        }

        [HttpGet]
        [ActionName("log")]
        [AllowAnonymous]

        public IHttpActionResult Log()
        {
         
            var token = RSAHelper.Encrypt("barber@gmail.com");


            //SetPrincipal(user);

            return Json(new { Success = true, token = token });
        }

        // GET: api/Register
        public IEnumerable<string> Get()
        {
            return new string[] { "value1", "value2" };
        }

        // GET: api/Register/5
        public string Get(int id)
        {
            return "value";
        }

        // POST: api/Register
        public void Post([FromBody] string value)
        {
        }

        // PUT: api/Register/5
        public void Put(int id, [FromBody] string value)
        {
        }

        // DELETE: api/Register/5
        public void Delete(int id)
        {
        }

        private static string HashPassword(string password)
        {
            byte[] salt;
            byte[] buffer2;
            if (password == null)
            {
                throw new ArgumentNullException("password");
            }
            using (Rfc2898DeriveBytes bytes = new Rfc2898DeriveBytes(password, 0x10, 0x3e8))
            {
                salt = bytes.Salt;
                buffer2 = bytes.GetBytes(0x20);
            }
            byte[] dst = new byte[0x31];
            Buffer.BlockCopy(salt, 0, dst, 1, 0x10);
            Buffer.BlockCopy(buffer2, 0, dst, 0x11, 0x20);
            return Convert.ToBase64String(dst);
        }

        private void SetPrincipal(Users user)
        {
            IPrincipal principal = new System.Security.Principal.GenericPrincipal(
                    new System.Security.Principal.GenericIdentity(user.email),
                    new string[] { /* fill roles if any */ });

            Thread.CurrentPrincipal = principal;
            if (HttpContext.Current != null)
            {
                HttpContext.Current.User = principal;

            }

        }


        //FormsAuthentication.SetAuthCookie(model.UserName, model.RememberMe);
        //    AuthenticateThisRequest();
        //private void AuthenticateThisRequest()
        //{
        //    //NOTE:  if the user is already logged in (e.g. under a different user account)
        //    //       then this will NOT reset the identity information.  Be aware of this if
        //    //       you allow already-logged in users to "re-login" as different accounts 
        //    //       without first logging out.
        //    if (HttpContext.Current.User.Identity.IsAuthenticated) return;

        //    var name = FormsAuthentication.FormsCookieName;
        //    var cookie = Response.Cookies[name];
        //    if (cookie != null)
        //    {
        //        var ticket = FormsAuthentication.Decrypt(cookie.Value);
        //        if (ticket != null && !ticket.Expired)
        //        {
        //            string[] roles = (ticket.UserData as string ?? "").Split(',');
        //            HttpContext.User = new GenericPrincipal(new FormsIdentity(ticket), roles);
        //        }
        //    }
        //}
    }
}
