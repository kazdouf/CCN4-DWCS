using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebAppCCN4V2.Students
{
    public partial class DocsBtweenDates : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection("Data Source=.;Initial Catalog=CCN4_DWCS_V1_ETABLISEMENT;Integrated Security=True");
        SqlDataAdapter da;
        DataTable dt;
        string login;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] != null)
            {
                login = (string)Session["login"];
            }
            else Response.Redirect("login.aspx");
        }

        protected void btnAff_Click(object sender, EventArgs e)
        {
            string req = "SELECT * FROM Documents WHERE login = '" + login +
                "' and dateEnvoi between '" + dateDebut.SelectedDate.ToShortDateString() + "' " +
                "and '" + dateFin.SelectedDate.ToShortDateString() + "' " +
                "order by ";
            if (DDLOrder.SelectedValue == "Auteur")
                req += "descriptionDoc asc";
            else req += "dateEnvoi asc";

            da = new SqlDataAdapter(req, cn);
            dt = new DataTable();
            da.Fill(dt);
            GridVDocs.DataSource = dt;
            GridVDocs.DataBind();
        }

        protected void GridVDocs_SelectedIndexChanged(object sender, EventArgs e)
        {
            string req = "SELECT * FROM Documents WHERE login = '" + login +
                "' and codeDoc =" + GridVDocs.SelectedRow.Cells[1].Text;

            da = new SqlDataAdapter(req, cn);
            DataTable dt1 = new DataTable();
            da.Fill(dt1);
            //lblmsg.Text = dt.Rows.Count.ToString();
            GridVComment.DataSource = dt1;
            GridVComment.DataBind();
        }
    }
}