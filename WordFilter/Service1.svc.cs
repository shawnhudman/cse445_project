using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.ServiceModel.Web;
using System.Text;

namespace WordFilter
{
    // NOTE: You can use the "Rename" command on the "Refactor" menu to change the class name "Service1" in code, svc and config file together.
    // NOTE: In order to launch WCF Test Client for testing this service, please select Service1.svc or Service1.svc.cs at the Solution Explorer and start debugging.
    public class Service1 : IService1
    {
        public string WordFilter(string str)
        {
            //list of words to remove, modify as wanted
            string[] stopWords = { "a", "an", "in", "on", "the", "is", "are", "am", "and", "or", "but", "to" };

            //use string builder to build result
            var filteredText = new StringBuilder();

            //get all words from input into array
            string[] allWords = str.Split(' ');

            for (int i = 0; i < allWords.Length; i++)
            {
                //if word is not stopword, build string with that word
                if (!stopWords.Contains(allWords[i].ToLower()))
                {
                    filteredText.Append(allWords[i]).Append(" "); //add spaces in between
                }
            }
            filteredText.Length--; //removes the final space at the end


            return filteredText.ToString();
        }
    }
}
