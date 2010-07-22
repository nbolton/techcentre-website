using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;
using Rensoft.TechCentre.WebSite.Properties;

namespace Rensoft.TechCentre.WebSite
{
    public class Global : System.Web.HttpApplication
    {
        public Global()
        {
            this.BeginRequest += new EventHandler(Global_BeginRequest);
        }

        void Global_BeginRequest(object sender, EventArgs e)
        {
            if (checkRedirectPossible(Request.Url))
            {
                Response.Redirect(findLegacyRedirect(Request.Url).NewPageUrl);
            }
        }

        protected void Application_Error(object sender, EventArgs e)
        {
            if (checkInvalidRequest(Server.GetLastError()))
            {
                Response.Redirect("~/RequestError.aspx", true);
            }
        }

        private bool checkInvalidRequest(Exception exception)
        {
            string[] invalidRequestMessages = new string[] {
                "A potentially dangerous Request.Form value was detected",
                "A potentially dangerous Request.QueryString value was detected",
                "The state information is invalid",
                "Validation of viewstate MAC failed"
            };

            // Where any message part matches, indicate invalid request.
            foreach (string message in invalidRequestMessages)
            {
                if (exception.Message.Contains(message))
                {
                    return true;
                }
            }
            return false;
        }

        private bool checkRedirectPossible(Uri requestUri)
        {
            return (findLegacyRedirect(requestUri) != null);
        }

        private LegacyRedirect findLegacyRedirect(Uri requestUri)
        {
            foreach (LegacyRedirect redirect in LegacyRedirect.GetLegacyRedirects())
            {
                if (redirect.Matches(requestUri.AbsolutePath))
                {
                    return redirect;
                }
            }
            return null;
        }
    }
}