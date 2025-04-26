using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Threading.Tasks;

namespace ProjectUtilities
{
    public static class Encryption
    {
        public static string Encrypt(string passwordRaw)
        {
            var sha = SHA256.Create();
            var hash = sha.ComputeHash(Encoding.UTF8.GetBytes(passwordRaw));

            return Convert.ToBase64String(hash);
        }

        public static bool Verify(string password, string hash)
        {
            return Encrypt(password) == hash;
        }

        public static string HashString(string input)
        {
            if (input == null) return null;

            using (SHA256 sha = SHA256.Create())
            {
                byte[] bytes = sha.ComputeHash(Encoding.UTF8.GetBytes(input));
                return BitConverter.ToString(bytes).Replace("-", "").ToLowerInvariant();
            }
        }
    }

    public static class Utilities
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
