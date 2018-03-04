using System;

namespace ConsoleApplication1
{
    class Class1
    {
        static void Main()
        {
            char[] a = { 'm', 'a', 's', 's', 'i', 'v' };
            char[] b = "а роза упала на лапу азора".ToCharArray();
            PrintArray("Исходный массив a: ", a);

            int pos = Array.IndexOf(a, 'm');
            a[pos] = 'M';
            PrintArray("Измененный массив a:", a);


            PrintArray("Исходный массив b:", b);
            Array.Reverse(b);
            PrintArray("Измененный массив b:", b);
        }
        public static void PrintArray(string header,Array a)
        {
            Console.WriteLine(header);
            foreach (object x in a) Console.Write(x);
            Console.WriteLine("\n");
            Console.ReadLine();
        }
    }
}
