using BLL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EngHouse
{
    public partial class MainMaster : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            WelcomeTb.InnerText = "Welcome " + Session["UserName"] + " !";
            SignoutBtn.ServerClick += new EventHandler(SignoutEvent);
            UserBtn.ServerClick += new EventHandler(UserEvent);
            if (!IsPostBack)
            {
                rpAgeCategory.DataSource = AgeCategoryManager.AgeCategory();
                rpAgeCategory.DataBind();
            }
        }

        public void SignoutEvent(object sender, EventArgs e)
        {
            if (Session["UserName"] != null)
            {
                Session["UserName"] = null;
                Session["UserID"] = null;
            }

            Response.Redirect("Login.aspx");
        }

        public void UserEvent(object sender, EventArgs e)
        {
            if(Session["UserName"] == null)
            {
                Response.Redirect("Login.aspx");
            }
            else
            {
                Response.Write("<script type='text/javascript'>;setTimeout(function(){alert('You have already logged in!')},300);</script>");

            }
        }
        
    }
}