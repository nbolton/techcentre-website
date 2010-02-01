using System;
using System.Collections;
using System.Text.RegularExpressions;
using System.Threading;
using System.Net;
using System.IO;
using System.Text;
using System.Collections.Generic;

namespace Rensoft.TechCentre.Domains
{
    /// <summary>
    /// Checks for the availability of a domain name.
    /// </summary>
    public class DomainSearch
    {
        private DomainName domainName;
        private int checkInterval;

        public DomainName DomainName
        {
            get { return domainName; }
        }

        /// <summary>
        /// Array of TLD to search for.
        /// </summary>
        private static readonly string[] tldArray = new string[] {
            ".im", ".co.im", ".net.im", ".org.im", ".ltd.co.im", ".plc.co.im",
            ".co.uk", ".org.uk", ".net.uk", ".ltd.uk", 
            ".com", ".net", ".info", ".org"
        };

        public bool TldValid
        {
            get
            {
                foreach (string tld in tldArray)
                {
                    if (tld == domainName.Tld)
                    {
                        return true;
                    }
                }
                return false;
            }
        }

        public DomainSearch(string domainNameText, int checkInterval)
        {
            this.domainName = new DomainName(domainNameText);
            this.checkInterval = checkInterval;
        }

        /// <summary>
        /// Searches for every variant of the domain requested.
        /// </summary>
        /// <param name="fullDomain">Full domain name includin TLD.</param>
        /// <returns>An array of domain status objects.</returns>
        public DomainQueryResult[] SearchVariants()
        {
            if (!domainName.LengthValid)
            {
                // Domain names cannot be less than 3 characters.
                throw new Exception("The domain must be three or more letters in length.");
            }

            if (!domainName.CharsValid)
            {
                throw new Exception(
                    "The domain contained invalid characters. Domain names can only contain " +
                    "letters, numbers and single hyphens (-) and cannot contain spaces.");
            }

            List<DomainQueryResult> results = new List<DomainQueryResult>();
            foreach (string tld in tldArray)
            {
                DomainQueryResult result = CheckAvailability(tld);
                if (result.DomainName == domainName.CleanDomain)
                {
                    // Highlight the domain user searched for.
                    result.Highlight = true;
                }

                // Add the result from IsAvailable.
                results.Add(result);

                // Try to avoid flooding the NS.
                Thread.Sleep(checkInterval);
            }
            return results.ToArray();
        }

        /// <summary>
        /// Search for a domain name.
        /// </summary>
        /// <param name="domain">Domain name without TLD.</param>
        /// <param name="domain">TLD to check.</param>
        /// <returns>True if the domain is available.</returns>
        public DomainQueryResult CheckAvailability(string checkTld)
        {
            // Find out the expected result, URI, type etc.
            DomainQuery query = new DomainQuery(domainName, checkTld);

            string fqdn = domainName.WithoutTld + checkTld;

            DomainQueryResult result = new DomainQueryResult(
                fqdn, DomainAvailability.Registered, query);

            string readLine = null;
            if (query.Type == DomainQueryType.Webpage)
            {
                try
                {
                    // Fetch and parse the webpage for results.
                    WebRequest request = WebRequest.Create(query.URI);
                    WebResponse response = request.GetResponse();
                    Stream stream = response.GetResponseStream();
                    Encoding encoding = Encoding.GetEncoding("utf-8");
                    StreamReader reader = new StreamReader(stream, encoding);
                    StringBuilder builder = new StringBuilder();

                    while (null != (readLine = reader.ReadLine()))
                    {
                        builder.Append(readLine);
                    }

                    result.ResultHtml = builder.ToString();
                    response.Close();
                    stream.Close();
                    reader.Close();
                }
                catch (WebException)
                {
                    // In case of any web exception, catch it silently and return.
                    result.Availability = DomainAvailability.Unknown;
                    return result;
                }
            }
            else if (query.Type == DomainQueryType.Direct)
            {
                string whoisResult;
                try
                {
                    whoisResult = WhoisResolver.Whois(domainName.WithoutTld + checkTld);
                }
                catch (Exception ex)
                {
                    whoisResult = "The domain (" + fqdn + ") reported an error: " + ex.Message;
                }
                
                // Add <pre> tags so that whitespace is wrapped.
                string format = "<pre>{0}</pre>";
                result.ResultHtml = string.Format(format, whoisResult);
            }

            if ((result.ResultHtml == null) || result.ResultHtml.Contains("Error"))
            {
                // Whois has produced an error, nothing can be done.
                result.Availability = DomainAvailability.Unknown;
                return result;
            }

            // If it does not contain the expected string, then it's been taken.
            if (result.ResultHtml.Contains(query.Expected))
            {
                result.Availability = DomainAvailability.Available;
            }

            return result;
        }
    }
}