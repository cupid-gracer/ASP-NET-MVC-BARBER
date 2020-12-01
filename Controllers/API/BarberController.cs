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
    [Authorize]
    public class BarberController : ApiController
    {



        private DataContext db = new DataContext();
        // GET: api/Barber
        public IEnumerable<string> Get()
        {
            return new string[] { "value1", "value2" };
        }

        // GET: api/Barber/5
        public string Get(int id)
        {
            return "value";
        }

        // POST: api/Barber
        public void Post([FromBody]string value)
        {
        }

        // PUT: api/Barber/5
        public void Put(int id, [FromBody]string value)
        {
        }

        // DELETE: api/Barber/5
        public void Delete(int id)
        {
        }
    }
}
