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
    public partial class MAJVoiture : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection("Data Source=.;Initial Catalog=CCN4V2_STE_TRANS_CASA;Integrated Security=True");
        SqlDataAdapter da;
        DataTable dt;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["cond"] != null)
            {
                da = new SqlDataAdapter("select * from Voitures", cn);
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
                dr[0] = (GridView1.FooterRow.FindControl("txtImmatr") as TextBox).Text;
                dr[1] = (GridView1.FooterRow.FindControl("txtMarque") as TextBox).Text;
                dr[2] = (GridView1.FooterRow.FindControl("txtModel") as TextBox).Text;
                dr[3] = (GridView1.FooterRow.FindControl("txtPuissance") as TextBox).Text;
                dr[4] = (GridView1.FooterRow.FindControl("dateAchat") as Calendar).SelectedDate.ToShortDateString();
                dr[5] = (GridView1.FooterRow.FindControl("DDLConduct") as DropDownList).SelectedValue.ToString();
                dt.Rows.Add(dr);
                SqlCommandBuilder cb = new SqlCommandBuilder(da);
                da.Update(dt);
                GridView1.DataBind();
                lblmsg.Text = "Voiture Ajoutee avec succes ";
            }
            catch (Exception ex)
            {
                lblmsg.Text = "Error : " + ex.Message;
            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}