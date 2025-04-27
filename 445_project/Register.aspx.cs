using ProjectUtilities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Script.Serialization;
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

            var recaptcha = Request.Form["g-recaptcha-response"];
            if(!VerifyCaptcha(recaptcha))
            {
                lblError.Text = "Please verify captcha";
                return;
            }

            string xmlFilePath = Server.MapPath("~/App_Data/Members.xml");
            XDocument xmlDoc = XDocument.Load(xmlFilePath);

            string username = textUsername.Text;

            string hashedPassword = Encryption.Encrypt(textPassword.Text);

            xmlDoc.Root.Add(new XElement("Member", new XElement("Username", username), new XElement("PasswordHash", hashedPassword)));
            xmlDoc.Save(xmlFilePath);

            Response.Redirect("SignIn.aspx");
        }

        private bool VerifyCaptcha(string captcha)
        {
            using(var client = new WebClient())
            {
                var reply = client.DownloadString($"https://www.google.com/recaptcha/api/siteverify?secret=6LceoyYrAAAAAMCq7gCCDEWEbLIZNjF4N7_Glp8U&response={captcha}");

                var jsSerializer = new JavaScriptSerializer();
                dynamic json = jsSerializer.DeserializeObject(reply);

                return json["success"] == true;
            }
        }
    }
}