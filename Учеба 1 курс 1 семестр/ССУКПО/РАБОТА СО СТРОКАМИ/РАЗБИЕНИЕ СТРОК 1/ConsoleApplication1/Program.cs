using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace ConsoleApplication1
{
    class Program
    {
        static void Main()
        {
            
            string poems = Console.ReadLine();
            char[] div = { ' ' }; //создаем массив разделителей
            // Разбиваем строку на части,
            string[] parts = poems.Split(div);
            Console.WriteLine("Результат разбиения строки на части: ");
            for (int i = 0; i < parts.Length; i++)
                Console.WriteLine(parts[i]);
            // Теперь собираем эти части в одну строку, в качестве разделителя используем символ |
            string whole = String.Join(" | ", parts);
            Console.WriteLine("Результат сборки: ");
            Console.WriteLine(whole);
            Console.ReadLine();
        }

    }
}
