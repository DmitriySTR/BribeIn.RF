using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace test_server {
    class Program {
        static void Main ( string[] args ) {
            TestContext context = new TestContext();
            Category c = new Category();
            c.CategoryName = "Образование";
            context.Categories.Add(c);
            context.SaveChanges();
            Category[] categories = context.Categories.ToArray<Category>();
            Console.WriteLine(categories[0].CategoryName);
        }
    }
}
