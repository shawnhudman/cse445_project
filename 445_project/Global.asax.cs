using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Optimization;
using System.Web.Routing;
using System.Web.Security;
using System.Web.SessionState;

namespace _445_project
{
    public class Global : HttpApplication
    {
        void Application_Start(object sender, EventArgs e)
        {
            // Code that runs on application startup
            RouteConfig.RegisterRoutes(RouteTable.Routes);
            BundleConfig.RegisterBundles(BundleTable.Bundles);

            // intialize active user count to 0
            Application["UserCount"] = 0;

        }

        void Session_Start(object sender, EventArgs e)
        {
            Application["UserCount"] = (int)Application["UserCount"] + 1; 
        }

        void Session_End(object sender, EventArgs e)
        {
            Application["UserCount"] = (int)Application["UserCount"] - 1;
        }
    }
}