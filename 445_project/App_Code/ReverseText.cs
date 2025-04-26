using System;
using System.Web.Services;
// ReverseText ASMX WebService: reverses input text

[WebService(Namespace = "http://tempuri.org/")]  //local url
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
public class ReverseText : WebService
{
    [WebMethod(Description = "Returns the input text reversed.")]
    public string Reverse(string input) //reverse the string
    {
        if (input == null) return null;
        char[] arr = input.ToCharArray();
        Array.Reverse(arr);
        return new string(arr); //return
    }
}
