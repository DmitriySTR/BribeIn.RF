using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using VzyatkiVRF.Models;

namespace VzyatkiVRF.Forms {
    public partial class Main : System.Web.UI.Page {
        bool predicate(Complaint c) {
            string pattern = Request.QueryString["title"];
            if (c.Title.Contains(pattern)) return true;
            return false;
        }
        private void setFileds(int k ) {
            VzyatkiContext context = new VzyatkiContext();
            Complaint[] complaints;
            string pattern = Request.QueryString["title"];
            if (Request.QueryString["title"] != null) {
                complaints = context.Complaints.Where(predicate).ToArray();
            } else complaints = context.Complaints.ToArray();
            int size = complaints.Count();
            if (k == 0) BP.Enabled = false;
            else BP.Enabled = true;
            if (k + 6 >= size) BN.Enabled = false;
            else BN.Enabled = true;
            if (k>=0 && k < size) {
                BL1.Text = complaints[k].Title;
                TBI1.Text = complaints[k].Text;
                TR1.Visible = true;
            }
            else {
                TR1.Visible = false;
            }
            if (k+1 >= 0 && k+1 < size) {
                BL2.Text = complaints[k+1].Title;
                TBI2.Text = complaints[k+1].Text;
                TR2.Visible = true;
            }
            else {
                TR2.Visible = false;
            }
            if (k+2 >= 0 && k+2 < size) {
                BL3.Text = complaints[k+2].Title;
                TBI3.Text = complaints[k+2].Text;
                TR3.Visible = true;
            }
            else {
                TR3.Visible = false;
            }
            if (k+3 >= 0 && k+3 < size) {
                BL4.Text = complaints[k+3].Title;
                TBI4.Text = complaints[k+3].Text;
                TR4.Visible = true;
            }
            else {
                TR4.Visible = false;
            }
            if (k+4 >= 0 && k+4 < size) {
                BL5.Text = complaints[k+4].Title;
                TBI5.Text = complaints[k+4].Text;
                TR5.Visible = true;
            }
            else {
                TR5.Visible = false;
            }
            if (k+5 >= 0 && k+5 < size) {
                BL6.Text = complaints[k+5].Title;
                TBI6.Text = complaints[k+5].Text;
                TR6.Visible = true;
            }
            else {
                TR6.Visible = false;
            }
        }
        protected void Page_Load ( object sender, EventArgs e ) {
            
        }

        protected void Page_Init( object sender, EventArgs e ) {
            setFileds(0);
        }

        protected void BN_Click ( object sender, EventArgs e ) {
            int k = Int32.Parse(LN.Text);
            LN.Text = (k + 1).ToString();
            setFileds(k*6);
        }


        protected void BP_Click ( object sender, EventArgs e ) {
            int k = Int32.Parse(LN.Text);
            LN.Text = (k - 1).ToString();
            setFileds((k - 2)*6);
        }

        protected void ButtonFind_Click ( object sender, EventArgs e ) {
            if (SearchString.Text != null && SearchString.Text != "")
                Response.Redirect("Main.aspx?title=" + SearchString.Text);
            else Response.Redirect("Main.aspx");
        }
    }
}
