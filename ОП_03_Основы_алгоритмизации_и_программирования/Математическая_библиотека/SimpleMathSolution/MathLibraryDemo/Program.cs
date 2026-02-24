using System;
using SimpleMathLibrary;

namespace MathLibraryDemo
{
    class Program
    {
        static void Main(string[] args)
        {
            int a = 10;
            int b = 5;

            Console.WriteLine("Демонстрация работы математической библиотеки");
            Console.WriteLine("---------------------------------------------");

            Console.WriteLine($"Сложение: {a} + {b} = {MathOperations.Add(a, b)}");
            Console.WriteLine($"Вычитание: {a} - {b} = {MathOperations.Subtract(a, b)}");
            Console.WriteLine($"Умножение: {a} * {b} = {MathOperations.Multiply(a, b)}");
            Console.WriteLine($"Деление: {a} / {b} = {MathOperations.Divide(a, b)}");

            Console.ReadLine();
        }
    }
}