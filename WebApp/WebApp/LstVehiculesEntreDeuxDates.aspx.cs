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
    public partial class LstVehiculesEntreDeuxDates : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection("Data Source=.;Initial Catalog=CCN4V2_STE_TRANS_CASA;Integrated Security=True");
        SqlDataAdapter da;
        DataTable dt;
        DataRow dr;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["cond"] != null)
            {
                dr = (DataRow)Session["cond"];
            }
            else Response.Redirect("Login.aspx");
        }

        protected void btnAfficher_Click(object sender, EventArgs e)
        {
            string req = "SELECT V.* FROM HistoriqueConducteurs H, Voitures V " +
                "WHERE H.dateDebut > '" + dateDebut.SelectedDate.ToShortDateString() + "' " +
                "AND H.dateFin < '" + DateFin.SelectedDate.ToShortDateString() + "' " +
                "AND V.numImmat = H.numImmat AND V.idConducteur = " + dr[0].ToString();
            da = new SqlDataAdapter(req, cn);
            dt = new DataTable();
            da.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
    }
}