using System;

// 2.1 Student
class Student
{
    public string name;
}

// 2.2 Car
class Car
{
    public string year;
}

// 2.3 Point
class Point
{
    public string x;
}

// 2.4 Person
class Person
{
    public string age;

    public void Print()
    {
        Console.WriteLine(age);
    }
}

// 2.5 Table
class Table
{
    public string rows;
    public string cols;

    public void Display()
    {
        Console.WriteLine(rows);
        Console.WriteLine(cols);
    }
}

// 2.6 Manager
class Manager
{
    public string age;
    public string name;

    public string GetAge()
    {
        return age;
    }

    public string GetName()
    {
        return name;
    }
}

// 2.7 Point3D
class Point3D
{
    public string x;
    public string y;
    public string z;

    public void Show()
    {
        Console.WriteLine(x);
        Console.WriteLine(y);
        Console.WriteLine(z);
    }
}

// 2.8 Shop
class Shop
{
    public string name;

    public string GetName()
    {
        return name;
    }

    public void SetName(string newName)
    {
        name = newName;
    }
}

class Program
{
    static void Main()
    {
        // Student
        Student student = new Student();
        student.name = "TASK_1      Name: Ivan";
        Console.WriteLine(student.name);

        // Car
        Car car = new Car();
        car.year = "TASK_2      Year: 2020";
        Console.WriteLine(car.year);

        // Point
        Point point = new Point();
        point.x = "TASK_3      X: 5";
        Console.WriteLine(point.x);

        // Person
        Person person = new Person();
        person.age = "TASK_4      Age: 18";
        person.Print();

        // Table
        Table table = new Table();
        table.rows = "TASK_5      Rows: 3";
        table.cols = "            Cols: 4";
        table.Display();

        // Manager
        Manager manager = new Manager();
        manager.age = "TASK_6      Age: 30";
        manager.name = "            Name: Aleksei";
        Console.WriteLine(manager.GetAge());
        Console.WriteLine(manager.GetName());

        // Point3D
        Point3D point3D = new Point3D();
        point3D.x = "TASK_7      X: 1";
        point3D.y = "            X: 2";
        point3D.z = "            X: 3";
        point3D.Show();

        // Shop
        Shop shop = new Shop();
        shop.SetName("TASK_8      Shop");
        Console.WriteLine(shop.GetName());

        Console.ReadLine();
    }
}