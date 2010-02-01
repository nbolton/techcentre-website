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
using Rensoft.TechCentre.WebSite.Properties;
using System.Net.Mail;
using System.Net;

namespace Rensoft.TechCentre.WebSite
{
    public partial class Contact : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ContactMultiView.SetActiveView(ContactStartView);
            }
        }

        protected void ContactAcceptButton_Click(object sender, EventArgs e)
        {
            CaptchaControl1.ValidateCaptcha(CaptchaTextBox.Text);

            CaptchaPanel.Visible = false;
            if (!CaptchaControl1.UserValidated)
            {
                CaptchaPanel.Visible = true;
                return;
            }

            SmtpClient client = new SmtpClient(
                Settings.Default.SmtpServer, Settings.Default.SmtpPort);

            client.Credentials = new NetworkCredential(
                Settings.Default.SmtpUsername, Settings.Default.SmtpPassword);

            string bodyHtml = string.Format(
                Resources.ContactEmail,
                NameTextBox.Text,
                CompanyTextBox.Text,
                PhoneNumberTextBox.Text,
                EmailAddressTextBox.Text,
                CommentsTextBox.Text);

            MailMessage message = new MailMessage(
                Settings.Default.SmtpDefaultFrom,
                Settings.Default.ContactFormTo);

            message.Subject = "Contact Form";
            message.Body = bodyHtml;
            message.IsBodyHtml = true;

            client.Send(message);

            ContactMultiView.SetActiveView(ContactFinishView);
        }
    }
}
