using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using VzyatkiVRF.Models;

namespace VzyatkiVRF.Forms {
    public partial class ShowComplaint : System.Web.UI.Page {
        protected void Page_Load ( object sender, EventArgs e ) {
            int Complaintid = Int32.Parse(Request.QueryString["id"]);
            VzyatkiContext context = new VzyatkiContext();
            Complaint compl = context.Complaints.Find(Complaintid);
            ComplTheme.Text = compl.Title;
            TB_Description.Text = compl.Text;
            DATA.Text = compl.Date.ToShortDateString().ToString();
            CTG.Text = compl.Category.CategoryName;
        }

        protected void BTP_Click ( object sender, EventArgs e ) {
            
        }
    }
}