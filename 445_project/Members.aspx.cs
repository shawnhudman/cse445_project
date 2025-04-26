using System;
using System.Collections.Generic;
using System.Linq;
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
    }
}