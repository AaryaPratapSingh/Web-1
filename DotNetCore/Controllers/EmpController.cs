using DotNetCore.Models;
using Microsoft.AspNetCore.Mvc;
using System.ComponentModel.DataAnnotations;

namespace DotNetCore.Controllers
{
    public class EmpController : Controller
    {
        public IActionResult Index()
        {
            return View();
        }
        public IActionResult About()
        {
            return View();
        }

        public IActionResult EmpData()
        {
            var e = new Employee()
            {
                id = 101,
                name = "john",
                email="john@gmail.com",
                salary=12000
            };
            return View(e);
        }

        //public IActionResult EmpWithManager()
        //{
        //    var em = new List<Employee>()
        //    {
        //        new Employee{id=101, name="John", email="john@gmail.com",salary=12000, manager=new Manager{Mname="Mohan"} },
        //        new Employee{id=102, name="Don", email="dohn@gmail.com",salary=13000,manager=new Manager{Mname="Rohan"} },
        //        new Employee{id=103, name="Mohn", email="mohn@gmail.com",salary=1000,manager=new Manager{Mname="Sohan"} },
        //        new Employee{id=104, name="Rohan", email="rohan@gmail.com",salary=120000,manager=new Manager{Mname="Dohan"} },
        //        new Employee{id=105, name="Tohn", email="tohn@gmail.com",salary=15000,manager=new Manager{Mname="Lohan"} },
        //        new Employee{id=106, name="Lohn", email="lohn@gmail.com",salary=19000,manager=new Manager{Mname="Tohan"} },
        //    };
        //    return View(em);
        //}

        public IActionResult MultiEmpData()
        {
            //var e = new List<Employee>()
            //{
            //    new Employee{id=101, name="John", email="john@gmail.com",salary=12000},
            //    new Employee{id=102, name="Don", email="dohn@gmail.com",salary=13000},
            //    new Employee{id=103, name="Mohn", email="mohn@gmail.com",salary=1000},
            //    new Employee{id=104, name="Rohan", email="rohan@gmail.com",salary=120000},
            //    new Employee{id=105, name="Tohn", email="tohn@gmail.com",salary=15000},
            //    new Employee{id=106, name="Lohn", email="lohn@gmail.com",salary=19000},
            //};
            //var m = new List<Manager>()
            //{
            //    new Manager{Mid=101, Mname="John", Memail="john@gmail.com",Msalary=12000},
            //     new Manager{Mid=102, Mname="Dohn", Memail="Dohn@gmail.com",Msalary=17000},
            //};

            //var h = new Hybrid()
            //{
            //    emps = e,
            //    mngs = m,
            //};
            return View();

        }
        public IActionResult FormData()
        {
            return View();
        }

        [HttpPost]
        public IActionResult FormData(string Emp_name, string Emp_email, double Emp_salary)
        {
            var em = new Emp()
            {
                name = Emp_name,
                email = Emp_email,
                salary = Emp_salary,
            };
            return View(em);
        }
        public string GetData(string name)
        {
            return $"HEllo{name}";
        }
        public string Add(int a, int b)
        {
            int c = a + b;
            return $"Add is {c}";
        }
    }
}
