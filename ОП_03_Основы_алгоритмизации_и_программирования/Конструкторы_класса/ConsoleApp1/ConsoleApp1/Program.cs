using System;

namespace ConsoleApp1
{
    // 2.1. Student с стандартным конструктором
    public class StudentC2
    {
        public string name;

        public StudentC2()
        {
            name = "Неизвестно";
        }
    }

    // 2.2. Child с открытым стандартным конструктором
    public class ChildC2
    {
        public int age;

        public ChildC2()
        {
            age = 0;
        }
    }

    // 2.3 и 2.4. Car с разными конструкторами
    public class CarC2
    {
        public int year;
        public string name;
        public string color;

        // Конструктор с годом выпуска
        public CarC2(int y)
        {
            year = y;
        }

        // Конструктор с именем и цветом
        public CarC2(string n, string c)
        {
            name = n;
            color = c;
        }
    }

    // 2.5. Product с защищенным полем и конструктором копирования
    public class ProductC2
    {
        protected string name;

        public ProductC2(string n)
        {
            name = n;
        }

        public ProductC2(ProductC2 other)
        {
            name = other.name;
        }
    }

    // 2.6. Person с закрытым полем и стандартным конструктором
    public class PersonC2
    {
        private int age;

        public PersonC2()
        {
            age = 18;
        }

        public void Print()
        {
            Console.WriteLine($"Возраст: {age}");
        }
    }

    // 2.7. Manager с закрытыми полями и конструктором копирования
    public class ManagerC2
    {
        private int age;
        private string name;

        public ManagerC2(int a, string n)
        {
            age = a;
            name = n;
        }

        public ManagerC2(ManagerC2 other)
        {
            age = other.age;
            name = other.name;
        }

        public int GetAge() => age;
        public string GetName() => name;
    }

    // Главная программа
    internal class Program
    {
        static void Main(string[] args)
        {
            // 2.1. Student
            StudentC2 student = new StudentC2();
            Console.WriteLine($"Student name: {student.name}");

            // 2.2. Child
            ChildC2 child1 = new ChildC2();
            ChildC2 child2 = new ChildC2();
            Console.WriteLine($"Child1 age: {child1.age}, Child2 age: {child2.age}");

            // 2.3 и 2.4. Car
            CarC2 lada = new CarC2("LADA VESTA", "black");
            CarC2 bmw = new CarC2("BMW X5", "white");
            CarC2 carWithYear = new CarC2(2022);
            Console.WriteLine($"Car lada: {lada.name}, {lada.color}");
            Console.WriteLine($"Car bmw: {bmw.name}, {bmw.color}");
            Console.WriteLine($"Car year: {carWithYear.year}");

            // 2.5. Product
            ProductC2 product1 = new ProductC2("Товар1");
            ProductC2 product2 = new ProductC2(product1); // копирование
            Console.WriteLine("Создан объект Product с копированием");

            // 2.6. Person
            PersonC2 person = new PersonC2();
            person.Print(); // Выведет: Возраст: 18

            // 2.7. Manager
            ManagerC2 manager1 = new ManagerC2(20, "Дамир");
            ManagerC2 manager2 = new ManagerC2(18, "Сара");
            Console.WriteLine($"{manager1.GetName()} - {manager1.GetAge()}");
            Console.WriteLine($"{manager2.GetName()} - {manager2.GetAge()}");
        }
    }
}