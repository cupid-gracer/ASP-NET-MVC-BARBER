using System;
using System.Web.Mvc;
using System.Web.Routing;
[AttributeUsage(AttributeTargets.Class | AttributeTargets.Method, Inherited = true, AllowMultiple = true)]
public class MyAuthorizeAttribute : AuthorizeAttribute
{

    protected override void HandleUnauthorizedRequest(AuthorizationContext filterContext)
    {

        if (!filterContext.HttpContext.Request.IsAuthenticated)
        {
            filterContext.Result = new RedirectToRouteResult(
                        new RouteValueDictionary(
                            new
                            {
                                controller = "auth",
                                action = "index",
                                //returnUrl = filterContext.HttpContext.Request.Url.GetComponents(UriComponents.PathAndQuery, UriFormat.SafeUnescaped)
                            }));
        }
        else
        {
            base.HandleUnauthorizedRequest(filterContext);
        }
    }
}