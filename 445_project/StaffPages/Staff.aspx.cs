using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace _445_project
{
    public partial class Staff : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!User.Identity.IsAuthenticated)
            {
                Response.Redirect("~/StaffPages/StaffSignIn.aspx");
            }

            var path = Server.MapPath("~/App_Data/Staff.xml");
            var doc = XDocument.Load(path);

            if (!doc.Root.Elements("Member").Any(user => (string)user.Element("Username") == User.Identity.Name))
            {
                Response.Redirect("~/StaffPages/StaffSignIn.aspx");
            }
        }
    }
}