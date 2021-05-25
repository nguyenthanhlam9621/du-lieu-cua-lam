using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace baitap2
{
    class Program
    {/// <summary>
    /// <param name="args">day la commet</param>
    /// <returns>tra ve comment</returns>
    /// </summary>
    /// <remarks>nhan xet ve comment </remarks>
        static void Main(string[] args)
        {
            int StudentID = 1,age=18;
            float Percentage = 75.50f;
            string StudenName="David George";
            char Genden ='M';

            Console.WriteLine($"Student ID :{StudentID}\nStudent Name : {StudenName}\nAge : {age}\nGender : {Genden}\nPercentage : {Percentage}");
        }
    }
}
