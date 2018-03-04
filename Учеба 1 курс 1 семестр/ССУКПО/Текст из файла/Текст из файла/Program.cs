using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace ConsoleApplication1
{
    class Program
    {
        static void Main(string[] args)
        {
            string line;
            // Read the file and display it line by line.
            System.IO.StreamReader file =

            new System.IO.StreamReader(@"C:\1.txt");
            string sent = "";
            bool qw = true;
            while ((line = file.ReadLine()) != null)
            {
                for (int i = 0; i < line.Length; i++)
                {
                    if (line[i] == ' ' && sent == "")
                        sent = "";
                    else
                        sent += line[i];
                    if (line[i] == ',')
                        qw = false;
                    if (line[i] == '.')
                    {
                        if (qw)
                            Console.WriteLine(sent);
                        sent = "";
                        qw = true;
                    }
                }
            }
            if (qw)
                System.Console.WriteLine(sent);
            file.Close();
            Console.ReadLine();
        }
    }
}
