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

namespace Rensoft.TechCentre.WebSite.RemoteAssistance
{
    public partial class Default : System.Web.UI.Page
    {
        //private const string remotepassUrl = "http://setup.remotepass.com/enterkey.aspx?key={0}";
        private const string remotepassUrl = "https://www.fastsupport.com/{0}";

        protected void OkButton_Click(object sender, EventArgs e)
        {
            Response.Redirect(string.Format(remotepassUrl, KeyTextBox.Text));
        }
    }
}
