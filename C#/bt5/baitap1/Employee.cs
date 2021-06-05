using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace baitap1
{
    abstract class Employee
    {
        public string SSN { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public DateTime BirthDate { get; set; }
        public string Phone { get; set; }
        public string Email { get; set; }

        public Employee()
        {
            Console.WriteLine("ham khoi tao cua employee");
        }
        public Employee(string SSN,string FirstName,string LastName,DateTime BirthDate,string Phone,string Email)
        {
            this.SSN = SSN;
            this.FirstName = FirstName;
            this.LastName = LastName;
            this.BirthDate = BirthDate;
            this.Phone = Phone;
            this.Email = Email;
        }
        public virtual void Display()
        {
            Console.WriteLine($"{SSN}\t {FirstName} {LastName}\t" + BirthDate.ToString("dd-MM-yyyy") + $"\tphone:{Phone}\t\t{Email}");
        }
        public abstract string ToString();

    }
}
