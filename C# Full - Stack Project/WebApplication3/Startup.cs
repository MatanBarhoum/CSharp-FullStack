using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebApplication3
{
    public class Startup
    {
        public DateTime startup = DateTime.Now;
        public string ComputerName { get; set; }
        public string Month { get; set; }
        public string Year { get; set; }
        public float TotalHours { get; set; }
    }
}