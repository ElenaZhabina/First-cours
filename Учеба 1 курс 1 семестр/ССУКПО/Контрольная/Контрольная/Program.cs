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
            Console.WriteLine("Вводите предложения по одному, завершая ввод нажатием Enter. Программа будет возвращать введенное предложение, если оно не со" +
"держит запятых, и не будет возвращать ничего в ином случае. Для выхода введите exit.");

            string line;
            string sent = "";
            bool qw = true;
            while ((line = Console.ReadLine()) != null)
            {
                sent = "";
                qw = true;
                if (String.Compare(line, "выход") == 0) break;
                for (int i = 0; i < line.Length; i++)
                {
                    sent += line[i];
                    if (line[i] == ',')
                        qw = false;
                    if (i + 1 == line.Length)
                    {
                        if (qw)
                            Console.WriteLine(sent);
                    }
                }
            }
            if (qw)
                System.Console.WriteLine(sent);
            Console.ReadLine();
        }
    }
}
