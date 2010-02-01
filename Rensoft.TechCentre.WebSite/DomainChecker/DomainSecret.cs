using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Security.Cryptography;
using System.Text;

namespace Rensoft.TechCentre.WebSite.DomainChecker
{
    public class DomainSecret
    {
        private const string hashSecret = "e`PwrhGUB@cj?S*LBxV2";

        public string GenerateKey(string domainName)
        {
            byte[] buffer = Encoding.ASCII.GetBytes(domainName + hashSecret);
            byte[] hash = SHA1Managed.Create().ComputeHash(buffer);
            return BitConverter.ToString(hash).Replace("-", null).ToLower();
        }

        public bool CompareKey(string domainName, string key)
        {
            return GenerateKey(domainName).Equals(key);
        }
    }
}
