using System;
using System.Collections.Generic;
using System.IO;
using System.Text;

namespace ConsoleApplication1
{
    class Class1
    {
        static void Main()
        {
            try
            {
                StreamReader f = new StreamReader("text.txt");
                string s;
                long i = 0;

                while ((s = f.ReadLine()) != null)
                    Console.WriteLine("{0}: {1}", ++i, s);
                f.Close();
                Console.ReadLine();
            }

            catch (FileNotFoundException e)
            {
                Console.WriteLine(e.Message);
                Console.WriteLine("Проверьте правильность имени файла");
                return;
            }

            catch (Exception e)
            {
                Console.WriteLine("Error: " + e.Message);
                return;
            }

        }
    }
}
