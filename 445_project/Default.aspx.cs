using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ProjectUtilities;

namespace _445_project
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnShowUsers(object sender, EventArgs e)
        {
            var userCount = 0;

            if (Application["UserCount"] != null)
            {
                userCount = (int)Application["UserCount"];
            }

            lblActiveUsers.Text = userCount.ToString();
        }

        protected void btnEncrypt(object sender, EventArgs e)
        {
            string decrypted = passwordInputTextBox.Text;
            string encrypted = Encryption.Encrypt(decrypted);
            Application["TempHash"] = encrypted;

            lblEncrypted.Text = encrypted + " was saved.";
        }

        protected void btnVerify(object sender, EventArgs e)
        {
            string pasword = passwordInputTextBox.Text;
            string hashToCompare = Application["TempHash"] as string;

            if(hashToCompare != null && (Encryption.Verify(pasword, hashToCompare))) {
                lblVerifyResult.Text = "Verified!";
                return;
            }

            lblVerifyResult.Text = "Not Verified";
        }

        protected void btnCallWebService(object sender, EventArgs e)
        {
            var service = new WebService1();
            string text = InputTextBox.Text;
            string findWord = findTextBox.Text;
            string replaceWord = ReplaceTextBox.Text;

            string response = service.FindAndReplace(text, findWord, replaceWord);

            lblWebServiceResult.Text = response;
        }

        protected void btnLogInClick(object sender, EventArgs e)
        {
            Response.Redirect("~/Members.aspx");
        }

        protected void btnStaffLogInClick(object sender, EventArgs e)
        {
            Response.Redirect("~/Staff.aspx");
        }
    }
}