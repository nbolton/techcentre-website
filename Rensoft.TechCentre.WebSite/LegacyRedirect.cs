using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

namespace Rensoft.TechCentre.WebSite
{
    public class LegacyRedirect
    {
        private string oldPageName;
        private string newPageUrl;

        public string OldPageName
        {
            get { return oldPageName; }
            set { oldPageName = value; }
        }

        public string NewPageUrl
        {
            get { return newPageUrl; }
            set { newPageUrl = value; }
        }

        public LegacyRedirect(string oldPageUrl, string newPageName)
        {
            this.oldPageName = oldPageUrl;
            this.newPageUrl = newPageName;
        }

        public static LegacyRedirect[] GetLegacyRedirects()
        {
            return new LegacyRedirect[] {
                new LegacyRedirect("/About/MeetTheTeam.aspx", "~/Team/Default.aspx"),
                new LegacyRedirect("/About.aspx", "~/About/Default.aspx"),
                new LegacyRedirect("/AntiVirus.aspx", "~/BusinessUsers/AntiVirus.aspx"),
                new LegacyRedirect("/Audit.aspx", "~/BusinessUsers/Default.aspx"),
                new LegacyRedirect("/Broadband.aspx", "~/BusinessUsers/Default.aspx"),
                new LegacyRedirect("/CableNetworks.aspx", "~/BusinessUsers/Networking.aspx"),
                new LegacyRedirect("/Careers.aspx", "~/About/Default.aspx"),
                new LegacyRedirect("/Computers.aspx", "~/BusinessUsers/Default.aspx"),
                new LegacyRedirect("/DomainChecker.aspx", "~/DomainChecker/Default.aspx"),
                new LegacyRedirect("/HealthCheck.aspx", "~/HomeUsers/Default.aspx"),
                new LegacyRedirect("/Hosting.aspx", "~/DomainChecker/Default.aspx"),
                new LegacyRedirect("/Legal.aspx", "~/TermsAndConditions.aspx"),
                new LegacyRedirect("/Networks.aspx", "~/BusinessUsers/Networking.aspx"),
                new LegacyRedirect("/NewSystems.aspx", "~/BusinessUsers/Default.aspx"),
                new LegacyRedirect("/Privacy.aspx", "~/PrivacyPolicy.aspx"),
                new LegacyRedirect("/Recovery.aspx", "~/DataRecovery/Default.aspx"),
                new LegacyRedirect("/Remote.aspx", "~/BusinessUsers/Default.aspx"),
                new LegacyRedirect("/Remotepass.aspx", "~/RemoteAssistance/Default.aspx"),
                new LegacyRedirect("/Repairs.aspx", "~/BusinessUsers/Default.aspx"),
                new LegacyRedirect("/Search.aspx", "~/Default.aspx"),
                new LegacyRedirect("/Telephones.aspx", "~/BusinessUsers/Default.aspx"),
                new LegacyRedirect("/Terms.aspx", "~/TermsAndConditions.aspx"),
                new LegacyRedirect("/Testimonials.aspx", "~/Default.aspx"),
                new LegacyRedirect("/Upgrades.aspx", "~/BusinessUsers/Default.aspx"),
                new LegacyRedirect("/ViewStory.aspx", "~/Default.aspx"),
                new LegacyRedirect("/VPN.aspx", "~/BusinessUsers/Networking.aspx"),
                new LegacyRedirect("/WebDesign.aspx", "~/BusinessUsers/Default.aspx"),
                new LegacyRedirect("/Whois.aspx", "~/DomainChecker/Default.aspx"),
                new LegacyRedirect("/WirelessNetworks.aspx", "~/HomeUsers/Default.aspx")
            };
        }

        internal bool Matches(string requestUrl)
        {
            return requestUrl.ToLower().StartsWith(oldPageName.ToLower());
        }
    }
}
