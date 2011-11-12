using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

namespace Rensoft.TechCentre.WebSite
{
    public partial class ContentLoader : System.Web.UI.UserControl
    {
        private const string dir = "Content";

        public string Filename;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(Filename))
            {
                throw new ArgumentNullException("filename");
            }

            string path = MapPath(dir + Path.DirectorySeparatorChar + Filename);
            string text;

            if (File.Exists(path))
            {
                FileStream stream = File.OpenRead(path);
                StreamReader reader = new StreamReader(stream);
                text = reader.ReadToEnd();
                stream.Close();
            }
            else
            {
                // user error; don't throw.
                text = "<p>The required content file has been removed or does not exist.</p>";
            }

            ContentLiteral.Text = text;
        }
    }
}