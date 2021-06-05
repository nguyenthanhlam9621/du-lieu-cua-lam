using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace baitap1
{
    class HourlyEmployee : Employee
    {
        public double Wage { get; set;}
        public double WorkingHour { get; set; }
        public double tongluong;

        public HourlyEmployee(string SSN,string FirstName,string LastName, DateTime BirthDate, string Phone, string Email,double WorkingHour,double Wage) : base(SSN, FirstName, LastName,BirthDate,Phone,Email) 
        {
            this.WorkingHour = WorkingHour;
            this.Wage=Wage;
            tongluong = Wage * WorkingHour;
        }
        public override string ToString()
        {
            return SSN + "\t" + FirstName + "\t\t" + LastName + "\t\t" +
                    BirthDate.ToString("dd-MM-yyyy") + "\t" + Phone + "\t" + Email + "\t\t" +
                    Wage + "\t" + WorkingHour+$"\n tong luong: {tongluong}";
        }
    }
}
