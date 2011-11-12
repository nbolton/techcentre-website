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
using Rensoft.TechCentre.WebSite.Menu;

namespace Rensoft.TechCentre.WebSite
{
    public partial class RootMaster : MasterPage
    {
        public string Description
        {
            set { descriptionMeta.Content = value; }
            get { return descriptionMeta.Content; }
        }

        public HtmlGenericControl Body
        {
            get { return bodyTag; }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            initializeMenu();
        }

        private void initializeMenu()
        {
            MenuDropDown businessUsers = new MenuDropDown(
                "businessUsers", "Business Users", "~/BusinessUsers/Default.aspx");

            MenuDropDown homeUsers = new MenuDropDown(
                "homeUsers", "Home Users", "~/HomeUsers/Default.aspx");

            MenuDropDown disasterRecovery = new MenuDropDown(
                "disasterRecovery", "Disaster Recovery", "~/DisasterRecovery/Default.aspx");

            MenuDropDown dataRecovery = new MenuDropDown(
                "dataRecovery", "Data Recovery", "~/DataRecovery/Default.aspx");

            MenuDropDown remoteAssistance = new MenuDropDown(
                "remoteAssistance", "Remote Assistance", "~/RemoteAssistance/Default.aspx");

            MenuDropDown domainChecker = new MenuDropDown(
                "domainChecker", "Domain Checker", "~/DomainChecker/Default.aspx");

            MenuDropDown charity = new MenuDropDown(
                "charity", "Charity", "~/Charity/Default.aspx");

            businessUsers.Items.AddRange(
                new MenuDropDownItem[] {
                    new MenuDropDownItem("backup", "Backup", "~/BusinessUsers/Backup.aspx"),
                    new MenuDropDownItem("antiVirus", "Anti-Virus", "~/BusinessUsers/AntiVirus.aspx"),
                    new MenuDropDownItem("networking", "Networking", "~/BusinessUsers/Networking.aspx"),
                }
            );

            MainMenu.DropDowns.AddRange(
                new MenuDropDown[] {
                    businessUsers, 
                    homeUsers, 
                    disasterRecovery,
                    dataRecovery,
                    remoteAssistance,
                    domainChecker,
                    charity
                }
            );
        }
    }
}
