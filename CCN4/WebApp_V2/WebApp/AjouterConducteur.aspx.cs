using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApp
{
    public partial class AjouterConducteur : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection("Data Source=.;Initial Catalog=CCN4V2_STE_TRANS_CASA;Integrated Security=True");
        SqlDataAdapter da;
        DataTable dt;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["cond"] != null)
            {
                da = new SqlDataAdapter("select * from Conducteurs", cn);
                dt = new DataTable();
                da.Fill(dt);
            }
            else Response.Redirect("Login.aspx");
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            try
            {
                DataRow dr = dt.NewRow();
                dr[0] = txtidCond.Text;
                dr[1] = txtNomCond.Text;
                dr[2] = txtPrnCond.Text;
                dr[3] = DateNaissance.SelectedDate.ToShortDateString();
                dr[4] = txtMotpassCond.Text;
                dt.Rows.Add(dr);
                SqlCommandBuilder cb = new SqlCommandBuilder(da);
                da.Update(dt);
                lblmsg.Text = "Conducteur Ajoutee avec succes ";
            }
            catch(Exception ex)
            {
                lblmsg.Text = "Error : " + ex.Message;
            }
        }
    }
}