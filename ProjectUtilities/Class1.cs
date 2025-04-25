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
    }
}
