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

            if(!IsPostBack)
            {
                FillMemberGrid();
            }

            int userCount = 0;

            if (Application["UserCount"] != null)
            {
                userCount = (int)Application["UserCount"];
                titleActiveUsers.InnerText = "Current Active Users: " + userCount.ToString();
            }
        }

        private void FillMemberGrid()
        {
            var path = Server.MapPath("~/App_Data/Members.xml");
            var doc = XDocument.Load(path);

            var members = doc.Root.Elements("Member").Select(member => new { Username = (string)member.Element("Username") }).ToList();

            membersGridView.DataSource = members;
            membersGridView.DataBind();
        }

        protected void btnAddAccountClick(object sender, EventArgs e)
        {
            lblResult.Text = string.Empty;

            string xmlFilePath = Server.MapPath("~/App_Data/Staff.xml");
            XDocument xmlDoc = XDocument.Load(xmlFilePath);

            string username = textUsername.Text;

            string hashedPassword = Encryption.Encrypt(textPassword.Text);

            xmlDoc.Root.Add(new XElement("Member", new XElement("Username", username), new XElement("PasswordHash", hashedPassword)));
            xmlDoc.Save(xmlFilePath);

            lblResult.Text = "Successfuly added new Staff Member.";
        }

        protected void membersGridView_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if(e.CommandName == "DeleteUser")
            {
                var path = Server.MapPath("~/App_Data/Members.xml");
                var doc = XDocument.Load(path);

                doc.Root.Elements("Member").FirstOrDefault(member => (string)member.Element("Username") == (string)e.CommandArgument).Remove();

                doc.Save(path);

                FillMemberGrid();
            }
        }
    }
}