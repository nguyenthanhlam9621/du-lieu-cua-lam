using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace bai2._3
{
    class Program
    {
        static void Main(string[] args)
        {
            const int hangso = 100;
            string StudenName;
            float math, physics, english,percent=0f;
          
            Console.WriteLine("Enter name of the student :");
            StudenName = Console.ReadLine();

            do
            {
                Console.WriteLine("Enter marks for enlish: ");
            } while (!float.TryParse(Console.ReadLine(), out english));
            do
            {
                Console.WriteLine("Enter marks for maths:");
            } while (!float.TryParse(Console.ReadLine(), out math));
            do
            {
                Console.WriteLine("Enter marks for Physical:");
            } while (!float.TryParse(Console.ReadLine(), out physics));

            percent = (math + english + physics) * hangso / 300;

            Console.WriteLine($"Student Name :{StudenName}");
            Console.WriteLine($"Marks obtained in English :{english}");
            Console.WriteLine($"Marks obtained in Maths: {math}");
            Console.WriteLine($"Marks obtained in Physical: {physics}");
            Console.WriteLine($"Percent : {percent}");

            Console.ReadKey();
        }
    }
}
