using System;

using System.Web.Http;


namespace WebApplication3
{

    public class Global : System.Web.HttpApplication
    {

        protected void Application_Start(object sender, EventArgs e)
        {
            WebApiConfig.Register(GlobalConfiguration.Configuration);
            WebApiConfig.Register1(GlobalConfiguration.Configuration);
         
        }

     
    }
}