using ProjectUtilities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace _445_project
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegisterClick(object sender, EventArgs e)
        {
            lblError.Text = string.Empty;

            string xmlFilePath = Server.MapPath("~/App_Data/Members.xml");
            XDocument xmlDoc = XDocument.Load(xmlFilePath);

            string username = textUsername.Text;

            string hashedPassword = Encryption.Encrypt(textPassword.Text);

            xmlDoc.Root.Add(new XElement("Member", new XElement("Username", username), new XElement("PasswordHash", hashedPassword)));
            xmlDoc.Save(xmlFilePath);

            Response.Redirect("SignIn.aspx");
        }
    }
}