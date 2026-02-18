using System;

namespace SimpleMathLibrary
{
    public class MathOperations
    {
        // Метод сложения
        public static int Add(int a, int b)
        {
            return a + b;
        }

        // Метод вычитания
        public static int Subtract(int a, int b)
        {
            return a - b;
        }

        // Метод умножения
        public static int Multiply(int a, int b)
        {
            return a * b;
        }

        // Метод деления
        public static double Divide(int a, int b)
        {
            if (b == 0)
            {
                throw new DivideByZeroException("Деление на ноль невозможно");
            }

            return (double)a / b;
        }
    }
}