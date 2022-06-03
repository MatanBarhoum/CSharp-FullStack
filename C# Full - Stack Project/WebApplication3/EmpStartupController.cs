using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;

namespace WebApplication3
{
    public class EmpStartupController : ApiController
    {
        static EmpRepository1 repository1 = new EmpRepository1();
            public string AddComputerStartup(Startup Startup)
           {
            //calling EmpRepository Class Method and storing Repsonse   
             var response = repository1.AddComputerStartup(Startup);
             return response;

         }
        
    }
}