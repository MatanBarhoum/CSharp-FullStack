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
    public class EmpRepository1
    {
        private SqlConnection con;
        private SqlCommand com;

        private void connection()
        {
            string constr = ConfigurationManager.ConnectionStrings["getconn"].ToString();
            con = new SqlConnection(constr);
        }

        public string AddComputerStartup(Startup Startup)
        {
            connection();
            com = new SqlCommand("INSERT INTO Startup values(@DateTime, @ComputerName, @month, @year, @hours)", con);
            com.Parameters.AddWithValue("@DateTime", Startup.startup);
            com.Parameters.AddWithValue("@ComputerName", Startup.ComputerName);
            com.Parameters.AddWithValue("@month", Startup.Month);
            com.Parameters.AddWithValue("@year", Startup.Year);
            com.Parameters.AddWithValue("@hours", Startup.TotalHours);

            con.Open();
            int i = com.ExecuteNonQuery();
            con.Close();
            if (i >= 1)
            {
                return "New Computer Added to StartUP Successfully";

            }
            else
            {
                return "Computer Not Added";

            }
        }
    }
}