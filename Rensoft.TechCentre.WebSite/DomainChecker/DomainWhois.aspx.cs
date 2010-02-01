using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using Rensoft.TechCentre.Domains;

namespace Rensoft.TechCentre.WebSite.DomainChecker
{
    public partial class DomainWhois : System.Web.UI.Page
    {
        private DomainSecret secret;

        protected string DomainName
        {
            get { return Request.QueryString["DomainName"]; }
        }

        protected string DomainKey
        {
            get { return Request.QueryString["DomainKey"]; }
        }

        public DomainWhois()
        {
            secret = new DomainSecret();
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            // Check the key to ensure request was not automated.
            if (!string.IsNullOrEmpty(DomainName) &&
                secret.CompareKey(DomainName, DomainKey))
            {
                DomainSearch checker = new DomainSearch(DomainName, 0);
                DomainQueryResult result = checker.CheckAvailability(checker.DomainName.Tld);

                if (result.Availability == DomainAvailability.Available)
                {
                    // Try and stop 3rd parties using this service.
                    Response.Redirect("./");
                }

                ResultLabel.Text = result.ResultHtml;
                RootMultiView.SetActiveView(ResultsView);
            }
            else
            {
                RootMultiView.SetActiveView(ErrorView);
            }
        }
    }
}
