using System;

namespace ConsoleApp1
{
    // 3.1. Класс Student со строковым автосвойством Name
    public class Student
    {
        public string Name { get; set; }
    }

    // 3.2. Класс Child с открытым стандартным конструктором
    public class Child
    {
        public int Age { get; set; }

        public Child()
        {
        }
    }

    // 3.3. Класс Car с полем и свойством с проверкой
    public class Car
    {
        private int year;   // закрытое поле

        public int Year    // открытое свойство
        {
            get { return year; }
            set
            {
                if (value > 0)   // разрешены только положительные числа
                {
                    year = value;
                }
            }
        }

        public Car()   // стандартный конструктор
        {
        }
    }

    // 3.4. Класс Car2 с автосвойствами
    public class Car2
    {
        public string Name { get; set; }
        public string Color { get; set; }

        public Car2()
        {
        }
    }

    // 3.5. Класс Product с защищённым полем и свойством только для чтения
    public class Product
    {
        protected string name;

        public string Name
        {
            get { return name; }   // только чтение
        }

        public Product()
        {
            name = "Рамиль";
        }
    }

    // Главная программа
    internal class Program
    {
        static void Main(string[] args)
        {
            // 3.1. Student
            Student student = new Student();
            student.Name = "Алия";
            Console.WriteLine($"Student name: {student.Name}");

            // 3.2. Child (создание двух экземпляров с инициализацией)
            Child child1 = new Child { Age = 5 };
            Child child2 = new Child { Age = 8 };
            Console.WriteLine($"Child1 age: {child1.Age}, Child2 age: {child2.Age}");

            // 3.3. Car с проверкой значения Year
            Car car = new Car();
            car.Year = 2022;
            Console.WriteLine($"Car year: {car.Year}");

            // 3.4. Car2 с объектной инициализацией
            Car2 kia = new Car2
            {
                Name = "KIA SOUL",
                Color = "green"
            };
            Console.WriteLine($"Car: {kia.Name}, Color: {kia.Color}");

            // 3.5. Product
            Product product = new Product();
            Console.WriteLine($"Product name: {product.Name}");
        }
    }
}