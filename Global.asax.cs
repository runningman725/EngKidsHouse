using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;
using System.Web.UI;

namespace EngHouse
{
    public class Global : System.Web.HttpApplication
    {
        protected void Application_Start(object sender, EventArgs e)
        {
            ScriptManager.ScriptResourceMapping.AddDefinition("jquery", new ScriptResourceDefinition
            {
                Path = "~/scripts/jquery-3.6.4.min.js",
                DebugPath = "~/scripts/jquery-3.6.4.js",
                CdnPath = "http://ajax.microsoft.com/ajax/jQuery/jquery-1.7.2.min.js",
                CdnDebugPath = "http://ajax.microsoft.com/ajax/jQuery/jquery-1.7.2.js"
            });
        }
    }
}