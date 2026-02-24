using System;

namespace ConsoleApp1
{
    // 5.1. Strategy с виртуальным методом Display
    public class Strategy
    {
        public virtual void Display()
        {
            Console.WriteLine("Strategy");
        }
    }

    // 5.2. Weather с виртуальным методом Show
    public class Weather
    {
        public virtual void Show()
        {
            Console.WriteLine("My Weather");
        }
    }

    // 5.3. Strategy и ConservativeStrategy
    public class ConservativeStrategy : Strategy
    {
        public override void Display()
        {
            Console.WriteLine("Conservative Strategy");
        }
    }

    // 5.4. Animal и Cat
    public class Animal
    {
        private string type;

        public Animal()
        {
            type = "My Type";
        }

        public virtual void Print()
        {
            Console.WriteLine(type);
        }
    }

    public class Cat : Animal
    {
        private int age;

        public Cat()
        {
            age = 5;
        }

        public override void Print()
        {
            Console.WriteLine(age);
        }
    }

    // 5.5. Абстрактный класс Entity
    public abstract class Entity
    {
        public abstract void Display();
    }

    // 5.6. Product наследуется от Entity
    public class Product : Entity
    {
        public override void Display()
        {
            Console.WriteLine("My Product");
        }
    }

    // 5.7. Интерфейс IPrintable
    public interface IPrintable
    {
        void Display();
    }

    public class ConsolePrinting : IPrintable
    {
        public void Display()
        {
            Console.WriteLine("My Console");
        }
    }

    // Главная программа
    internal class Program
    {
        static void Main(string[] args)
        {
            // 5.1
            Strategy strategy = new Strategy();
            strategy.Display();

            // 5.2
            Weather weather = new Weather();
            weather.Show();

            // 5.3 (полиморфизм)
            Strategy conservative = new ConservativeStrategy();
            conservative.Display();

            // 5.4
            Animal animal = new Animal();
            Animal cat = new Cat();

            animal.Print();
            cat.Print();

            // 5.6 (абстрактный класс)
            Product product = new Product();
            product.Display();

            // 5.7 (интерфейс)
            ConsolePrinting printer = new ConsolePrinting();
            printer.Display();
        }
    }
}