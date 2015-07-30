using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;

namespace comp2007_lesson9_mon
{
    public class Global : System.Web.HttpApplication
    {
        protected void Application_Start(object sender, EventArgs e)
        {
        }
        protected void Application_Error(object sender, EventArgs e)
        {
            // An error has occured on a .Net page.
            var serverError = Server.GetLastError() as HttpException;

            if (null != serverError)
            {
                int errorCode = serverError.GetHttpCode();
                //if 404
                if (404 == errorCode)
                {
                    Server.ClearError();
                    Response.Redirect("/e404.aspx");
                }//throw anything else on error page
                else
                {
                    Server.ClearError();
                    // Pass the error on to the error page.
                    Server.Transfer("/error.aspx?handler=Application_Error%20-%20Global.asax", true);
                }
            }
        }
    }
}