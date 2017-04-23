using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using VzyatkiVRF.Models;

namespace VzyatkiVRF.Forms {
    public partial class Main : System.Web.UI.Page {
        protected void Page_Load ( object sender, EventArgs e ) {
            VzyatkiContext context = new VzyatkiContext();
            Category c = new Category();
            c.CategoryName = "Образование";
            context.Categories.Add(c);
            context.SaveChanges();
            Category[] categories = context.Categories.ToArray<Category>();
            BL1.Text = categories[0].CategoryName;
        }
    }
}