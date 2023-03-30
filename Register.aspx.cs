using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;
using Models;
using System.Web.Security;

namespace EngHouse
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SubmitBtn_Click(object sender, EventArgs e)
        {
            UserInfo userInfo = new UserInfo();
            userInfo.UserName = this.UserTb.Value.Trim();
            userInfo.UserPwd = FormsAuthentication.HashPasswordForStoringInConfigFile(this.PasswordTb.Value.Trim(),"md5");
            userInfo.Email = this.EmailTb.Value.Trim();
            userInfo.Phone = this.PhoneTb.Value.Trim();
            userInfo.CreateTime = DateTime.Now;
            if (UserInfoManager.setRegisterData(userInfo) == 1)
            {
                Response.Redirect("Default.aspx");
            }
        }
    }
}