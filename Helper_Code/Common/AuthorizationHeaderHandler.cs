using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Security.Claims;
using System.Security.Principal;
using System.Text;
using System.Threading;
using System.Threading.Tasks;
using System.Web;
using asp_net_backend.Models;
using asp_net_backend.Resources.Constants;

namespace asp_net_backend.Helper_Code.Common
{

    public class AuthorizationHeaderHandler : DelegatingHandler
    {

        private DataContext db = new DataContext();

        #region Send method.

        /// <summary>
        /// Send method.
        /// </summary>
        /// <param name="request">Request parameter</param>
        /// <param name="cancellationToken">Cancellation token parameter</param>
        /// <returns>Return HTTP response.</returns>
        protected override Task<HttpResponseMessage> SendAsync(HttpRequestMessage request, CancellationToken cancellationToken)
        {
            // Initialization.
            IEnumerable<string> apiTokenValues = null;
            AuthenticationHeaderValue authorization = request.Headers.Authorization;

            System.Diagnostics.Debug.WriteLine("Here");
            // Verification.
            if (request.Headers.TryGetValues("Authorization-Token", out apiTokenValues))
            {

                var token = apiTokenValues.FirstOrDefault();


                var decryptedToken = RSAHelper.Decrypt(token);

                //var foundUser = from user in db.Users
                //                where user.email == decryptedToken
                //                select user;

                    Users myUser = db.Users.FirstOrDefault(user1 => user1.email == decryptedToken);

                if (myUser != null)
                {
                    // Setting
                    var identity = new GenericIdentity(myUser.id.ToString());
                    SetPrincipal(new GenericPrincipal(identity, null));
                }

            }

            // Info.
            return base.SendAsync(request, cancellationToken);
        }

        #endregion

        #region Set principal method.

        /// <summary>
        /// Set principal method.
        /// </summary>
        /// <param name="principal">Principal parameter</param>
        private static void SetPrincipal(IPrincipal principal)
        {
            // setting.
            Thread.CurrentPrincipal = principal;

            // Verification.
            if (HttpContext.Current != null)
            {
                // Setting.
                HttpContext.Current.User = principal;
            }
        }

        #endregion
    }
}