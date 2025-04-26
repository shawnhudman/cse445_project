using System;
using System.Security.Cryptography;
using System.Text;

namespace _445_project               //  ◄─ project namespace
{
    /// <summary>Utility: SHA-256 hash of a string.</summary>
    public static class HashUtility
    {
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
}
