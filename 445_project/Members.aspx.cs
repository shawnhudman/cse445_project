using ProjectUtilities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _445_project
{
    public partial class Members : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnFindAndReplaceClick (object sender, EventArgs e)
        {
            var service = new WebService1();
            string text = textInput.Text;
            string findWord = findTextBox.Text;
            string replaceWord = ReplaceTextBox.Text;

            string response = service.FindAndReplace(text, findWord, replaceWord);

            textInput.Text = response;
        }

        protected void btnGetContentsClick (object sender, EventArgs e)
        {
            WebDownload.Service1Client prxy = new WebDownload.Service1Client();
            textInput.Text = (prxy.WebDownload(linkTextBox.Text)).ToString();
        }

        protected void btnGetWordCountClick (object sender, EventArgs e)
        {
            int count = Utilities.WordCount(textInput.Text ?? string.Empty);
            lblWordCount.Text = count.ToString();
        }

        protected void btnFilterClick (object sender, EventArgs e)
        {
            WordFilter.Service1Client prxy = new WordFilter.Service1Client();
            textInput.Text = (prxy.WordFilter(textInput.Text)).ToString();
        }

        protected void btnReverseClick(object sender, EventArgs e)
        {
            var svc = new ReverseText();
            textInput.Text = svc.Reverse(textInput.Text ?? string.Empty);
        }

        protected void btnCountEveryWordClick(object sender, EventArgs e)
        {
            string url = "http://localhost:50356/Service1.svc/";
            string targetUrl = textInput.Text.Trim();
            Console.WriteLine("Input received: " + targetUrl);
            url += $"WordCount?file={targetUrl}";
            var channel = new HttpClient { BaseAddress = new Uri(url) };
            HttpResponseMessage response = channel.GetAsync("").Result;
            string xml = response.Content.ReadAsStringAsync().Result;
            var doc = new System.Xml.XmlDocument();
            doc.LoadXml(xml);
            textJsonCount.Text = doc.InnerText;
        }
    }
}