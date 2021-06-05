using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Text.RegularExpressions;
using System.Threading.Tasks;

namespace baitap1
{
    class Program
    {
        static void Main(string[] args)
        {
            List<Employee> employees = new List<Employee>();
            
            menu:

            Console.WriteLine("\n=========Assignment 05-EmployeeManagement");
            Console.WriteLine("1.Import Emplooyee.");
            Console.WriteLine("2.Display Employees Information.");
            Console.WriteLine("3.Search Employee.");
            Console.WriteLine("4.Exit");
            int choice;
            do
            {
                Console.WriteLine("Enter Menu Option Number:");
               
            } while (!int.TryParse(Console.ReadLine(),out choice)||choice<1||choice>4);

            switch (choice)
            {
                case 1:
                    import:
                    Console.WriteLine("\n========Import Employee========");
                    Console.WriteLine("1.Salaried Employee.");
                    Console.WriteLine("2.Hourly Employee.");
                    Console.WriteLine("3.Main Menu.");
                    int choice1;
                    do
                    {
                        Console.WriteLine("Enter Menu Option Number:");
                    } while (!int.TryParse(Console.ReadLine(),out choice1)||choice1<1||choice1>4);
                    switch (choice1)
                    {
                        case 1:
                            Console.WriteLine("nhap SSN nhan vien:");
                            string ssn = Console.ReadLine();
                            Console.WriteLine("nhap First Name:");
                            string fname = Console.ReadLine();
                            Console.WriteLine("nhap Last Name:");
                            string lname = Console.ReadLine();
                            //nhap dinh dang date time
                            string dstring;
                            DateTime dt;
                            do
                            {
                                Console.WriteLine("nhap sinh nhat(dd/mm/yyyy):");
                                dstring = Console.ReadLine();

                            } while (!Regex.IsMatch(dstring, @"^\d{2}\/\d{2}\/\d{4}$"));
                            dt = DateTime.ParseExact(dstring, "dd/MM/yyyy", null);
                            
                            //nhap dinh dang so
                            string number;
                            do
                            {
                                Console.WriteLine("nhap so dien thoai toi thieu 7 so");
                                number = Console.ReadLine();

                            } while (!Regex.IsMatch(number, @"^\d{7,}"));
                            
                            //dinh dang email
                            string email;

                            do
                            {
                                Console.WriteLine("nhap email :");
                                email = Console.ReadLine();
                            } while (!Regex.IsMatch(email, @"^[A-Za-z0-9]+@[A-Za-z]+\.[A-Za-z]+$"));

                            double salarybasic;
                            do
                            {
                                Console.WriteLine("nhap tien luong co ban:");
                            } while (!double.TryParse(Console.ReadLine(), out salarybasic));

                            double commissionrate;
                            do
                            {
                                Console.WriteLine("nhap ty le hoa hong(commission rate):");
                            } while (!double.TryParse(Console.ReadLine(), out commissionrate));

                            employees.Add(new SalariedEmployee(ssn, fname, lname, dt, number, email, salarybasic, commissionrate));

                            Console.WriteLine("Import employee successfully!");

                            goto import;
                
                        case 2:
                            Console.WriteLine("nhap SSN nhan vien:");
                            string ssn1 = Console.ReadLine();
                            Console.WriteLine("nhap First Name:");
                            string fname1 = Console.ReadLine();
                            Console.WriteLine("nhap Last Name:");
                            string lname1 = Console.ReadLine();
                            //nhap dinh dang date time
                            string dstring1;
                            DateTime dt1;
                            do
                            {
                                Console.WriteLine("nhap sinh nhat(dd/mm/yyyy):");
                                dstring1 = Console.ReadLine();

                            } while (!Regex.IsMatch(dstring1, @"^\d{2}\/\d{2}\/\d{4}$"));
                            dt1 = DateTime.ParseExact(dstring1, "dd/MM/yyyy", null);

                            //nhap dinh dang so
                            string number1;
                            do
                            {
                                Console.WriteLine("nhap so dien thoai toi thieu 7 so");
                                number1 = Console.ReadLine();

                            } while (!Regex.IsMatch(number1, @"^\d{7,}"));

                            //dinh dang email
                            string email1;

                            do
                            {
                                Console.WriteLine("nhap email :");
                                email1 = Console.ReadLine();
                            } while (!Regex.IsMatch(email1, @"^[A-Za-z0-9]+@[A-Za-z]+\.[A-Za-z]+$"));

                            double workinghour;
                            do
                            {
                                Console.WriteLine("nhap so gio lam viec");
                            } while (!double.TryParse(Console.ReadLine(),out workinghour));

                            employees.Add(new HourlyEmployee(ssn1,fname1,lname1,dt1,number1,email1,workinghour));

                            Console.WriteLine("Import employee successfully!");

                            goto import;

                        case 3:

                            goto menu;
                           
                    }
                    break;
                case 2:
                    Console.WriteLine("\nList of employees general information: \n");
                    foreach (var i in employees)
                    {
                        i.Display();
                    }
                    goto menu;
                   
                case 3:
                    search:
                    Console.WriteLine("\n=========Search Employee=========");
                    Console.WriteLine("1.By Employee Type.");
                    Console.WriteLine("2.By Employee Name.");
                    Console.WriteLine("3.Main menu.");
                    int choice2;
                    do
                    {
                        Console.WriteLine("Enter Menu Option Number:");
                    } while (!int.TryParse(Console.ReadLine(), out choice2) || choice2 < 1 || choice2 > 4);
                    switch (choice2) 
                    {
                        case 1:
                            Console.WriteLine("Enter Employee Type: ");
                            string type = Console.ReadLine();
                            if (type.ToUpper().Equals("HOURLY"))
                            {
                                Console.WriteLine("SSN\tFirstName\tLastName\tBirthDate\tPhone\tEmail\t\t\tWage\tWorkingHour");
                                foreach (var i in employees)
                                {
                                    Console.WriteLine(i.ToString());
                                }
                            }
                            else if (type.ToUpper().Equals("SALARIED"))
                            {
                                Console.WriteLine("SSN\tFirstName\tLastName\tBirthDate\tPhone\tEmail\t\tCommmissionRate\tGrossSales\tBasicSalary");
                                foreach (var i in employees)
                                {
                                    Console.WriteLine(i.ToString());
                                }
                            }
                            goto search;
                            break;
                        case 2:
                            Console.WriteLine("Enter employee name: ");
                            string firstName = Console.ReadLine();
                            bool find = false;
                            foreach (var e in employees)
                            {
                                if (e.FirstName.Equals(firstName))
                                {
                                    e.Display();
                                    find = true;
                                }
                            }
                            if (!find)
                            {
                                Console.WriteLine($"Cannot find employee name \"{firstName}\" in employees list!");
                            }
                            break;
                        case 3:
                            goto menu;
                    }
                    break;
                case 4:
                    
                    break;
            }

            Console.ReadKey();
        }
    }
}
