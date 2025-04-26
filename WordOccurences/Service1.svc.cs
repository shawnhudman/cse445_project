using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.ServiceModel.Web;
using System.Text;

namespace WordOccurences
{
    // NOTE: You can use the "Rename" command on the "Refactor" menu to change the class name "Service1" in code, svc and config file together.
    // NOTE: In order to launch WCF Test Client for testing this service, please select Service1.svc or Service1.svc.cs at the Solution Explorer and start debugging.
    public class Service1 : IService1
    {
        public string WordCount(string file)
        {
            //Dictionary similar to map to get word and associated counts
            Dictionary<string, int> wordsxCounts = new Dictionary<string, int>();

            string json = "";

            //empty file means empty json
            if (string.IsNullOrEmpty(file))
            {
                json = "{}";
            }

            //make array of jsut words, ignoring possible empty or blanks
            string[] allWords = file.Split(' ');

            //calculate counts fo each word in the array
            foreach (string word in allWords)
            {
                string lowercaseWord = word.ToLower();
                if (wordsxCounts.ContainsKey(lowercaseWord)) //if word appears again
                {
                    wordsxCounts[lowercaseWord]++;
                }
                else //if it is the word's first appearance
                {
                    //create entry in dictionary with count 1
                    wordsxCounts[lowercaseWord] = 1;
                }
            }

            //creating the json
            json = "{";
            bool firstEntry = true;
            foreach (KeyValuePair<string, int> wordxCount in wordsxCounts) //loop through every entry 
            {
                if (!firstEntry) //used for handling commas
                {
                    json += ",";
                }

                //Print each entry of json with escape ""s
                json += $"\"{wordxCount.Key}\":{wordxCount.Value}";

                firstEntry = false;
            }
            json += "}";

            return json;
        }
    }
}
