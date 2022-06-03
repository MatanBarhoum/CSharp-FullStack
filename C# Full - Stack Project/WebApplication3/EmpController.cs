using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using System.Web;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace WebApplication3
{   
    // ShutDown Controller Class
    public class EmpController : ApiController
    {
        //creating the object of EmpRepository class  
        static EmpRepository repository = new EmpRepository();
        public string AddComputerShutdown(Shutdown Emp)
        {
            //calling EmpRepository Class Method and storing Repsonse   
            var response = repository.AddComputerShutdown(Emp);
            return response;

        }
    }
}
