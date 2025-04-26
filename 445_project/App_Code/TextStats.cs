using System;
using ProjectUtilities;
// TextStats: counts words in a string

namespace ProjectUtilities
{ 
public static class TextStats
{
    public static int WordCount(string input) //count words from string
    {
        if (string.IsNullOrWhiteSpace(input)) return 0;

        var parts = input.Trim().Split(new[] { ' ', '\t', '\r', '\n' }, //ignore spaces and other characters
                                       StringSplitOptions.RemoveEmptyEntries);
        return parts.Length;
    }
}
}
