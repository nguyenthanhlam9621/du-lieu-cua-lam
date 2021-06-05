using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace baitap1
{
    class HourlyEmployee : Employee
    {
        public double Wage;
        public double WorkingHour { get; set; }

        public HourlyEmployee(string SSN,string FirstName,string LastName, DateTime BirthDate, string Phone, string Email,double WorkingHour) : base(SSN, FirstName, LastName,BirthDate,Phone,Email) 
        {
            this.WorkingHour = WorkingHour;
            Wage = WorkingHour * 10;
        }
        public override string ToString()
        {
            return SSN + "\t" + FirstName + "\t\t" + LastName + "\t" +
                    BirthDate.ToString("dd-MM-yyyy") + "\t" + Phone + "\t" + Email + "\t\t" +
                    Wage + "\t" + WorkingHour;
        }
    }
}
