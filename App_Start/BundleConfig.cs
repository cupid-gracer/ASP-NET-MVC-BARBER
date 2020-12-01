using System.Web;
using System.Web.Optimization;

namespace asp_net_backend
{
    public class BundleConfig
    {
        // For more information on bundling, visit https://go.microsoft.com/fwlink/?LinkId=301862
        public static void RegisterBundles(BundleCollection bundles)
        {
            bundles.Add(new ScriptBundle("~/bundles/jquery").Include(
                        "~/Scripts/jquery-{version}.js"));

            bundles.Add(new ScriptBundle("~/bundles/jqueryval").Include(
                        "~/Scripts/jquery.validate*"));

            // Use the development version of Modernizr to develop with and learn from. Then, when you're
            // ready for production, use the build tool at https://modernizr.com to pick only the tests you need.
            bundles.Add(new ScriptBundle("~/bundles/modernizr").Include(
                        "~/Scripts/modernizr-*"));

            bundles.Add(new ScriptBundle("~/bundles/bootstrap").Include(
                      "~/Scripts/bootstrap.js"));

            bundles.Add(new StyleBundle("~/Content/css").Include(
                      "~/Content/bootstrap.css",
                      "~/Content/site.css"));
            // Theme Style
            bundles.Add(new StyleBundle("~/Theme/Material/css").Include(
                      "~/Theme/Material/css/material-dashboard*",
                      "~/Theme/Material/css/page.css",
                      "~/Theme/Material/css/tagify.css"));

            bundles.Add(new StyleBundle("~/Theme/Plugins/css").Include(
                      "~/Theme/Plugins/css/demo.css",
                      "~/Theme/Plugins/css/editor.css",
                      "~/Theme/Plugins/css/imageuploadify.min.css",
                      "~/Theme/Plugins/css/intlTelInput.css"));

            //Theme Javascript
            bundles.Add(new ScriptBundle("~/Theme/Material/js").Include(
                      "~/Theme/Material/js/core/jquery.min.js",
                      "~/Theme/Material/js/core/popper.min.js",
                      "~/Theme/Material/js/core/bootstrap-material-design.min.js",
                      "~/Theme/Material/js/plugins/perfect-scrollbar.jquery.min.js",
                      "~/Theme/Material/js/plugins/moment.min.js",
                      "~/Theme/Material/js/plugins/sweetalert2.js",
                      "~/Theme/Material/js/plugins/jquery.validate.min.js",
                      "~/Theme/Material/js/plugins/jquery.bootstrap-wizard.js",
                      "~/Theme/Material/js/plugins/bootstrap-selectpicker.js",
                      "~/Theme/Material/js/plugins/bootstrap-datetimepicker.min.js",
                      "~/Theme/Material/js/plugins/jquery.dataTables.min.js",
                      "~/Theme/Material/js/plugins/bootstrap-tagsinput.js",
                      "~/Theme/Material/js/plugins/fullcalendar.min.js",
                      "~/Theme/Material/js/plugins/jquery-jvectormap.js",
                      "~/Theme/Material/js/plugins/nouislider.min.js",
                      "~/Theme/Material/js/plugins/arrive.min.js",
                      "~/Theme/Material/js/plugins/chartist.min.js",
                      "~/Theme/Material/js/plugins/bootstrap-notify.js",
                      "~/Theme/Material/js/material-dashboard.js?v=2.1.1",
                      "~/Theme/Material/demo/demo.js",
                      "~/Theme/Material/js/settings.js",
                      "~/Theme/Material/js/tagify.js",
                      "~/Theme/Material/js/plugins/datatable.js"
                      ));

            bundles.Add(new ScriptBundle("~/Theme/Plugins/js").Include(
                "~/Theme/Plugins/js/bootstrap-fileselect.js",
                "~/Theme/Plugins/js/imageuploadify.min.js",
                "~/Theme/Plugins/js/intlTelInput.js",
                "~/Theme/Plugins/js/editor.js"
                ));
        }
    }
}
