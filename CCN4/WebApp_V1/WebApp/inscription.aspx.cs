using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebAppCCN4V2
{
    public partial class inscription : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection("Data Source=.;Initial Catalog=CCN4_DWCS_V1_ETABLISEMENT;Integrated Security=True");
        SqlDataAdapter da;
        DataTable dt;
        protected void Page_Load(object sender, EventArgs e)
        {
            da = new SqlDataAdapter("SELECT * FROM Utilisateurs", cn);
            dt = new DataTable();
            da.Fill(dt);
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void btnInsc_Click(object sender, EventArgs e)
        {
            DataRow dr = dt.NewRow();
            dr[0] = txtLogin.Text;
            dr[1] = txtNom.Text;
            dr[2] = txtPren.Text;
            dr[3] = txtEmail.Text;
            dr[4] = "student";
            dr[5] = txtLogin.Text;
            dt.Rows.Add(dr);
            SqlCommandBuilder cb = new SqlCommandBuilder(da);
            da.Update(dt);
            lblmsg.Text = "inscription effectuer avec succes";
        }
    }
}