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
    public partial class NbrAccidentes : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection("Data Source=.;Initial Catalog=CCN4V2_STE_TRANS_CASA;Integrated Security=True");
        SqlDataAdapter da;
        DataTable dt;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["cond"] != null)
            {
                //dt = new DataTable();
                //DataRow dr = (DataRow)Session["cond"];
                //string req = "SELECT C.nomCond , C.preCond, COUNT (numAcc) AS 'Nombre D accidents' " +
                //            "FROM Accidents A, Conducteurs C, Voitures V " +
                //            "WHERE A.numImmat = V.numImmat AND C.idCond = V.idConducteur " +
                //            "and C.idCond = " + dr[0].ToString() +
                //            " GROUP BY c.nomCond, C.preCond";
                //da = new SqlDataAdapter(req, cn);
                //da.Fill(dt);
                //CrystalReportViewer1.ReportSource = dt;
            }
            else Response.Redirect("Login.aspx");
        }
    }
}