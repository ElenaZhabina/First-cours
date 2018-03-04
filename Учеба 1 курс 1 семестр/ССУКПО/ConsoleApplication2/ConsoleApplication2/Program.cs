using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace ConsoleApplication2
{
    class Program
    {
        static void Main(string[] args)
        {
            string str = "привет мир";
            char[] m = str.ToCharArray();

            for (int i = 0; i < m.Length - 1; i += 2)
            {

                char tmp1 = m[i];
                char tmp2 = m[i + 1];

                m[i] = tmp2;
                m[i + 1] = tmp1;

            }
            Console.ReadKey();
            
        }
    }
}
