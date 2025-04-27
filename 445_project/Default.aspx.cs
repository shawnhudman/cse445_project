using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ProjectUtilities;
using System.Net.Http;
using _445_project;
    //  <<- helpers live here


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
            Response.Redirect("~/StaffPages/Staff.aspx");
        }

        protected void getContents_bt_Click(object sender, EventArgs e)
        {
            WebDownload.Service1Client prxy = new WebDownload.Service1Client();
            fullWebData_tb.Text = (prxy.WebDownload(url_tb.Text)).ToString();
        }

        protected void getJson_bt_Click(object sender, EventArgs e)
        {
            string url = "http://webstrar58.fulton.asu.edu/page3/Service1.svc";
            string targetUrl = occurencesInput_tb.Text.Trim();
            Console.WriteLine("Input received: " + targetUrl);
            url += $"WordCount?file={targetUrl}";
            var channel = new HttpClient { BaseAddress = new Uri(url) };
            HttpResponseMessage response = channel.GetAsync("").Result;
            string xml = response.Content.ReadAsStringAsync().Result;
            var doc = new System.Xml.XmlDocument();
            doc.LoadXml(xml);
            json_tb.Text = doc.InnerText;
        }

        protected void filter_bt_Click(object sender, EventArgs e)
        {
            WordFilter.Service1Client prxy = new WordFilter.Service1Client();
            filteredText_tb.Text = (prxy.WordFilter(unfilteredText_tb.Text)).ToString();
        }

        //-------------------------------------------
        //  NEW HANDLERS
        //-------------------------------------------

        // SHA-256 Hash
        protected void btnHash_Click(object sender, EventArgs e)
        {
           lblHash.Text = Encryption.HashString(hashInput_tb.Text ?? string.Empty);
        }

        // Reverse Text (local ASMX)
        protected void btnReverse_Click(object sender, EventArgs e)
        {
            var svc = new ReverseText();
            lblReverseResult.Text = svc.Reverse(reverseInput_tb.Text ?? string.Empty);
        }
        
        // Word Count
        protected void btnWordCount_Click(object sender, EventArgs e)
        {
            int count = Utilities.WordCount(wordCountInput_tb.Text ?? string.Empty);
            lblWordCount.Text = count.ToString();
        }
    }
}