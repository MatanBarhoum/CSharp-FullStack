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
    public class EmpRepository
    {

        private SqlConnection con;
        private SqlCommand com;

        private void connection()
        {
            string constr = ConfigurationManager.ConnectionStrings["getconn"].ToString();
            con = new SqlConnection(constr);


        }

        public string AddComputerShutdown(Shutdown Emp)
        {
            connection();
            com = new SqlCommand("INSERT INTO [Shutdown] values(@DateTime, @ComputerName, @month, @year, @hours)", con);
            com.Parameters.AddWithValue("@DateTime", Emp.shutdown);
            com.Parameters.AddWithValue("@ComputerName", Emp.ComputerName);
            com.Parameters.AddWithValue("@month", Emp.Month);
            com.Parameters.AddWithValue("@year", Emp.Year);
            com.Parameters.AddWithValue("@hours", Emp.TotalHours);

            con.Open();
            int i = com.ExecuteNonQuery();
            con.Close();
            if (i >= 1)
            {
                return "New Computer Added To ShutDown Successfully";

            }
            else
            {
                return "Computer Not Added";

            }
        }
    }
}