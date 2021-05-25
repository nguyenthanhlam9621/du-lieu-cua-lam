using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace baitap2._2._1
{
    class Program
    {
        static void Main(string[] args)
        {
            int radius = 4;
            const double PI = 3.141592654;
            double circum, area;
            area = PI * radius * radius;
            circum = 2 * PI * radius;

            Console.WriteLine("Ban kinh ={0},PI={1}", radius, PI);
            Console.WriteLine("Dien tich{0}", area);
            Console.WriteLine("Chu vi {0}", circum);
            // chuong tring tinh chu vi dien tich hinh tron co ban kinh la 4
        }
    }
}
