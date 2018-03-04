using System;


namespace ConsoleApplication1
{
    class Class1
    {
        static void Main()
        {
            //string s = "прекрасная королева Изольда";
            string s = Console.ReadLine();
            Console.WriteLine(s);
            string sub = s.Substring(3).Remove(12,2); //1
            Console.WriteLine( sub);

            string[] mas = s.Split(' ');
            string joined = string.Join("!", mas);     //2
            Console.WriteLine(joined);

            Console.WriteLine("Введите строку");
            string x = Console.ReadLine();
            Console.WriteLine("Вы ввели строку  " + x);    //3

            double a =12.234;
            int b = 29;
            Console.WriteLine( " a={0,6:C} b={1,2:X}",a,b);  //4
            Console.ReadLine();
           
        
        }
    }
}
