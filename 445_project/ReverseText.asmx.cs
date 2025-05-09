﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;

namespace _445_project
{
    /// <summary>
    /// Summary description for WebService2
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    [System.Web.Script.Services.ScriptService]
    public class ReverseText : System.Web.Services.WebService
    {

        [WebMethod]
        public string Reverse(string input) //reverse the string
        {
            if (input == null) return null;
            char[] arr = input.ToCharArray();
            Array.Reverse(arr);
            return new string(arr); //return
        }
    }
}
