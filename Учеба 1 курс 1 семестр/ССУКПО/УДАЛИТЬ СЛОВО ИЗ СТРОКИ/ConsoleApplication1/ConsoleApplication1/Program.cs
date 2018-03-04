
using System;
using System.Linq;
namespace ConsoleApplication {
    class Program {

        public static bool needDelWord(string word) {
            if (word.Contains('т')) {
                return true;
            } else {
                return false;
            }
        }

        private static bool isSeparator(char c)
        {
            string oneCharStr = "" + c;
            return " .,?!".Contains(oneCharStr);
        }

        public static bool isBeginOfWord(string str, int index)
        {
            if (isSeparator(str[index]))
            {                return false;            }

            if (index == 0)
            {
                return true;
            }

            if (isSeparator(str[index - 1]))
            {
                return true;
            }
            else
            {
                return false;
            }
        }

        public static int getWordLength(string str, int index)
        {
            int res = 0;
            for (int i = index; i < str.Length; i++)
            {
                if (isSeparator(str[i]))
                {
                    break;
                }
                res = res + 1;
            }
            return res;
        }
        public static void processString(ref string str)
        {
            for (int i = 0; i < str.Length; i++)
            {
                if (isBeginOfWord(str, i) == false)
                {
                    continue;
                }
                int len = getWordLength(str, i);
                string word = str.Substring(i, len);
                //Console.WriteLine(" Currentv word=" + word);
                
                if (needDelWord(word))
                {
                    
                    str = str.Remove(i, len);
                    
                }
                else
                {
                    
                    i = i + len;
                }
            }
        }
        static void Main(string[] args)
        {
            string inputStr = Console.ReadLine();
            Console.WriteLine("Строка до обработки: " + inputStr);
            processString(ref inputStr);
            Console.WriteLine("Строка после обработки: " + inputStr);
            Console.ReadKey();
        }
    }
}

    
