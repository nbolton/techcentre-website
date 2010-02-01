using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

namespace Rensoft.TechCentre.WebSite
{
    public partial class CustomContent : System.Web.UI.Page
    {
        const string customContentFolder = "CustomContent";
        const string paypalButtonTopMeta = "#paypal-button-top";
        const string paypalButtonBottomMeta = "#paypal-button-bottom";

        protected void Page_Load(object sender, EventArgs e)
        {
            string filename = Request.QueryString["Filename"];
            string path = MapPath(customContentFolder + Path.DirectorySeparatorChar + filename);
            string text;

            if (File.Exists(path))
            {
                FileStream stream = File.OpenRead(path);
                StreamReader reader = new StreamReader(stream);
                text = reader.ReadToEnd();
                stream.Close();

                if (text.Contains(paypalButtonTopMeta))
                {
                    text = text.Replace(paypalButtonTopMeta, null);
                    PayPalControlTop.Visible = true;
                }

                if (text.Contains(paypalButtonBottomMeta))
                {
                    text = text.Replace(paypalButtonBottomMeta, null);
                    PayPalControlBottom.Visible = true;
                }
            }
            else if (!string.IsNullOrEmpty(filename))
            {
                text = "<p>The specified file (" + filename + ") does not exist.</p>";
            }
            else
            {
                text = "<p>No custom content file name was specified.</p>";
            }

            CustomContentLiteral.Text = text;
        }
    }
}
