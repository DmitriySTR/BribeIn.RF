using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using VzyatkiVRF.Models;

namespace VzyatkiVRF.Forms {
    
    public partial class Example : System.Web.UI.Page {
  
        protected void Page_Load ( object sender, EventArgs e ) {
            VzyatkiContext context = new VzyatkiContext();
            Complaint[] complaints = context.Complaints.ToArray();
            Repeater1.DataSource = complaints;
            Repeater1.DataBind();
            
        }

        protected void BN_Click ( object sender, EventArgs e ) {
            
        }
    }
}