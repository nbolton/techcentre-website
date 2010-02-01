using System;
using System.Text.RegularExpressions;

namespace Rensoft.TechCentre.Domains
{
    /// <summary>
    /// Stores the result of a search query.
    /// </summary>
    public class DomainQueryResult
    {
        /// <summary>
        /// Available or registered (default 0).
        /// </summary>
        private DomainAvailability availability = 0;
        private string domainName;
        private bool highlight = false;
        private string resultHtml;

        /// <summary>
        /// Availability for page binding.
        /// </summary>
        public DomainAvailability Availability
        {
            get { return availability; }
            set { availability = value; }
        }

        /// <summary>
        /// Fully qualified domain name for page binding.
        /// </summary>
        public string DomainName
        {
            get { return domainName; }
            set { domainName = value; }
        }

        /// <summary>
        /// Highlight the domain name for page binding.
        /// </summary>
        public bool Highlight
        {
            get { return highlight; }
            set { highlight = value; }
        }

        /// <summary>
        /// Returns a string representation of the availability.
        /// </summary>
        public string AvailabilityString
        {
            get
            {
                switch (availability)
                {
                    case DomainAvailability.Available:
                        return "Available";

                    case DomainAvailability.Registered:
                        return "Registered";

                    case DomainAvailability.Unknown:
                        return "Unknown";
                }

                return null;
            }
        }

        /// <summary>
        /// When this value is set, most HTML formatting is removed
        /// from the string. This is to produce a clear output.
        /// </summary>
        public string ResultHtml
        {
            get
            {
                return resultHtml;
            }
            set
            {
                if (value != null)
                {
                    if (Query.Match != null)
                    {
                        resultHtml = Query.Match.Replace(value, Query.MatchReplace);
                    }
                    else
                    {
                        resultHtml = value;
                    }

                    // Remove specific HTML tags.
                    resultHtml = Regex.Replace(resultHtml,
                        "</?(?i:a|input|form)[^>]*>", String.Empty,
                        RegexOptions.IgnoreCase | RegexOptions.Singleline);
                }
            }
        }

        public DomainQuery Query;

        /// <summary>
        /// If the domain is registered, a link will be shown to view
        /// extra details about the registrant.
        /// </summary>
        public bool DetailsVisible
        {
            get
            {
                if ((availability == DomainAvailability.Registered) ||
                    (availability == DomainAvailability.Unknown))
                {
                    return true;
                }
                return false;
            }
        }

        /// <summary>
        /// Initialize a new DomainResult.
        /// </summary>
        /// <param name="domainName">Fully qualified domain name.</param>
        /// <param name="availability">Availability of the domain.</param>
        public DomainQueryResult(string domainName, DomainAvailability availability,
            DomainQuery query)
        {
            this.domainName = domainName;
            this.availability = availability;
            this.ResultHtml = null;
            this.Query = query;
        }
    }
}