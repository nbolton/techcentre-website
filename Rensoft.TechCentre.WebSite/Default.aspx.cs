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
using System.Net.Mail;
using Rensoft.TechCentre.WebSite.Properties;
using System.Net;
using System.Collections.Generic;

namespace Rensoft.TechCentre.WebSite
{
    public partial class Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!string.IsNullOrEmpty(Request.QueryString["TestError"]))
            {
                throw new Exception("Test exception.");
            }

            if (!IsPostBack)
            {
                NewsletterMultiView.SetActiveView(NewsletterStartView);
            }

            ((RootMaster)Master).Description =
                "IT support when you need it most. TechCentre is a " +
                "Microsoft Gold Certified Partner specialising in IT " +
                "support, disaster recovery and data recovery.";

            string[] randomSplashes = new string[] {
                "~/Images/Home/HomeBusinessGrow.jpg",
                "~/Images/Home/HomeDepartmentSupport.jpg",
                "~/Images/Home/HomeFastKnowledge.jpg",
                "~/Images/Home/HomeNeedMost.jpg",
                "~/Images/Home/HomeRespondedPrompty.jpg",
                "~/Images/Home/HomeTrustWithIT.jpg",
                "~/Images/Home/HomeExtraMile.jpg",
                "~/Images/Home/HomeProfessional.jpg",
                "~/Images/Home/HomeSchedule.jpg"
            };

            Random random = new Random(Environment.TickCount);
            string randomSplash = randomSplashes[random.Next(0, randomSplashes.Length)];
            SplashLayer.Style["background-image"] = ResolveUrl(randomSplash);
        }

        protected void NewsletterButton_Click(object sender, EventArgs e)
        {
            SmtpClient client = new SmtpClient(
                Settings.Default.SmtpServer, Settings.Default.SmtpPort);

            client.Credentials = new NetworkCredential(
                Settings.Default.SmtpUsername, Settings.Default.SmtpPassword);

            MailMessage message = new MailMessage(
                NewsletterTextBox.Text.Trim(),
                Settings.Default.NewsletterSubscribeEmail);

            message.Subject = "Newsletter Subscription";

            client.Send(message);

            NewsletterMultiView.SetActiveView(NewsletterFinishView);
        }
    }
}
