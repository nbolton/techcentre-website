using System;
using System.Collections.Generic;
using System.Text.RegularExpressions;

namespace Rensoft.TechCentre.Domains
{
    public class DomainName
    {
        private string original;

        public string Original
        {
            get
            {
                if (string.IsNullOrEmpty(original))
                {
                    return string.Empty;
                }

                return original;
            }
        }

        public string CleanDomain
        {
            get
            {
                if (string.IsNullOrEmpty(original))
                {
                    return string.Empty;
                }

                string[] domainParts = original.Split('.');

                if ((domainParts[0] == "www") && (domainParts.Length == 1))
                {
                    throw new Exception("A clean domain cannot comprise of only 'www'.");
                }

                List<string> finalParts = new List<string>();
                foreach (string part in domainParts)
                {
                    if (part != "www")
                    {
                        finalParts.Add(part.Trim());
                    }
                }
                return string.Join(".", finalParts.ToArray());
            }
        }

        public string Tld
        {
            get
            {
                if (string.IsNullOrEmpty(CleanDomain))
                {
                    return string.Empty;
                }

                string[] domainParts = CleanDomain.Split('.');

                List<string> partList = new List<string>();
                for (int i = 1; i < domainParts.Length; i++)
                {
                    // Use all parts but the first.
                    partList.Add(domainParts[i]);
                }
                return "." + string.Join(".", partList.ToArray());
            }
        }

        public string WithoutTld
        {
            get { return CleanDomain.Split('.')[0]; }
        }

        public bool LengthValid
        {
            get { return CleanDomain.Length >= 2; }
        }

        public bool CharsValid
        {
            get { return Regex.Match(WithoutTld, @"^([a-zA-Z0-9]+-{0,1})+[a-zA-Z0-9]+$").Success; }
        }

        public DomainName(string fullDomain)
        {
            this.original = fullDomain;
        }
    }
}