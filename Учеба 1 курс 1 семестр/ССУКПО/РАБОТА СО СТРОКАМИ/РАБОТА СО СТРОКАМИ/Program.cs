using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Laba_3
{
    class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("ПРЕОБРАЗОВАНИЕ СТРОК СИМВОЛОВ");
            int number = 0; //номер задания

            do
            {

                Console.WriteLine("Введите номер задачи (если конец работы, то введите 0):");
                number = Convert.ToInt32(Console.ReadLine());

                switch (number)
                {
                    case (1):
                        {
                            Console.WriteLine("Введите строку десятичных цифр");
                            string numerics = Console.ReadLine(); //введенная строка                          
                            numerics.Trim(); //удаляем пробелы с концов строки
                            string[] temp = numerics.Split(' '); //разбиваем строку на массив строк (раздлеяем по пробелу)

                            Array.Sort(temp); //сортируем массив темп (пустые строки сверху)
                            Array.Reverse(temp); //переворачиваем массив
                            int i;
                            for (i = 0; i < temp.Length; i++)
                            {
                                if (temp[i].Length == 0) //ищем первую пустую строку и запоминаем её номер
                                {
                                    break;
                                }
                            }

                            Array.Resize(ref temp, i); //меняем размер массива temp

                            double[] num = new double[temp.Length]; //создаем новый числовой массив

                            i = 0;
                            foreach (string t in temp) //идем по массиву temp и заполняем массив num
                            {
                                num[i] = Convert.ToDouble(t);
                                i++;
                            }

                            Array.Sort(num); //сортируем массив num по возрастанию
                            foreach (double d in num)
                            {
                                Console.WriteLine(d); //выводим на экран
                            }


                            break;
                        }
                    case (2):
                        {
                            Console.WriteLine("Введите строку слов");
                            string myString = Console.ReadLine(); //введенная строка                          
                            myString.Trim(); //удаляем пробелы с концов строки
                            string[] temp = myString.Split(' ', ',', '.'); //разбиваем строку на массив строк (раздлеяем по пробелу запятой и точке)

                            //ищем пустые слова (они есть из-за того - что после запятой ставится пробел обычно) и вырезаем их из массива temp
                            for (int j = 0; j < temp.Length; j++)
                            {
                                if (temp[j].Length == 0)
                                {
                                    for (int k = j; k < temp.Length - 1; k++)
                                    {
                                        temp[k] = temp[k + 1];
                                    }
                                    Array.Resize(ref temp, temp.Length - 1);
                                }
                            } //


                            Console.WriteLine("А) Введите длину слова:");
                            int i = 0;
                            i = Convert.ToInt32(Console.ReadLine());

                            Console.WriteLine("Всего слов в строке {0}", temp.Length);
                            Console.WriteLine("Из них с длиной {0}:", i);

                            bool isLengthi = false; //на случай если слов не будетс заданной длиной

                            foreach (string t in temp) //выводим слова с длинной i
                            {
                                if (t.Length == i)
                                {
                                    Console.WriteLine(t);
                                    isLengthi = true;
                                }
                            }//                            

                            if (isLengthi == false)//...
                            {
                                Console.WriteLine("Отсутствуют");
                            }

                            bool isLongUWord = false; //есть ли длинное слово на букуву У?
                            Console.WriteLine("Б) Самое длинное слово на букву \"у\": ");

                            int[] U = new int[temp.Length];//храним длины слов на букву У
                            for (int j = 0; j < temp.Length; j++) //выводим слова с длинной i
                            {
                                if (temp[j][temp[j].Length - 1] == 'у')
                                {
                                    U[j] = temp[j].Length;
                                    isLongUWord = true;
                                }
                            }//

                            Array.Sort(U);//сортируем по возрастанию
                            Array.Reverse(U); //максимальная длина должна быть сверху

                            foreach (string t in temp)
                            {
                                if (isLongUWord == false) //если нету то выходим
                                {
                                    Console.WriteLine("Отсутствуют");
                                    break;
                                }
                                else if ((t.Length == U[0]) && (t[temp.Length - 1] == 'у')) //если есть то выводим
                                {
                                    Console.WriteLine(t);
                                }

                            }

                            Console.WriteLine("Исключаем все слова с буквой \"а\" и остается:");

                            for (int j = 0; j < temp.Length; j++) //идем по массиву исходной строки
                            {
                                char[] word = temp[j].ToCharArray(); //разделяем каждое слово на массив символов
                                foreach (char w in word) //идем по каждой букве в слове
                                {
                                    if ((w == 'а') || (w == 'А')) //если видим "а"
                                    {
                                        for (int k = j; k < temp.Length - 1; k++)//знакомая процедура смещения элементов массива влево
                                        {
                                            temp[k] = temp[k + 1];
                                        }
                                        Array.Resize(ref temp, temp.Length - 1);
                                        j--; //возварщаяемся к слову с тем же номером, потому что было смещение слов
                                        break;
                                    }
                                }
                            }

                            foreach (string t in temp)
                            {
                                Console.Write("{0} ", t); //выводим остатки
                            }
                            Console.WriteLine();

                            break;
                        }
                    default:
                        {
                            number = 0;
                            break;
                        }
                }
            } while (number > 0);
        }
    }
}

