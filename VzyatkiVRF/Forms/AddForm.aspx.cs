using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using VzyatkiVRF.Models;

namespace VzyatkiVRF.Forms
{
    public partial class AddForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ScriptManager.ScriptResourceMapping.AddDefinition("jquery", new ScriptResourceDefinition
            {
                Path = "~/scripts/jquery-1.7.2.min.js",

            });
            VzyatkiContext context = new VzyatkiContext();
            Category[] categories = context.Categories.ToArray<Category>();
            SelectList.DataSource=categories;
            SelectList.DataTextField = "CategoryName";
            SelectList.DataBind();
        }

       

        protected void BTNAddBribe_Click ( object sender, EventArgs e ) {
            VzyatkiContext context = new VzyatkiContext();
            Complaint compl = new Complaint();
            compl.BrideSize = Int32.Parse(ComplSum.Text);
            compl.Checked = false;
            compl.Date = DateTime.Now;
            compl.Title = ComplTheme.Text;
            compl.Text = TB_Description.Text;
            context.Complaints.Add(compl);
            context.SaveChanges();
        }
    }
}