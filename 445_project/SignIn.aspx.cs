using ProjectUtilities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace _445_project
{
    public partial class SignIn : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogInClick(object sender, EventArgs e)
        {
            lblError.Text = string.Empty;

            string xmlFilePath = Server.MapPath("~/App_Data/Members.xml");
            XDocument xmlDoc = XDocument.Load(xmlFilePath);

            string username = textUsername.Text;

            var member = xmlDoc.Root.Elements("Member").FirstOrDefault(user => (string)user.Element("Username") == username);
            if (member == null) { lblError.Text = "Incorrect Username"; return;  }

            string storedHash = (string)member.Element("PasswordHash");
            if(!Encryption.Verify(textPassword.Text, storedHash))
            {
                lblError.Text = "Incorrect Password";
                return;
            }

            FormsAuthentication.SetAuthCookie(username, false);
            Response.Redirect("Members.aspx");
        }
    }
}