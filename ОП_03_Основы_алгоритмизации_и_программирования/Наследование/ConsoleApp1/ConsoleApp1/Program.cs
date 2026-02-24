using System;

namespace ConsoleApp1
{
    // 4.1. Person – базовый класс, Student – дочерний
    public class Person
    {
        public string Name { get; set; }
    }

    public class Student : Person
    {
        public string University { get; set; }
    }

    // 4.2. Animal – родительский, Cat и Dog – дочерние
    public class Animal
    {
        public virtual void Speak()
        {
            Console.WriteLine("Животное издает звук");
        }
    }

    public class Cat : Animal
    {
        public override void Speak()
        {
            Console.WriteLine("Кошка говорит: Мяу");
        }
    }

    public class Dog : Animal
    {
        public override void Speak()
        {
            Console.WriteLine("Собака говорит: Гав");
        }
    }

    // 4.3. Entity – базовый, Product – производный
    public class Entity
    {
        public int Id { get; set; }
    }

    public class Product : Entity
    {
        public string Name { get; set; }
    }

    // 4.4. Dishes – родительский, Cup – дочерний
    public class Dishes
    {
        public string Material { get; set; }
    }

    public class Cup : Dishes
    {
        public double Volume { get; set; }
    }

    // 4.5. Entity → Staff → Manager (многоуровневое наследование)
    public class EntityBase
    {
        public int Id { get; set; }
    }

    public class Staff : EntityBase
    {
        public string Position { get; set; }
    }

    public class Manager : Staff
    {
        public int Level { get; set; }
    }

    // 4.6. Animal – родительский, Predator – дочерний
    public class Animal2
    {
        protected int age;  // доступен в Animal2 и Predator

        public Animal2(int a)
        {
            age = a;
        }

        public int GetAge()
        {
            return age;
        }
    }

    public class Predator : Animal2
    {
        public Predator(int a) : base(a)
        {
        }

        public void ShowAge()
        {
            Console.WriteLine($"Возраст хищника: {age}");
        }
    }

    // 4.7. Transport – базовый, SpaceShuttle – дочерний
    public class Transport
    {
        private string name;   // инкапсулированное поле

        public string Name
        {
            get { return name; }
            set { name = value; }
        }
    }

    public class SpaceShuttle : Transport
    {
        public void Launch()
        {
            Console.WriteLine($"Космический шаттл {Name} запущен!");
        }
    }

    // Главная программа
    internal class Program
    {
        static void Main(string[] args)
        {
            // 4.1
            Student student = new Student
            {
                Name = "Алия",
                University = "КНУ"
            };
            Console.WriteLine($"{student.Name} учится в {student.University}");

            // 4.2 (полиморфизм)
            Animal cat = new Cat();
            Animal dog = new Dog();
            cat.Speak();
            dog.Speak();

            // 4.3
            Product product = new Product { Id = 1, Name = "Ноутбук" };
            Console.WriteLine($"Product: {product.Id}, {product.Name}");

            // 4.4
            Cup cup = new Cup { Material = "Стекло", Volume = 0.3 };
            Console.WriteLine($"Cup: {cup.Material}, {cup.Volume} л");

            // 4.5
            Manager manager = new Manager
            {
                Id = 10,
                Position = "Руководитель",
                Level = 2
            };
            Console.WriteLine($"Manager ID: {manager.Id}, Position: {manager.Position}, Level: {manager.Level}");

            // 4.6
            Predator predator = new Predator(5);
            predator.ShowAge();

            // 4.7
            SpaceShuttle shuttle = new SpaceShuttle();
            shuttle.Name = "Discovery";
            shuttle.Launch();
        }
    }
}