using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace ConsoleApplication2
{
    class Program
    {
       
static void Main()
        {
            string str = "дана строка, в которой содержится осмысленное текстовое сообщение. Привет";
            var msv = str.Split(new char[] { ' ', ',', '.', '!', '?', '-' }).Where(x => x.Length == 6).ToArray();
            foreach (var item in msv)
            {
                Console.WriteLine(item);
            }
            Console.ReadKey();
        
        }
    }
}
