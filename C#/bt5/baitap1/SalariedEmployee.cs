using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace baitap1
{
    class SalariedEmployee:Employee
    {
        public double CommissionRate { get; set; }
        public double GrossSales;
        public double BasicSalary { get; set; }

        public SalariedEmployee(string SSN,string FirstName,string LastName, DateTime BirthDate, string Phone, string Email,double BasicSalary,double CommissionRate) :base(SSN,FirstName, LastName,BirthDate, Phone, Email)
        {
            this.BasicSalary = BasicSalary;
            this.CommissionRate = CommissionRate;
            GrossSales = BasicSalary * CommissionRate;
        }
        
        public override string ToString()
        {
            return SSN + "\t" + FirstName + "\t\t" + LastName + "\t\t" +
                   BirthDate.ToString("dd-MM-yyyy") + "\t" + Phone + "\t" + Email + "\t" +
                   CommissionRate + "\t\t\t" + GrossSales + " " + BasicSalary;
        }
    }
}
