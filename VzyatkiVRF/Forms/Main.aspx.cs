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
            Complaint[] complaints = context.Complaints.ToArray();
            int k = (Int32.Parse(LN.Text) - 1) * 6;
            BL1.Text = complaints[k].Title;
            TBI1.Text = complaints[k].Text;
            BL2.Text = complaints[k+1].Title;
            TBI2.Text = complaints[k+1].Text;
            BL3.Text = complaints[k+2].Title;
            TBI3.Text = complaints[k+2].Text;
            BL4.Text = complaints[k+3].Title;
            TBI4.Text = complaints[k+3].Text;
            BL5.Text = complaints[k + 4].Title;
            TBI5.Text = complaints[k + 4].Text;
            BL6.Text = complaints[k + 5].Title;
            TBI6.Text = complaints[k + 5].Text;
        }

        protected void BN_Click ( object sender, EventArgs e ) {
            VzyatkiContext context = new VzyatkiContext();
            if (context.Complaints.Count() > 6 * Int32.Parse(LN.Text)) {
                LN.Text = (Int32.Parse(LN.Text) + 1).ToString();
                Complaint[] complaints = context.Complaints.ToArray();
                int k = (Int32.Parse(LN.Text) - 1) * 6;
                BL1.Text = complaints[k].Title;
                TBI1.Text = complaints[k].Text;
                BL2.Text = complaints[k + 1].Title;
                TBI2.Text = complaints[k + 1].Text;
                BL3.Text = complaints[k + 2].Title;
                TBI3.Text = complaints[k + 2].Text;
                BL4.Text = complaints[k + 3].Title;
                TBI4.Text = complaints[k + 3].Text;
                BL5.Text = complaints[k + 4].Title;
                TBI5.Text = complaints[k + 4].Text;
                BL6.Text = complaints[k + 5].Title;
                TBI6.Text = complaints[k + 5].Text;
            }
        }
    }
}