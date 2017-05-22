using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using VzyatkiVRF.Models;

namespace VzyatkiVRF.Forms {
    public partial class AddForm : System.Web.UI.Page {
        protected void Page_Load ( object sender, EventArgs e ) {

        }

        protected void Page_Init ( object sender, EventArgs e ) {
            ScriptManager.ScriptResourceMapping.AddDefinition("jquery", new ScriptResourceDefinition {
                Path = "~/scripts/jquery-1.7.2.min.js",

            });
            VzyatkiContext context = new VzyatkiContext();
            Category[] categories = context.Categories.ToArray<Category>();
            SelectList.DataSource = categories;
            SelectList.DataTextField = "CategoryName";
            SelectList.DataBind();
        }

        protected void BNB_Click ( object sender, EventArgs e ) {
            if (IsValid) {

                VzyatkiContext context = new VzyatkiContext();
                Complaint compl = new Complaint();
                Category[] categories = context.Categories.ToArray<Category>();
                compl.Category = categories[SelectList.SelectedIndex];

                compl.BrideSize = Int32.Parse(ComplSum.Text);
                compl.Checked = false;
                compl.Date = DateTime.Now;
                compl.Title = ComplTheme.Text;
                compl.Text = TB_Description.Text;
                context.Complaints.Add(compl);
                context.SaveChanges();
                Response.Redirect("Main.aspx");
            }
        }

        protected void SelectList_SelectedIndexChanged ( object sender, EventArgs e ) {

        }

        protected void SelectList_SelectedIndexChanged1 ( object sender, EventArgs e ) {

        }
    }
}