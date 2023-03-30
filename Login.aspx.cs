using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;
using Models;
using System.Web.Security;
using System.Data;

namespace EngHouse
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["UserName"] = "";
            Session["UserID"] = "";
        }

        protected void LoginBtn_Click(object sender, EventArgs e)
        {
            //if(AdminCb.Checked)
            //{
            //    if(UserTb.Value=="admin" && PasswordTb.Value == "1")
            //    {
            //        Session["UserName"] = "admin";
            //        Session["UserID"] = "1";
            //        Response.Redirect("Admin/Default.aspx");
            //    }
            //    else
            //    {
            //        UserValid.ErrorMessage = "please enter admin";
            //    }
            //} else if(UserCb.Checked)
            //{
                UserInfo userInfo = new UserInfo();
                userInfo.UserName = UserTb.Value.Trim();
                userInfo.UserPwd = FormsAuthentication.HashPasswordForStoringInConfigFile(PasswordTb.Value.Trim(),"md5");
                DataTable dt = UserInfoManager.IsLoginSuccess(userInfo);

                if (dt != null && dt.Rows.Count == 1) {
                    Session["UserID"] = dt.Rows[0][0].ToString();
                    Session["UserName"] = UserTb.Value.Trim();
                    FormsAuthentication.RedirectFromLoginPage(UserTb.Value.Trim(), true);
                }
                else
                {
                    Response.Write("<script>alert('Wrong username or password');</script>");

                }


            //} else
            //{
            //    ErrMsg.InnerText="choose admin or user account";
            //}
        }
    }
}