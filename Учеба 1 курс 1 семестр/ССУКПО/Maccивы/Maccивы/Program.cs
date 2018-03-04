using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace matrix
{
    class Program
    {
        // функция, возвращающая новый одномерный
        public static int[] returnArray()
        {
            Random r = new Random();    // создание экземпляра для генерации случайных чисед
            int x = r.Next(2, 10);      // количество строк двумерного массива
            int y = r.Next(2, 10);      // количество столбцов
            int[,] array = new int[x, y];
            // заполнение двемерного массива случайными числами            
            for (int i = 0; i < x; i++)
                for (int j = 0; j < y; j++)
                    array[i, j] = r.Next(1, 10);

            // печать матрицы
            Console.WriteLine("Исходная матрица: \n");
            for (int i = 0; i < x; i++)
            {
                for (int j = 0; j < y; j++)
                    Console.Write(array[i, j].ToString() + " ");
                Console.WriteLine();
            }
            // инициализация результирующе матрицы
            int[] returnedArray = new int[x];
            for (int i = 0; i < returnedArray.Length; i++)
                returnedArray[i] = 1;

            int tmp = 1;        // временная переменная для храненя проезведения элементов строки
            // добавление новых значений в результирующий массив
            for (int i = 0; i < x; i++)
            {
                tmp = 1;
                for (int j = 0; j < y; j++)
                {
                    tmp *= array[i, j];
                }
                returnedArray[i] = tmp;
            }
            // печать результирующей матрицы
            Console.WriteLine("\n\nРезультирующая матрица имеет вид:\n");
            for (int i = 0; i < returnedArray.Length; i++)
                Console.Write(returnedArray[i].ToString() + " ");

            return returnedArray;
        }
        static void Main(string[] args)
        {
            // вызов метода
            returnArray();
            Console.ReadKey();
        }
    }
           
         
        }
    

