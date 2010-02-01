using System;
using System.Text.RegularExpressions;

namespace Rensoft.TechCentre.Domains
{
    /// <summary>
    /// Holds information used to query the WHOIS.
    /// </summary>
    public struct DomainQuery
    {
        /// <summary>
        /// URI to query for the result.
        /// </summary>
        public string URI;

        /// <summary>
        /// String to look for in result (prooves availability).
        /// </summary>
        public string Expected;

        /// <summary>
        /// Type of lookup to perform.
        /// </summary>
        public DomainQueryType Type;

        /// <summary>
        /// Matches a block of text from the result.
        /// </summary>
        public Regex Match;

        /// <summary>
        /// Replaces the matching block in this format.
        /// </summary>
        public string MatchReplace;

        /// <summary>
        /// Generates the URI and expected strings.
        /// </summary>
        /// <param name="domain">Domain name without TLD.</param>
        /// <param name="tld">TLD to check for domain.</param>
        public DomainQuery(DomainName domainName, string checkTld)
        {
            URI = null;
            Expected = null;
            Type = DomainQueryType.Webpage;
            Match = null;
            MatchReplace = null;

            switch (checkTld)
            {
                case ".im":
                case ".co.im":
                case ".net.im":
                case ".org.im":
                case ".ltd.co.im":
                case ".plc.co.im":
                    URI = "https://www.nic.im/public/whois.mth?domainname="
                        + domainName.WithoutTld + checkTld;
                    Expected = "was not found";
                    MatchReplace = "<table cellpadding='2'>\r\n$1\r\n</table>";
                    Match = new Regex(
                        ".*<table[^>.]*>(.*)</table>.*</table>.*",
                        RegexOptions.IgnoreCase | RegexOptions.Singleline);
                    break;

                case ".co.uk":
                case ".org.uk":
                case ".net.uk":
                case ".ltd.uk":
                case ".plc.uk":
                    Expected = "No match";
                    Type = DomainQueryType.Direct;
                    break;

                case ".org":
                case ".info":
                    Expected = "NOT FOUND";
                    Type = DomainQueryType.Direct;
                    break;

                case ".com":
                case ".net":
                    Expected = "No match";
                    Type = DomainQueryType.Direct;
                    break;

                default:
                    throw new NotSupportedException(
                        "The TLD '" + checkTld + "' is not supported.");
            }
        }
    }
}