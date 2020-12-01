using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http.Headers;
using System.Web.Http;

namespace asp_net_backend
{
    public static class WebApiConfig
    {
        public static void Register(HttpConfiguration config)
        {
            // Web API configuration and services

            // Web API routes
            config.MapHttpAttributeRoutes();

            config.Routes.MapHttpRoute(
                name: "DefaultApi",
                routeTemplate: "api/{controller}/{action}/{id}",
                defaults: new { id = RouteParameter.Optional }
            );

            config.Routes.MapHttpRoute(
               name: "register",
               routeTemplate: "api/register",
               defaults: new { controller = "Register", action = "register", id = RouteParameter.Optional }

           );

            config.Routes.MapHttpRoute(
               name: "login",
               routeTemplate: "api/login",
               defaults: new { controller = "Register", action = "login", id = RouteParameter.Optional }

           );
            config.Routes.MapHttpRoute(
               name: "logout",
               routeTemplate: "api/logout",
               defaults: new { controller = "Register", action = "logout", id = RouteParameter.Optional }

           );
            config.Routes.MapHttpRoute(
              name: "log",
              routeTemplate: "api/log",
              defaults: new { controller = "Register", action = "log", id = RouteParameter.Optional }

          );

            //client
            config.Routes.MapHttpRoute(
              name: "barber",
              routeTemplate: "api/barber",
              defaults: new { controller = "Client", action = "getMyBarber", id = RouteParameter.Optional }

          );
            config.Routes.MapHttpRoute(
              name: "uploadprofile",
              routeTemplate: "api/uploadprofile",
              defaults: new { controller = "Client", action = "changeProfile", id = RouteParameter.Optional }

          );
            config.Routes.MapHttpRoute(
              name: "searchbarber",
              routeTemplate: "api/searchbarber",
              defaults: new { controller = "Client", action = "searchAllBarber", id = RouteParameter.Optional }

          );
            config.Routes.MapHttpRoute(
              name: "locationinfo",
              routeTemplate: "api/locationinfo",
              defaults: new { controller = "Client", action = "getBarberLocationInfo", id = RouteParameter.Optional }

          );
            config.Routes.MapHttpRoute(
              name: "favourite",
              routeTemplate: "api/favourite",
              defaults: new { controller = "Client", action = "manageMyBarber", id = RouteParameter.Optional }

          );
            config.Routes.MapHttpRoute(
              name: "review",
              routeTemplate: "api/review",
              defaults: new { controller = "Client", action = "getBarberReview", id = RouteParameter.Optional }

          );
            config.Routes.MapHttpRoute(
              name: "reviewbarber",
              routeTemplate: "api/reviewbarber",
              defaults: new { controller = "Client", action = "reviewBarber", id = RouteParameter.Optional }

          );
            config.Routes.MapHttpRoute(
              name: "service",
              routeTemplate: "api/service",
              defaults: new { controller = "Client", action = "getBarberService", id = RouteParameter.Optional }

          );
            config.Routes.MapHttpRoute(
              name: "book",
              routeTemplate: "api/book",
              defaults: new { controller = "Client", action = "bookAppointment", id = RouteParameter.Optional }

          );
            config.Routes.MapHttpRoute(
              name: "clientbooks",
              routeTemplate: "api/clientbooks",
              defaults: new { controller = "Client", action = "getClientBooks", id = RouteParameter.Optional }

          );
            config.Routes.MapHttpRoute(
              name: "statebook",
              routeTemplate: "api/statebook",
              defaults: new { controller = "Client", action = "updateBookState", id = RouteParameter.Optional }

          );
            config.Routes.MapHttpRoute(
              name: "addcut",
              routeTemplate: "api/addcut",
              defaults: new { controller = "Client", action = "addCut", id = RouteParameter.Optional }

          );
            config.Routes.MapHttpRoute(
              name: "deletecut",
              routeTemplate: "api/deletecut",
              defaults: new { controller = "Client", action = "deleteCut", id = RouteParameter.Optional }

          );
            config.Routes.MapHttpRoute(
              name: "suportfeedback",
              routeTemplate: "api/suportfeedback",
              defaults: new { controller = "Client", action = "suportFeedback", id = RouteParameter.Optional }

          );
            config.Routes.MapHttpRoute(
              name: "notification",
              routeTemplate: "api/notification",
              defaults: new { controller = "Client", action = "getAllNotifications", id = RouteParameter.Optional }

          );
            config.Routes.MapHttpRoute(
              name: "showNotification",
              routeTemplate: "api/showNotification",
              defaults: new { controller = "Client", action = "showNotifications", id = RouteParameter.Optional }

          );
            config.Routes.MapHttpRoute(
              name: "newalarm",
              routeTemplate: "api/newalarm",
              defaults: new { controller = "Client", action = "getNewNotifications", id = RouteParameter.Optional }

          );
            config.Routes.MapHttpRoute(
              name: "sendcomment",
              routeTemplate: "api/sendcomment",
              defaults: new { controller = "Client", action = "sendBookComment", id = RouteParameter.Optional }

          );

            //barber

            config.Routes.MapHttpRoute(
              name: "barberbooks",
              routeTemplate: "api/barberbooks",
              defaults: new { controller = "Barber", action = "getBarberBooks", id = RouteParameter.Optional }

          );
            config.Routes.MapHttpRoute(
              name: "savelocation",
              routeTemplate: "api/savelocation",
              defaults: new { controller = "Barber", action = "editLocation", id = RouteParameter.Optional }

          );
            config.Routes.MapHttpRoute(
              name: "editinfo",
              routeTemplate: "api/editinfo",
              defaults: new { controller = "Barber", action = "editInfo", id = RouteParameter.Optional }

          );
            config.Routes.MapHttpRoute(
              name: "gallery",
              routeTemplate: "api/gallery",
              defaults: new { controller = "Barber", action = "getAllGallery", id = RouteParameter.Optional }

          );
            config.Routes.MapHttpRoute(
              name: "addgallery",
              routeTemplate: "api/addgallery",
              defaults: new { controller = "Barber", action = "addGallery", id = RouteParameter.Optional }

          );
            config.Routes.MapHttpRoute(
              name: "deleteGallery",
              routeTemplate: "api/deleteGallery",
              defaults: new { controller = "Barber", action = "deleteGallery", id = RouteParameter.Optional }

          );
            config.Routes.MapHttpRoute(
              name: "createservice",
              routeTemplate: "api/createservice",
              defaults: new { controller = "Barber", action = "createService", id = RouteParameter.Optional }

          );
            config.Routes.MapHttpRoute(
              name: "editservice",
              routeTemplate: "api/editservice",
              defaults: new { controller = "Barber", action = "editService", id = RouteParameter.Optional }

          );
            config.Routes.MapHttpRoute(
              name: "clients",
              routeTemplate: "api/clients",
              defaults: new { controller = "Barber", action = "getAllMyClients", id = RouteParameter.Optional }

          );
            config.Routes.MapHttpRoute(
              name: "clientdetail",
              routeTemplate: "api/clientdetail",
              defaults: new { controller = "Barber", action = "getClientDetail", id = RouteParameter.Optional }

          );
            config.Routes.MapHttpRoute(
              name: "deleteclient",
              routeTemplate: "api/deleteclient",
              defaults: new { controller = "Barber", action = "deleteClient", id = RouteParameter.Optional }

          );
            config.Routes.MapHttpRoute(
              name: "blockclient",
              routeTemplate: "api/blockclient",
              defaults: new { controller = "Barber", action = "blockClient", id = RouteParameter.Optional }

          );
            config.Routes.MapHttpRoute(
              name: "broadcast",
              routeTemplate: "api/broadcast",
              defaults: new { controller = "Barber", action = "broadcastBarber", id = RouteParameter.Optional }

          );
            config.Routes.MapHttpRoute(
              name: "booksetting",
              routeTemplate: "api/booksetting",
              defaults: new { controller = "Barber", action = "saveBookSetting", id = RouteParameter.Optional }

          );
            config.Routes.MapHttpRoute(
              name: "getbooksetting",
              routeTemplate: "api/getbooksetting",
              defaults: new { controller = "Barber", action = "getBookSetting", id = RouteParameter.Optional }

          );
            config.Routes.MapHttpRoute(
              name: "requestedbook",
              routeTemplate: "api/requestedbook",
              defaults: new { controller = "Barber", action = "getRequestedBook", id = RouteParameter.Optional }

          );
            config.Routes.MapHttpRoute(
              name: "barberbookinfo",
              routeTemplate: "api/barberbookinfo",
              defaults: new { controller = "Barber", action = "getBarberBookInfo", id = RouteParameter.Optional }

          );

            //Formatters
            config.Formatters.JsonFormatter.SupportedMediaTypes.Add(new MediaTypeHeaderValue("text/html"));
            //config.Formatters.JsonFormatter.SupportedMediaTypes.Add(new MediaTypeHeaderValue("multipart/form-data"));

            config.Formatters.JsonFormatter.SerializerSettings.ReferenceLoopHandling = Newtonsoft.Json.ReferenceLoopHandling.Ignore;

        }
    }
}
