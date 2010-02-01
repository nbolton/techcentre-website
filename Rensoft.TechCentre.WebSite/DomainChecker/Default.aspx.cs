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
using System.Text;
using Rensoft.TechCentre.Domains;
using Rensoft.TechCentre.WebSite.Properties;

namespace Rensoft.TechCentre.WebSite.DomainChecker
{
    public partial class Default : System.Web.UI.Page
    {
        private DomainSecret secret;

        public Default()
        {
            secret = new DomainSecret();
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            StringBuilder builder = new StringBuilder();
            builder.Append("if (typeof(Page_ClientValidate) == 'function') { ");
            builder.Append("if (Page_ClientValidate() == false) { return false; }} ");
            builder.Append("this.value = 'Checking...';");
            builder.Append("this.disabled = true;");
            builder.Append(ClientScript.GetPostBackEventReference(CheckButton, null));
            builder.Append(";");
            CheckButton.Attributes.Add("onclick", builder.ToString());

            if (!IsPostBack)
            {
                MultiView.SetActiveView(StartView);
            }
        }

        protected void CheckButton_Click(object sender, EventArgs e)
        {
            DomainSearch checker = new DomainSearch(
                DomainTextBox.Text, Settings.Default.DomainCheckerSleep);

            if (!checker.DomainName.LengthValid)
            {
                MultiView.SetActiveView(LengthErrorView);
            }
            else if (!checker.DomainName.CharsValid)
            {
                MultiView.SetActiveView(CharsErrorView);
            }
            else
            {
                MultiView.SetActiveView(ResultsView);
                ResultRepeater.DataSource = checker.SearchVariants();
                ResultRepeater.DataBind();
            }
        }

        protected void SearchAgain_Click(object sender, EventArgs e)
        {
            MultiView.SetActiveView(StartView);
        }

        protected void RetryLinkButton1_Click(object sender, EventArgs e)
        {
            MultiView.SetActiveView(StartView);
        }

        protected void RetryLinkButton2_Click(object sender, EventArgs e)
        {
            MultiView.SetActiveView(StartView);
        }

        protected void ResultRepeater_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {
            DomainQueryResult result = e.Item.DataItem as DomainQueryResult;
            HyperLink DetailsHyperLink = e.Item.FindControl("DetailsHyperLink") as HyperLink;
            Label DomainNameLabel = e.Item.FindControl("DomainNameLabel") as Label;
            Label AvailabilityLabel = e.Item.FindControl("AvailabilityLabel") as Label;

            DetailsHyperLink.NavigateUrl = string.Format(
                "~/DomainChecker/DomainWhois.aspx?DomainName={0}&DomainKey={1}",
                result.DomainName, secret.GenerateKey(result.DomainName)
            );

            DomainNameLabel.CssClass = getNameStyle(result.Highlight);
            AvailabilityLabel.CssClass = getAvailabilityStyle(result.Availability);
        }

        private string getAvailabilityStyle(DomainAvailability availability)
        {
            switch (availability)
            {
                case DomainAvailability.Available:
                    return "domainCheckerAvailable";

                case DomainAvailability.Registered:
                    return "domainCheckerRegistered";

                case DomainAvailability.Unknown:
                    return "domainCheckerRegistered";

                default:
                    return string.Empty;
            }
        }

        private string getNameStyle(bool highlight)
        {
            if (highlight)
            {
                return "domainCheckerHighlight";
            }
            else
            {
                return string.Empty;
            }
        }
    }
}
